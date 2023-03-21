import 'package:flutter/widgets.dart';
import 'package:path_to_regexp/path_to_regexp.dart';

import 'parsed_route.dart';

/// [TemplateRouteParser] 单独安全卫士
typedef RouteGuard<T> = Future<T> Function(T from);

class TemplateRouteParser extends RouteInformationParser<ParsedRoute> {
  final List<String> _pathTemplates;

  final RouteGuard<ParsedRoute>? guard;
  final ParsedRoute initialRoute;
  TemplateRouteParser({
    ///  白名单，如： (['/', '/users/:id'])
    required List<String> allowedPaths,

    /// The initial route
    String initialRoute = "/",

    /// 安全卫士 重定向
    this.guard,
  })  : initialRoute = ParsedRoute(initialRoute, initialRoute, {}, {}),
        _pathTemplates = [...allowedPaths],
        assert(allowedPaths.contains(initialRoute));

  /// 解析出前路由
  @override
  Future<ParsedRoute> parseRouteInformation(
      RouteInformation routeInformation) async {
    // 不会为空
    final path = routeInformation.location!;
    final queryParams = Uri.parse(path).queryParameters;
    var parsedRoute = initialRoute;
    for (var pathTemplate in _pathTemplates) {
      final parameters = <String>[];
      var pathRegExp = pathToRegExp(pathTemplate, parameters: parameters);
      if (pathRegExp.hasMatch(path)) {
        final match = pathRegExp.matchAsPrefix(path);
        if (match == null) continue;
        final params = extract(parameters, match);
        parsedRoute = ParsedRoute(path, pathTemplate, params, queryParams);
      }
    }
    var guard = this.guard;
    if (guard != null) {
      return guard(parsedRoute);
    }
    return parsedRoute;
  }
}
