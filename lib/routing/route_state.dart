import 'package:flutter/widgets.dart';
import 'parsed_route.dart';
import 'parser.dart';

class RouteState extends ChangeNotifier {
  final TemplateRouteParser _parser;
  ParsedRoute _route;
  RouteState(this._parser) : _route = _parser.initialRoute;
  ParsedRoute get route => _route;
  // 当前路由没改变 不响应
  set route(ParsedRoute route) {
    if (_route == route) return;
    _route = route;
    notifyListeners();
  }

  Future<void> go(String route) async {
    this.route =
        await _parser.parseRouteInformation(RouteInformation(location: route));
  }
}

/// 将路由 state 提供给后代 widgets 中
class RouteStateScope extends InheritedNotifier<RouteState> {
  const RouteStateScope({
    required super.notifier,
    required super.child,
    super.key,
  });
  static RouteState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<RouteStateScope>()!.notifier!;
}
