import 'package:app/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
        child: ListView(
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.home);
              },
              child: Text(Routes.home),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              },
              child: Text(Routes.login),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/jjdjd');
              },
              child: Text('404'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/room/333');
              },
              child: Text('详情页'),
            ),
          ],
        ),
      ),
    );
  }
}
