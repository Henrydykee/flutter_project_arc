import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_auth/local_auth.dart';

class newprojectKeyPad extends StatelessWidget {
  final onKeyPress;
  final String? path;
  final Color? keyColor;
  final Function()? biometricOnTap;
  final bool? visible;
  final BiometricType? type;
  final Widget? leftAction;
  final Widget? rightAction;

  newprojectKeyPad(
      {@required this.onKeyPress,
      this.visible = false,
        this.path,
      this.biometricOnTap,
        this.keyColor,
      this.leftAction,
      this.rightAction,
      this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color(0xFFF8F8F8),
        // borderRadius: BorderRadius.circular(8),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            for (final keyRow in keyValues)
              TableRow(
                children: List.generate(
                  keyRow.length,
                  (index) {
                    final keyCell = keyRow[index];
                    if (keyCell == 'left' ) {
                      return Visibility(
                          visible: visible ?? false,
                          child: GestureDetector(
                              onTap: biometricOnTap,
                                child: SvgPicture.asset(_getBiometricType(type ?? BiometricType.iris),height: 50,)));
                    }
                    // if (keyCell == 'left' && path == "fund") {
                    //   return  newprojectKeyCell(
                    //     keyColor: keyColor,
                    //     value: "00",
                    //     onTap: (val) {
                    //       onKeyPress(val);
                    //     },
                    //   );
                    // }
                    if (keyCell == 'right') {
                      return rightAction ??
                          newprojectKeyCell.withChild(
                            value: 'backspace',
                            onTap: (val) {
                              onKeyPress(val);
                            },
                            child: Icon(
                              Icons.backspace,
                              color: keyColor ?? Colors.black,
                            ),
                          );
                    }
                    return newprojectKeyCell(
                      keyColor: keyColor,
                      value: keyCell,
                      onTap: (val) {
                        onKeyPress(val);
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

String _getBiometricType(BiometricType type) {
  switch (type) {
    case BiometricType.face:
      return "assets/svg/face-id.svg";
    case BiometricType.fingerprint:
      return "assets/svg/finger_print_icon.svg";
    case BiometricType.iris:
      return "";
    default:
      return "";
  }
}

class newprojectKeyCell extends StatelessWidget {
  final onTap;
  final Widget? child;
  final String? value;
  final bool? _hasChild;
  final Color? keyColor;

  newprojectKeyCell({
    this.onTap,
    this.keyColor,
    @required this.value,
  })  : child = Offstage(),
        _hasChild = false;

  newprojectKeyCell.withChild({
    this.onTap,
    this.child,
    this.value,
    this.keyColor
  }) : _hasChild = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      key: Key(value!),
      onTap: () {
        if (onTap != null) {
          onTap(value);
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 25,
          // horizontal: 18,
        ),
        child: Center(
          child: _hasChild!
              ? child
              : Text(
                  value ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Space Grotesk",
                    fontWeight: FontWeight.w700,
                    color: keyColor ?? Colors.black
                  ),
                ),
        ),
      ),
    );
  }
}

List<List<String>> get keyValues {
  return [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['left', '0', 'right'],
  ];
}
