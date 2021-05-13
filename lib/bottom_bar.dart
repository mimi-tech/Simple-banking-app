

import 'package:flutter/material.dart';
import 'package:new_flutter_app/admin.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_app/dash_board.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:new_flutter_app/homePage.dart';
class HomeBottomBar extends StatefulWidget {
  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      color: kNavyBlue,
        shape: CircularNotchedRectangle(),
    child:Container(

    height: 60.h,
    child:  ListView(
      children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

              },color: kWhiteColor,),
              Text('Home',
                style:GoogleFonts.oxanium(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(kFontSize14, allowFontScalingSelf: true),
                  color: kWhiteColor,
                ),
              ),

            ],
          ),
          Column(
            children: [
              IconButton(icon: Icon(Icons.dashboard), onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashBoardScreen()));

              },color: kWhiteColor,),
              Text('Dash bord',
                style:GoogleFonts.oxanium(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(kFontSize14, allowFontScalingSelf: true),
                  color: kWhiteColor,
                ),
              ),

            ],
          ),
          Column(
            children: [
              IconButton(icon: Icon(Icons.admin_panel_settings), onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdminScreen()));

              },color: kWhiteColor,),
              Text('Admin',
                style:GoogleFonts.oxanium(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(kFontSize14, allowFontScalingSelf: true),
                  color: kWhiteColor,
                ),
              ),

            ],
          )
        ]),
      ],
    )
    ));}
}
