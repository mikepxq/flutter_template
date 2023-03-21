import 'package:flutter/material.dart';

class BookstoreAuth extends ChangeNotifier {
  bool _signedIn = false;

  bool get signedIn => _signedIn;

  Future<void> signOut() async {}
}

class BookstoreAuthScope extends InheritedNotifier<BookstoreAuth> {
  const BookstoreAuthScope(
      {required super.notifier, required super.child, super.key});
  static BookstoreAuth of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<BookstoreAuthScope>()!
      .notifier!;
}
