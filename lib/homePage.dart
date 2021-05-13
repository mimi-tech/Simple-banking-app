import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_app/bottom_bar.dart';
import 'package:new_flutter_app/btn.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_app/deposit_screen.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:new_flutter_app/home_appbar.dart';
import 'package:new_flutter_app/loginScreen.dart';
import 'package:new_flutter_app/strings.dart';
import 'package:new_flutter_app/withdraw_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget spacer() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height);
    return SafeArea(child: Scaffold(
      bottomNavigationBar: HomeBottomBar(),
      appBar:HomeAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kHorizontal),
          child: Column(
            children: [
              spacer(),
              spacer(),
              Text('Welcome',
                textAlign: TextAlign.center,
                style:GoogleFonts.oxanium(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true),
                  color: kBlackColor,
                ),
              ),
              Text('Andrew Johnson',
                textAlign: TextAlign.center,
                style:GoogleFonts.oxanium(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
                  color: kNavyBlue,
                ),
              ),
              spacer(),
              Text(kLorem,
                textAlign: TextAlign.center,
                style:GoogleFonts.oxanium(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
                  color: Colors.grey,
                ),
              ),
              spacer(),
              spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NewBtn(nextFunction: (){
                    _deposit();
                  }, bgColor: kNavyBlue, title: 'Deposit'),
                  NewBtn(nextFunction: (){_withdraw();}, bgColor: Colors.deepOrange, title: 'Withdraw'),
                ],),
            ],
          ),
        ),
      ),
    ));
  }

  void _deposit() {
//open a bottom sheet that will show the user where to input values to deposit
    showModalBottomSheet(
        isDismissible: false,
        isScrollControlled: true,
        context: context,
        builder: (context) => DepositScreen()
    );
  }

  void _withdraw() {
    //open a bottom sheet that will show the user where to input values to withdraw
    showModalBottomSheet(
        isDismissible: false,
        isScrollControlled: true,
        context: context,
        builder: (context) => WithdrawScreen()
    );

  }

  }

