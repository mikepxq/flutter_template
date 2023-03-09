import 'package:collection/collection.dart';
import 'package:quiver/core.dart';

/// 被解析过的路由

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
// TODO deving
  @override
  int get hashCode => hash4();
}
