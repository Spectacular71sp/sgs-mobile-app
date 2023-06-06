import 'package:flutter/material.dart';

void showCustomModal(BuildContext context) {
  TextEditingController controller = TextEditingController();
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.only(left: 58, right: 58),
              height: 279,
              width: 477,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(24)), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 42,),
                  Text(
                    '請輸入註冊信箱中的驗證碼',
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(height: 23,),
                  TextField(
                    style: TextStyle(fontSize: 28, color: Color(0xFFBBBBC1)),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFBBBBC1)),
                          borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '驗證碼',
                      contentPadding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                    ),
                    controller: controller,
                  ),
                  SizedBox(height: 31.93,),
                  Divider(
                    color: Color(0xFFBBBBC1),
                    height: 1,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 17.07, bottom: 18),
                          child: GestureDetector(child: Text('取消', style: TextStyle(color: Color(0xFF007AFF), fontSize: 24),),
                              onTap: () {
                                Navigator.pop(context);
                              }
                          ),
                        ),
                        VerticalDivider(
                          color: Color(0xFFBBBBC1),
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17.07, bottom: 18),
                          child: GestureDetector(child: Text('確認', style: TextStyle(color: Color(0xFF007AFF), fontSize: 24),),
                              onTap: () {
                                Navigator.pop(context);
                              }
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      );
    },
  );
}

