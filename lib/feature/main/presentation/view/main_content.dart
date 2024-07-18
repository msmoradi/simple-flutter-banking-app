import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Center(child: Text("صفحه اصلی"))),
    );
  }
}
