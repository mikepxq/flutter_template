import 'package:collection/collection.dart';
import 'package:quiver/core.dart';
import 'parser.dart'; // 仅给注释高亮来源  [TemplateRouteParser]

/// 被解析过的路由  [TemplateRouteParser]

class ParsedRoute {
  final String path;

  ///动态路由 (/book/:id)
  final String pathTemplate;

  /// 路由参数 （{id:123}）
  final Map<String, String> parameters;

  /// 查询参数
  final Map<String, String> queryParams;

  static const _mapEquality = MapEquality<String, String>();

  // 构建函数初始化
  ParsedRoute(this.path, this.pathTemplate, this.parameters, this.queryParams);
//
  @override
  bool operator ==(Object other) =>
      other is ParsedRoute &&
      other.pathTemplate == pathTemplate &&
      other.path == path &&
      _mapEquality.equals(parameters, other.parameters) &&
      _mapEquality.equals(queryParams, other.queryParams);

  @override
  int get hashCode => hash4(path, pathTemplate, _mapEquality.hash(parameters),
      _mapEquality..hash(queryParams));

  @override
  String toString() => '<ParsedRoute '
      'template: $pathTemplate'
      'path:$path'
      'parameters:$parameters'
      'query params : $queryParams>';
}
