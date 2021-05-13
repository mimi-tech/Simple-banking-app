import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_flutter_app/btn.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:new_flutter_app/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

class DepositScreen extends StatefulWidget {
  @override
  _DepositScreenState createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  Widget space() {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.02,
    );
  }

  TextEditingController _amount = TextEditingController();

  int amount;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: AnimatedPadding(
            padding: MediaQuery.of(context).viewInsets,
            duration: const Duration(milliseconds: 600),
            curve: Curves.decelerate,
            child: Column(
                children: <Widget>[

                  space(),
                  space(),


                  Text('How much do you want to deposit?',
                    textAlign: TextAlign.center,
                    style:GoogleFonts.oxanium(
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
                      color: Colors.grey,
                    ),
                  ),
                  Divider(),
                  space(),
                  Text('Enter amount'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style:GoogleFonts.oxanium(
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
                      color: Colors.grey,
                    ),
                  ),

                  Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:50.0),
                          child: TextFormField(
                            controller: _amount,
                            autocorrect: true,
                            cursorColor: (kTextFieldBorderColor),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],


                            style: Fonts.textSize,
                            decoration: Constants.depositInput,
                            onSaved: (String value) {
                              amount = int.parse(value);

                            },

                            onChanged: (String value) {
                              amount = int.parse(value);

                            },
                            validator: Constants.validateText,
                          )
                      )
                  ),
                  space(),
                  NewBtn(nextFunction: (){_takeAmount();}, bgColor: kNavyBlue, title: 'Deposit'.toUpperCase()),

                  space(),

                ]
            )
        )
    );
  }

  void _takeAmount() {}
}
