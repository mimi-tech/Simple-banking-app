import 'package:flutter/material.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:new_flutter_app/dposit_history.dart';
import 'package:new_flutter_app/history.dart';
import 'package:new_flutter_app/withdraw_history.dart';
class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kNavyBlue,
          bottom: TabBar(
            tabs: [
              Tab( text: 'Deposit'),
              Tab( text: 'Withdrawal'),
              Tab( text: 'History'),


            ],
          ),
          title: Text('Miriam bank',
          style:GoogleFonts.oxanium(
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
            color: kWhiteColor,
          ),
        ),


        ),
        body: TabBarView(
          children: [
            DepositHistory(),
            WithdrawHistory(),
            History()
          ],
        ),
      ),
    );
  }
}
