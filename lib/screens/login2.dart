import 'package:flutter/material.dart';

import '../widgets/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  bool isTextEmpty = false;
  String str = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 100),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 363),
            child: Stack( // Change from Column to Stack
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        '請輸入註冊信箱中的驗證碼',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'SGS',
                      style: TextStyle(
                        color: Color(0xFF77787B),
                        fontSize: 86.77,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Text(
                      '遊戲場檢驗系統',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 44),
                    ),
                    const SizedBox(height: 47),
                    inputField(
                      placeholder: '登入帳號',
                      controller: controller1,
                      onType: (value) {
                        if (controller1.text.isEmpty || controller2.text.isEmpty) {
                          isTextEmpty = false;
                        } else {
                          isTextEmpty = true;
                          str = '資料更新中...';
                        }
                        setState(() {});
                      },
                    ),
                    const SizedBox(height: 11),
                    inputField(
                      placeholder: '密碼 ( 英數混合8位數以上)',
                      controller: controller2,
                      onType: (value) {
                        if (controller1.text.isEmpty || controller2.text.isEmpty) {
                          isTextEmpty = false;
                        } else {
                          isTextEmpty = true;
                          str = '資料更新中...';
                        }
                        setState(() {});
                      },
                    ),
                    const SizedBox(height: 39),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        fixedSize: const Size(850, 82),
                        backgroundColor:
                        isTextEmpty ? const Color(0xFFEE6F2D) : const Color(0xFFCDCFD4),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        '登   入',
                        style: TextStyle(fontSize: 26),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      str,
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Text(
                        'Ver 1.0.0',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

