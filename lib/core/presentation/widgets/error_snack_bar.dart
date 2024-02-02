import 'package:flutter/material.dart';


class CustomSnackBar extends StatelessWidget {
  final String message;

  const CustomSnackBar({required this.message});

  SnackBar buildSnackBar(BuildContext context) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 150,
      left: 20,
        right: 20
      ),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFFF3B0B0), width: 2),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("assets/images/error.png", height: 40),
              SizedBox(width: 12),
              Flexible(
                child: Text(
                  message,
                  style: TextStyle(color: Color(0xFF444444), fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }

  void show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(context));
  }

  @override
  Widget build(BuildContext context) {
    // You can leave this empty or use it for other purposes if needed
    return Container();
  }
}






