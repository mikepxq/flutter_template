import 'package:flutter/material.dart';

class RouteState extends ChangeNotifier {
  final TemplateRouteParser a;
}

class RouteStateScope extends InheritedNotifier<RouteState> {
  const RouteStateScope(
      {required super.notifier, required super.child, super.key});
}
