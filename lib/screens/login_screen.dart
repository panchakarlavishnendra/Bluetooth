import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
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
          height: MediaQuery.of(context).size.height*0.33,
          width: MediaQuery.of(context).size.width*0.6,
          // color: Colors.green,
          child: IconButton(
              icon: Image.asset("assets/images/Logo.png",
                width: MediaQuery.of(context).size.width*0.6,
                height:  MediaQuery.of(context).size.height*0.9,
              ),
          ),
        ),
          Center(child: Text("Welcome back!" , style: TextStyle(fontSize: 40))),
          Center(child: Text("Sign in to continue",style: TextStyle(fontSize: 34,color: Colors.grey),)),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
            child: _customTextField(context,emailController, 'Email', false),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
            child: _customTextField(context,passwordController, 'Password', true),
          ),
          SizedBox(height: 40,),
          Container(
           width: MediaQuery.of(context).size.width*0.6,
            height: MediaQuery.of(context).size.height*0.1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
              child:RaisedButton(
                color: Colors.green[900],
                onPressed: (){
                  Get.toNamed('/storehouse');
                },
                child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:175.0,vertical: 10),
            child: InkWell(
              child: Text('Forget Mpin ?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              onTap: (){},
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
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
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
