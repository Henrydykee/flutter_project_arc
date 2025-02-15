import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../platform/color.dart';

class newprojectPinCode extends StatelessWidget {
  final onCompleted;

  // final Function()? onChanged;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int? length;
  final bool ignoreTouch;


  newprojectPinCode({this.onCompleted, this.controller, this.onChanged, this.focusNode, this.length,this.ignoreTouch = true});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: ignoreTouch ,
      child: PinCodeTextField(
        obscureText: true,
        obscuringCharacter: "*",
        controller: controller,
        focusNode: focusNode,
        autoFocus: false,
        onCompleted: onCompleted,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        length: length ?? 4,
        hintCharacter: "_",
        hintStyle: TextStyle(
          color: newprojectColor.grey
        ),
        cursorColor: Colors.black,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldOuterPadding: EdgeInsets.all(0),
          borderWidth: 0.5,
          selectedColor: Colors.black,
          inactiveColor: Colors.black,
          activeColor: Colors.black,
          borderRadius: BorderRadius.circular(10),
          fieldHeight: 64,
          fieldWidth: 50,
        ),
        onChanged: (value) {},
        appContext: context,
      ),
    );
  }
}
