import 'package:flutter/material.dart';
import 'package:flutter_template/routing/route_state.dart';

class BookStore extends StatefulWidget {
  const BookStore({super.key});
  @override
  State<BookStore> createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  @override
  Widget build(BuildContext context) => RouteStateScope();
}
