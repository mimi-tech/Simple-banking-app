import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:new_flutter_app/dimens.dart';
class TxnConstruction extends StatelessWidget {
  TxnConstruction({@required this.date,@required this.amount});
  final dynamic date;
  final dynamic amount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(date,
          style:GoogleFonts.oxanium(
            fontWeight: FontWeight.w500,
            fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
            color: kBlackColor,
          ),
        ),

        Text(amount.toString(),
          style:GoogleFonts.oxanium(
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
