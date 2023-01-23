import 'package:flutter/material.dart';
import 'package:mi_bloc/layout/main.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Main',
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => {Navigator.pushNamed(context, '/counter')},
              child: const Text('Counter'),
            )
          ],
        ),
      ),
    );
  }
}
