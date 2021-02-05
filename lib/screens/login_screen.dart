import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // FocusNode _focusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.3,
            color: Colors.white,
            child: AspectRatio(
              aspectRatio: 4,
              child: Image.asset('assets/images/Logo.png')
              // SvgPicture.asset(
              //   "assets/icons/Logo.svg",
              //   height: 15,
              //   width: 15,
              //   fit: BoxFit.contain, // use this
              // ),
            ),
          ),
          AspectRatio(
            aspectRatio: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: _customTextField(context,emailController, 'Email', false),
            ),
          ),
          AspectRatio(
            aspectRatio: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: _customTextField(context,passwordController, 'Password', true),
            ),
          ),
          Container(
           width: MediaQuery.of(context).size.width*0.6,
            height: MediaQuery.of(context).size.height*0.1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child:RaisedButton(
                color: Colors.green[900],
                onPressed: (){},
                child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),
          AspectRatio(
              aspectRatio: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:160.0,vertical: 10),
              child: InkWell(
                child: Text('Forgot Password ?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _customTextField(context,controller, hintText, obscureText) {
    return GestureDetector(
      child: TextFormField(
        controller: controller,
        style: TextStyle(fontSize: 16),
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(),
          border: OutlineInputBorder(borderSide: new BorderSide()),
        ),
      ),
      onTap: (){
        // FocusScope.of(context).requestFocus(new FocusNode());
        },
    );
  }

}
