
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_app/SignUpScreen1.dart';
import 'package:new_flutter_app/btn.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:new_flutter_app/constants.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:new_flutter_app/regText.dart';
import 'package:new_flutter_app/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginScreen extends StatefulWidget {


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color btnColor = kTextFieldBorderColor;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _publishModal = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  Widget spacer() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }

  String email;
  String password;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       backgroundColor: kNavyBlue,
        title: Text('Login'.toUpperCase(),
          style:GoogleFonts.oxanium(
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
            color: kWhiteColor,
          ),
        ),

      ),
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[

            RegText(title: kLoginHint),
            spacer(),

            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontal),
                  child: Platform.isIOS
                      ? CupertinoTextField(
                    controller: _email,
                    autocorrect: true,
                    autofocus: true,

                    keyboardType: TextInputType.emailAddress,
                    cursorColor: (kTextFieldBorderColor),
                    style: Fonts.textSize,
                    placeholderStyle: GoogleFonts.oxanium(
                      fontSize: ScreenUtil().setSp(
                          kFontSize, allowFontScalingSelf: true),
                      color: kHintColor,
                    ),
                    placeholder: 'Email',
                    onChanged: (String value) {
                      email = value;

                    },
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorder),
                        border: Border.all(color: kNavyBlue)),
                  )
                      : TextFormField(
                    controller: _email,
                    autocorrect: true,
                    autofocus: true,
                    cursorColor: (kTextFieldBorderColor),
                    keyboardType: TextInputType.emailAddress,
                    style: Fonts.textSize,
                    decoration: Constants.emailInput,
                    validator: Constants.validateText,
                    onSaved: (String value) {
                        email = value;
                    },
                  )),
            ),


            spacer(),
            Container(
                margin: EdgeInsets.symmetric(horizontal: kHorizontal),
                child: Platform.isIOS
                    ? CupertinoTextField(
                  controller: _password,
                  autocorrect: true,
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: (kTextFieldBorderColor),
                  style: Fonts.textSize,
                  placeholderStyle: GoogleFonts.oxanium(
                    fontSize: ScreenUtil().setSp(
                        kFontSize, allowFontScalingSelf: true),
                    color: kHintColor,
                  ),
                  placeholder: 'Password',
                  onChanged: (String value) {
                  password = value;
                    if ((password == '') || (_password.text.length < 6)) {
                      setState(() {
                        btnColor = kTextFieldBorderColor;
                      });
                    } else {
                      setState(() {
                        btnColor = kNavyBlue;
                      });
                    }
                  },
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorder),
                      border: Border.all(color: kNavyBlue)),
                )
                    : TextFormField(
                  controller: _password,
                  autocorrect: true,
                  autofocus: true,
                  cursorColor: (kTextFieldBorderColor),
                  obscureText: true,
                  style: Fonts.textSize,
                  decoration: Constants.passwordInput,
                  validator: Constants.validateText,
                  onSaved: (String value) {
                    password = value;
                    if ((password == '') || (_password.text.length < 6)) {
                      setState(() {
                        btnColor = kTextFieldBorderColor;
                      });
                    } else {
                      setState(() {
                        btnColor = kNavyBlue;
                      });
                    }
                  },
                )),

            /*displaying Next button*/
            spacer(),
            GestureDetector(

                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen1()));
                },
                child: RichText(

                  text: TextSpan(text: '$kLoginText2 ',
                      style: GoogleFonts.oxanium(
                        fontSize: ScreenUtil().setSp(
                            kFontSize, allowFontScalingSelf: true),
                        color: kBlackColor,
                      ),

                      children: <TextSpan>[
                        TextSpan(
                          text: kSignUp,
                          style: GoogleFonts.pacifico(
                            fontSize: ScreenUtil().setSp(
                                kFontSize, allowFontScalingSelf: true),
                            color: kNavyBlue,
                          ),
                        ),
                      ]
                  ),


                )),
            spacer(),
            NewBtn(title: 'Login',bgColor:btnColor ,nextFunction: (){_loginUser();},)

          ],
        ),
      ),
    );
  }

  void _loginUser() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();


    }
  }
}
/*
final form = _formKey.currentState;
if (form.validate()) {*/
