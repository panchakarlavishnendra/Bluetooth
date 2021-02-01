import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio: 4,
              child: SvgPicture.asset(
                "assets/icons/contract.svg",
                height: 15,
                width: 15,
                fit: BoxFit.contain, // use this
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: _customTextField(emailController, 'Email', false),
            ),
          ),
          AspectRatio(
            aspectRatio: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: _customTextField(passwordController, 'Password', true),
            ),
          ),
        ],
      ),
    );
  }

  Widget _customTextField(controller, hintText, obscureText) {
    return TextFormField(
      controller: controller,
      style: TextStyle(fontSize: 16),
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(),
        border: OutlineInputBorder(borderSide: new BorderSide()),
      ),
    );
  }
}
