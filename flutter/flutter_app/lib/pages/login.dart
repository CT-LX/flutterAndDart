import 'dart:async';
import 'dart:core';

import 'package:app/routes.dart';
import 'package:flutter/material.dart';
import '../utils/dio_http.dart';
import '../utils/reg.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginFormKey = GlobalKey<FormState>();

  late String _telPhone = '';
  late String _code = '';
  int _times = 60;
  late final Timer _timer;
  bool _countdowndisplay = false;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('登录'),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                image: AssetImage("images/login_bg.png"),
                fit: BoxFit.cover,
              ))),
              ListView(
                padding: EdgeInsets.fromLTRB(
                    32, MediaQuery.of(context).size.height * 0.2, 32, 0),
                children: [
                  const Text(
                    '浣熊管家',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(50, 195, 232, 1),
                      fontSize: 36,
                    ),
                  ),
                  const SizedBox(height: 34),
                  TextFormField(
                    initialValue: '',
                    onChanged: (String value) {
                      setState(() {
                        _telPhone = value;
                      });
                    },
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    // maxLength: 6,
                    keyboardType: TextInputType.number,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        // borderSide: BorderSide(
                        //     color: Color.fromRGBO(204, 204, 204, 1)
                        //     )
                      ),
                      prefixIcon: Icon(Icons.perm_identity),
                      hintText: '请输入手机号',
                      suffix: SizedBox(
                          child: _countdowndisplay
                              ? Text('$_times' + 'S')
                              : GestureDetector(
                                  onTap: () {
                                    sendNum();
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text(
                                      '发送验证码',
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                )),
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !realTelReg(value)) {
                        return '请输入11位手机号';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    // initialValue: '123456',
                    onChanged: (String value) {
                      setState(() {
                        _code = value;
                      });
                    },
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    // maxLength: 6,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        // borderSide: BorderSide(
                        //     color: Color.fromRGBO(204, 204, 204, 1)
                        //     )
                      ),
                      prefixIcon: Icon(Icons.lock),
                      hintText: '请输入验证码',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || !sixNumReg(value)) {
                        return '请输入6位验证码';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  Align(
                    child: SizedBox(
                      width: 360,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_loginFormKey.currentState!.validate()) {
                              Navigator.pushReplacementNamed(
                                  context, Routes.home);
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    Color.fromRGBO(50, 195, 232, 1)),
                            shape: MaterialStateProperty.all(
                                const StadiumBorder(
                                    side: BorderSide(style: BorderStyle.none))),
                          ),
                          child: const Text('登录')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 发送短信
  Future<void> sendNum() async {
    // 手机号验证
    if (realTelReg(this._telPhone)) {
      var params = {'mobile': this._telPhone};
      try {
        var response =
            await DioHttp.of(context).post('/hxworker/sendCode', params);
        print(response.data.toString());
      } catch (e) {
        print(e.toString());
      }
      openTimeFn();
    }
  }

/**
 * 显示倒计时
 */
  void openTimeFn() {
    const duration = Duration(seconds: 1);
    _call(timer) {
      setState(() {
        _times--;
      });
      if (_times < 1) {
        setState(() {
          _countdowndisplay = false;
        });
        _timer.cancel();
      }
    }

    _timer = Timer.periodic(duration, _call);
    setState(() {
      _countdowndisplay = true;
    });
  }
}
