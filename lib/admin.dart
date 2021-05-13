import 'package:flutter/material.dart';
import 'package:new_flutter_app/bottom_bar.dart';
import 'package:new_flutter_app/btn.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:new_flutter_app/home_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        bottomNavigationBar: HomeBottomBar(),
        appBar:HomeAppBar(),
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
ListTile(

      leading: CachedNetworkImage(
      imageUrl: '',
        imageBuilder: (context, imageProvider) => Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.person),
      ),

    title:  Text('Welcome',
          style:GoogleFonts.oxanium(
            fontWeight: FontWeight.w500,
            fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
            color: kBlackColor,
          ),
        ),
      subtitle: Text('Andrew',
        style:GoogleFonts.oxanium(
          fontWeight: FontWeight.w500,
          fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
          color: kBlackColor,
        ),
      ),

  trailing: NewBtn(nextFunction: (){_removeUser();}, bgColor: kRedColor, title: 'Delete'),

)]


      ),
    )));
  }

  void _removeUser() {}
}
