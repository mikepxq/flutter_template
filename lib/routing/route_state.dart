import 'package:flutter/material.dart';
import 'package:flutter_template/routing/parsed_route.dart';
import 'package:flutter_template/routing/parser.dart';

class RouteState extends ChangeNotifier {
  final TemplateRouteParser _parser;
  ParsedRoute _route;
  RouteState(this._parser):_route=_parser
}

class RouteStateScope extends InheritedNotifier<RouteState> {
  const RouteStateScope(
      {required super.notifier, required super.child, super.key});
}
