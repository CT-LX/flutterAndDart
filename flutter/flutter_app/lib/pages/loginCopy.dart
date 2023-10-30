import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登录'),
      ),
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
            image: AssetImage("images/login_bg.png"),
            fit: BoxFit.cover,
          ))),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '浣熊管家',
                  style: TextStyle(
                      color: Color.fromRGBO(50, 195, 232, 1), fontSize: 36),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.perm_identity),
                    hintText: '请输入用户名',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
