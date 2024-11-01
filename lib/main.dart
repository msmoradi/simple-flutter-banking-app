import 'package:banx/app.dart';
import 'package:banx/di.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  runApp(const App());
}
