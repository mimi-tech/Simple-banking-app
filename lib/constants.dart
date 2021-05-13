import 'package:flutter/material.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Constants{

  ///Email decoration
  static final emailInput = InputDecoration(

      hintText: 'Email',
      hintStyle:GoogleFonts.oxanium(
        fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
        color: kHintColor,
      ),
      contentPadding: EdgeInsets.fromLTRB(
          20.0, 18.0, 20.0, 18.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              kBorder)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: kNavyBlue))



  );

  ///Password decoration
  static final passwordInput = InputDecoration(

      hintText: 'Email',
      hintStyle:GoogleFonts.oxanium(
        fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
        color: kHintColor,
      ),
      contentPadding: EdgeInsets.fromLTRB(
          20.0, 18.0, 20.0, 18.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              kBorder)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: kNavyBlue))



  );


  ///First name decoration
  static final firstNameInput = InputDecoration(

      hintText: 'First name',
      hintStyle:GoogleFonts.oxanium(
        fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
        color: kHintColor,
      ),
      contentPadding: EdgeInsets.fromLTRB(
          20.0, 18.0, 20.0, 18.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              kBorder)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: kNavyBlue))



  );




  ///Last name decoration
  static final lastNameInput = InputDecoration(

      hintText: 'Last name',
      hintStyle:GoogleFonts.oxanium(
        fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
        color: kHintColor,
      ),
      contentPadding: EdgeInsets.fromLTRB(
          20.0, 18.0, 20.0, 18.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              kBorder)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: kNavyBlue))



  );


  ///Phone number decoration
  static final phoneNoInput = InputDecoration(

      hintText: 'Mobile number',
      hintStyle:GoogleFonts.oxanium(
        fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
        color: kHintColor,
      ),
      contentPadding: EdgeInsets.fromLTRB(
          20.0, 18.0, 20.0, 18.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              kBorder)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: kNavyBlue))



  );
  ///amount decoration
  static final depositInput = InputDecoration(

      hintText: 'Deposit amount',
      hintStyle:GoogleFonts.oxanium(
        fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
        color: kHintColor,
      ),
      contentPadding: EdgeInsets.fromLTRB(
          20.0, 18.0, 20.0, 18.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              kBorder)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: kNavyBlue))



  );
  static String validateText(String value) {
    if(value.isEmpty) {
      return "Field can't be empty";
    }
    return null;
  }


}


class Fonts{


  static final textSize = TextStyle(
    fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
    color: kBlackColor,
  );

  static final countSize = TextStyle(
    fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
    color: kWhiteColor,
  );

  static final driverLicence = TextStyle(
    fontSize: ScreenUtil().setSp(12, allowFontScalingSelf: true),
    color: kBlackColor,
  );
}