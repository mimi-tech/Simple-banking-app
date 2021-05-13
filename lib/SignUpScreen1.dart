import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_app/btn.dart';
import 'package:new_flutter_app/colors.dart';
import 'package:new_flutter_app/constants.dart';
import 'package:new_flutter_app/dimens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:new_flutter_app/strings.dart';
class SignUpScreen1 extends StatefulWidget {
  @override
  _SignUpScreen1State createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  TextEditingController _fName = TextEditingController();
  TextEditingController _lName = TextEditingController();
  TextEditingController _phoneNo = TextEditingController();

  Color btnColor = kTextFieldBorderColor;
  final picker = ImagePicker();
  String fName = '';
  String lName = '';
  String phoneNo = '';

  File imageURI;

  bool _publishModal = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  Widget spacer() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }
  Future getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        imageURI = File(pickedFile.path);
        _cropImage(imageURI.path, imageURI);

      } else {
        print('No image selected.');
      }
    });
  }





  Future getImageFromGallery() async {

    File file = await FilePicker.getFile(
      type: FileType.image,

    );

    // int fileSize = file.lengthSync();
    _cropImage(file.path, file);

  }

  _cropImage(filePath, File file) async {
    File croppedImage = await ImageCropper.cropImage(
        sourcePath: filePath,
        maxWidth: 1000,
        maxHeight: 1000,
        compressQuality: 20,
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Crop Photo',
            toolbarColor: kWhiteColor,
            toolbarWidgetColor: kNavyBlue,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        )
    );

    if (croppedImage  != null) {

      setState(() {
        imageURI  = croppedImage;


      });
    }else{
      setState(() {
        imageURI  = file;


      });
    }
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kNavyBlue,
          title: Text('Sign up'.toUpperCase(),
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
            spacer(),

        Center(child:
        imageURI == null? Container(
        decoration: BoxDecoration(
          color: kNavyBlue,
          shape: BoxShape.circle
        ),
        child: IconButton(icon: Icon(Icons.person), onPressed: (){getImageFromGallery();},color: kWhiteColor,)

        )

            : GestureDetector(
        onTap: (){

        getImageFromGallery();
        },
        child: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: FileImage(imageURI),
        radius: 50,

        ),
        )

        )


        ,

        Text( imageURI == null? kProfilePix:'Edit photo',
        style:GoogleFonts.oxanium(
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
        color: imageURI == null?  kPix:kRedColor,
        ),
        ),

        spacer(),
        Text(kName,
        style:GoogleFonts.oxanium(
        fontWeight: FontWeight.normal,
        fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
        color: kBlackColor,
        ),
        ),
        spacer(),
/*showing the textField*/
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  //margin: EdgeInsets.symmetric(horizontal:kHorizontal),
                  child: Wrap(


                    children: <Widget>[
                      Container(
                        width:MediaQuery.of(context).size.width*0.4,
                        child: Platform.isIOS
                            ? CupertinoTextField(
                          controller: _fName,
                          autocorrect: true,
                          autofocus: true,

                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.sentences,
                          cursorColor: (kTextFieldBorderColor),
                          style: Fonts.textSize,
                          placeholderStyle:GoogleFonts.oxanium(
                            fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
                            color: kHintColor,
                          ),
                          placeholder: kFName,
                          onChanged: (String value) {
                            fName = value;
                          },
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorder),
                              border: Border.all(color: kNavyBlue)),
                        )
                            : TextField(
                          controller: _fName,
                          autocorrect: true,
                          autofocus: true,
                          cursorColor: (kTextFieldBorderColor),
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.sentences,
                          style: Fonts.textSize,
                          decoration: Constants.firstNameInput,
                          onChanged: (String value) {
                            fName = value;

                          },
                        ),

                      ),
                      SizedBox(width: 10.0.w,),
                      /*displaying last name*/

                      Container(
                        width:MediaQuery.of(context).size.width*0.4,
                        child:   Platform.isIOS
                            ? CupertinoTextField(
                          controller: _lName,
                          autocorrect: true,
                          autofocus: true,

                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.sentences,
                          cursorColor: (kTextFieldBorderColor),
                          style: Fonts.textSize,
                          placeholderStyle:GoogleFonts.oxanium(
                            fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
                            color: kHintColor,
                          ),
                          placeholder: kFName,
                          onChanged: (String value) {
                            lName = value;

                          },
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorder),
                              border: Border.all(color: kNavyBlue)),
                        )
                            : TextField(
                          controller: _lName,
                          autocorrect: true,
                          autofocus: true,
                          cursorColor: (kTextFieldBorderColor),
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.sentences,
                          style: Fonts.textSize,
                          decoration: Constants.lastNameInput,
                          onChanged: (String value) {
                            lName = value;

                          },
                        ),
                      )


                    ],
                  ),
                ),
                 spacer(),
                //display mobile no
                Container(
                  margin: EdgeInsets.symmetric(horizontal:kHorizontal),

                  child: Platform.isIOS
                      ? CupertinoTextField(
                    controller: _phoneNo,
                    autocorrect: true,
                    autofocus: true,

                    keyboardType: TextInputType.number,

                    cursorColor: (kTextFieldBorderColor),
                    style: Fonts.textSize,
                    placeholderStyle:GoogleFonts.oxanium(
                      fontSize: ScreenUtil().setSp(kFontSize, allowFontScalingSelf: true),
                      color: kHintColor,
                    ),
                    placeholder: kFName,
                    onChanged: (String value) {
                      phoneNo = value;
                      if(phoneNo == '' ){
                        setState(() {
                          btnColor = kTextFieldBorderColor;
                        });
                      }else{
                        setState(() {
                          btnColor = kNavyBlue;
                        });
                      }
                    },
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorder),
                        border: Border.all(color: kNavyBlue)),
                  )
                      : TextField(
                    controller: _phoneNo,
                    autocorrect: true,
                    autofocus: true,
                    cursorColor: (kTextFieldBorderColor),
                    keyboardType: TextInputType.number,
                    style: Fonts.textSize,
                    decoration: Constants.lastNameInput,
                    onChanged: (String value) {
                      phoneNo = value;
                      if(phoneNo == '' ){
                        setState(() {
                          btnColor = kTextFieldBorderColor;
                        });
                      }else{
                        setState(() {
                          btnColor = kNavyBlue;
                        });
                      }
                    },
                  ),
                )
              ],
            ),
          ),



        spacer(),


        NewBtn(nextFunction: (){moveToNext();}, bgColor: btnColor,title: 'Sign up')


        ])),
      ),
    );
  }

  void moveToNext() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();


    }
  }
  }

