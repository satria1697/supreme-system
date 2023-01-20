import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget? body;
  final String? title;
  const MainLayout({Key? key, this.body, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
      ),
      body: body,
    );
  }
}
