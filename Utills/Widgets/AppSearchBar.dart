
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



import '../Constants/AppConfig.dart';
import '../Fonts/AppDimensions.dart';
import '../Themes/AppColors.dart';
import 'AppTextField.dart';

Widget appSearchBar({
  required BuildContext context,
  required String hintText,
  bool isSufix=true,
  bool isPrefix=true,
  bool isRead= false,
  bool isShowCursor = true,
  String fontFamily="Light Poppins",
  double borderRadius=50,
  Color backColor=  Colors.transparent,
  Color cursorColor= const Color(0xFF00CCBB),
  String iconImage ='assets/images/search.png',
  VoidCallback? onTap
  
}) {
  final controller = TextEditingController();

  return AppTextField(

    isPrefix:isPrefix,
    isShowCursor: isShowCursor,
    fontFamily: fontFamily,
    onTap:onTap??(){},
    isReadOnly: isRead,
    //cursorColor: backColor,
    cursorColor: cursorColor,
    controller: controller,
    prefixIcon: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          iconImage,color: AppColors.LIGHT_GREY_COLOR,
          height: Get.height*0.01,
        )),
    onSuffixTap: () {
      controller.clear();
    },
    suffixIcon: Padding(
      padding: EdgeInsets.symmetric(vertical: AppConfig(context).height / 65),
      child: CircleAvatar(
        backgroundColor: isSufix? AppColors.RED_COLOR.withOpacity(0.75):AppColors.TRANSPARENT_COLOR,
        radius: 8,
        child: Icon(
          Icons.close,
          color: isSufix? AppColors.WHITE_COLOR:AppColors.TRANSPARENT_COLOR,
          size: AppDimensions.FONT_SIZE_10,
        ),
      ),
    ),
    hint: hintText,
    hintColor: AppColors.LIGHT_GREY_COLOR,
    hintSize: AppDimensions.FONT_SIZE_16,


    borderColor: backColor==AppColors.WHITE_COLOR?AppColors.WHITE_COLOR:backColor.withOpacity(.8),
    isFill: true,
    fillColor: backColor==AppColors.WHITE_COLOR?AppColors.WHITE_COLOR:backColor.withOpacity(0),
    borderRadius: BorderRadius.circular(10),
    isborderline: true,

  );
}


