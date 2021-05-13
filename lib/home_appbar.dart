import 'package:flutter/material.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:new_flutter_app/loginScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeAppBar extends StatefulWidget implements PreferredSizeWidget{
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);


}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: kNavyBlue,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text('Miriam bank'.toUpperCase(),
            style:GoogleFonts.oxanium(
              fontWeight: FontWeight.bold,
              fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
              color: kWhiteColor,
            ),
          ),
          IconButton(icon: Icon(Icons.logout), onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));

          },color: kWhiteColor,),
        ],
      ),
    );
  }
}
