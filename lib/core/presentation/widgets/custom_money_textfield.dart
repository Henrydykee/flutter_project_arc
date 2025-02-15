import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomMoneyTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefix;
  final FocusNode? currentFocusNode;
  final FocusNode? nextFocusNode;
  final String? labelText;
  final String? hintText;
  final int? maxlength;
  final String? suffixText;
  final bool? autofocus;
  final String? Function(String?)? validator;
  final String Function(String)? onValueChange;

  CustomMoneyTextField(
      {this.controller,
        this.currentFocusNode,
        this.autofocus,
        this.nextFocusNode,
        this.prefix,
        this.maxlength,
        this.suffixText,
        this.hintText,
        this.labelText,
        this.inputFormatters,
        this.keyboardType,
        this.onValueChange, this.validator});

  @override
  _CustomMoneyTextFieldState createState() => _CustomMoneyTextFieldState();
}

class _CustomMoneyTextFieldState extends State<CustomMoneyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: TextFormField(
        // ignore: missing_return
        validator: widget.validator,
        focusNode: widget.currentFocusNode,
        textCapitalization: TextCapitalization.sentences,
        autofocus: widget.autofocus ?? true ,
        onEditingComplete: () {
          FocusScope.of(context)
              .requestFocus(widget.nextFocusNode ?? FocusNode());
        },
        controller: widget.controller,
        keyboardType: widget.keyboardType ?? TextInputType.number,
        cursorColor: Colors.black,
        onChanged: widget.onValueChange,
        textAlign: TextAlign.right,
        maxLength: 8,
        inputFormatters: widget.inputFormatters ?? [FilteringTextInputFormatter.digitsOnly,LengthLimitingTextInputFormatter(8)],
        style: TextStyle(fontSize: 56,fontFamily: "SpaceGrotesk",fontWeight: FontWeight.w700,color: Colors.white,),
        decoration: InputDecoration(
            prefix: widget.prefix,
            // prefixText: Strings.dollar_sign,
            counterText: "",
            suffixStyle: TextStyle(fontSize: 56,fontFamily: "SpaceGrotesk",fontWeight: FontWeight.w700),
            suffixText: widget.suffixText,
            prefixStyle: TextStyle(color: Colors.black),
            labelText: widget.labelText,
            hintText: widget.hintText ?? '0.00',
            hintStyle: TextStyle(fontSize: 64,fontFamily: "SpaceGrotesk",fontWeight: FontWeight.w700,color: Colors.white),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 64,
              letterSpacing: 0.12,
              color: Colors.grey,
            ),
            border: InputBorder.none),
      ),
    );
  }
}