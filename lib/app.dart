import 'package:flutter/material.dart';
import 'auth.dart';
import 'routing/index.dart';

class BookStore extends StatefulWidget {
  const BookStore({super.key});
  @override
  State<BookStore> createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  final _auth = BookstoreAuth();
  late final RouteState _routeState;
  // 路由代理
  late final SimpleRouterDelegate _routerDelegate;
  late final TemplateRouteParser _routeParser;

  @override
  Widget build(BuildContext context) => RouteStateScope(
        notifier: _routeState,
        child: BookstoreAuthScope(
          notifier: _auth,
          child: MaterialApp.router(
            routerDelegate: _routerDelegate,
            routeInformationParser: _routeParser,
          ),
        ),
      );

  // TODO deving 尝试开发环境；
}
