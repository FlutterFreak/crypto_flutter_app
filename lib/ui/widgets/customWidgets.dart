import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomWidgets {
  static Widget textField(
      {required TextEditingController textController,
      required Function(String)? onChanged,
      required Widget prefixIcon,
      int lines = 1}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            maxLines: 1,
            controller: textController,
            keyboardType: TextInputType.number,
            onChanged: onChanged,
            decoration: InputDecoration(
                counterText: '',
                hintText: '0.00',
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                prefixIcon: prefixIcon),
          ),
        ],
      ),
    );
  }

  static Future<bool?> showToast(String msg, BuildContext context,
      {int duration = 1,
      int gravity = 0,
      double backgroundRadius = 20,
      Border? border}) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.deepOrange,
      textColor: Colors.white,
      fontSize: 14.0,
    );
  }
}
