import 'package:flutter/material.dart';
import 'package:sgs/widgets/input.dart';

import '../widgets/modal.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

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
        padding: EdgeInsets.only(top: 100),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,)
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 363),
            child: Column(
              children: [
                Text('SGS', style: TextStyle(color: Color(0xFF77787B), fontSize: 86.77, fontWeight: FontWeight.w900,),),
                Text('遊戲場檢驗系統', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 44),),
                SizedBox(height: 47),
                inputField(
                  placeholder: '登入帳號',
                  controller: controller1,
                  onType: (value) {
                    if (controller1.text.isEmpty ||
                        controller2.text.isEmpty) {
                      isTextEmpty = false;
                    } else {
                      isTextEmpty = true;
                      str = '資料更新中...';
                    }
                    setState(() {});
                  },
                ),
                SizedBox(height: 11),
                inputField(
                    placeholder: '密碼 ( 英數混合8位數以上)',
                  controller: controller2,
                  onType: (value) {
                    if (controller1.text.isEmpty ||
                        controller2.text.isEmpty) {
                      isTextEmpty = false;
                    } else {
                      isTextEmpty = true;
                      str = '資料更新中...';
                    }
                    setState(() {});
                  },
                ),
                SizedBox(height: 39),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(850, 82),
                    foregroundColor: Colors.white,
                      backgroundColor: isTextEmpty ? Color(0xFFEE6F2D) : Color(0xFFCDCFD4),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  child: const Text("登   入", style: TextStyle(fontSize: 26),),
                  onPressed: () {
                    showCustomModal(context);
                  },
                ),
                SizedBox(height: 30),
                Text(str, style: TextStyle(fontSize: 24, color: Colors.white),),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text('Ver 1.0.0', style: TextStyle(fontSize: 24, color: Colors.white),),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
