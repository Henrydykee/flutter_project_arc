import 'package:flutter/material.dart';

import '../../platform/color.dart';

class LoaderWrapper extends StatefulWidget {
  final bool? isLoading;
  final Widget? view;

  LoaderWrapper({Key? key, this.isLoading, this.view}) : super(key: key);

  @override
  _LoaderWrapperState createState() => _LoaderWrapperState();
}

class _LoaderWrapperState extends State<LoaderWrapper> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      widget.view!,
      if (widget.isLoading ?? false)
        Scaffold(
          backgroundColor: Colors.transparent,
          body: IgnorePointer(
            ignoring: true,
            child: Container(
              color: Color.fromRGBO(0, 17, 64, 0.76),
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  child: CircularProgressIndicator(
                    backgroundColor: AllaweeBusinessColor.white,
                    strokeWidth: 3,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(AllaweeBusinessColor.green),
                  ),
                ),
              ),
            ),
          ),
        ),
    ]);
  }
}
