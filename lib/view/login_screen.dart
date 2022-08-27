import 'package:flutter/material.dart';
import 'package:flutter_task/core/constans.dart';
import 'package:flutter_task/view/home_screen.dart';
import 'package:flutter_task/view/widgets/custom_login_button.dart';
import 'package:flutter_task/view/widgets/input_tile.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login to continue',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
            kHeight,
            InputTile(title: 'Email', controller: _emailController),
            kHeight,
            InputTile(
              title: 'Password',
              controller: _passwordController,
              isPassword: true,
            ),
            kHeight,
            CustomeLoginButton(
              title: 'Login',
              onTap: () {
                final email = _emailController.text.trim();
                final password = _passwordController.text.trim();
                if (email.isNotEmpty && password.isNotEmpty) {
                  if (email == password) {
                    Get.offAll(const HomeScreen())!.whenComplete(() {
                      _emailController.dispose();
                      _passwordController.dispose();
                    });
                  } else {
                    Get.snackbar('Please check the credentials',
                        'Please enter currect email and password');
                  }
                } else {
                  Get.snackbar('Please fill the required feilds',
                      'Please enter email and password');
                }
                // CloudApi.getDrinkDetails();
              },
            )
          ],
        ),
      )),
    );
  }
}
