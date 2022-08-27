import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomeLoginButton extends StatelessWidget {
  CustomeLoginButton({Key? key, required this.title, this.onTap})
      : super(key: key);
  final String title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 14.sp),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ))),
      ),
    );
  }
}
