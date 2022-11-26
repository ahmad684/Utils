// ignore_for_file: file_names, unnecessary_this, must_be_immutable

import 'package:flutter/material.dart';

import '../Fonts/AppFonts.dart';
import '../Themes/AppColors.dart';


// class AppField extends StatelessWidget {
//    AppField({
//     Key? key,
//     this.hint = "",
//     this.hintColor,
//     this.hintSize,
//     this.textInputType,
//     this.textInputAction,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.isShowCursor = true,
//     this.isReadOnly = false,
//     this.maxLines=1,
//     this.fontFamily = "Grold",
//     this.isVisible = true,
//     this.enabled = true,
//     this.isborderline = false,
//     this.borderColor = Colors.orange,
//     this.borderRadius = BorderRadius.zero,
//     /* this.intialValue = "",*/
//     this.onTap,
//     this.obsecure = false,
//     this.controller,
//     this.fillColor = Colors.white,
//     this.isFill = false,
//     this.fontWeight,
//     this.sufixOnTap,
//     this.prefixOnTap,
//     this.validator,
//     this.cursorColor, this.contentPadding=EdgeInsets.zero,
//   }) : super(key: key);

//   String? Function(String?)? validator;
//   final bool obsecure;
//   final String hint;
//   final String fontFamily;
//   final bool isFill;
//   final bool isVisible;
//   final EdgeInsets contentPadding;
//   final bool enabled;
//   final Color? hintColor;
//   final Color? cursorColor;
//   final double? hintSize;
//   final FontWeight? fontWeight;
//   final TextEditingController? controller;
//   final TextInputType? textInputType;
//   final Widget? prefixIcon;
//   final bool isShowCursor;
//   final bool isReadOnly;
//   final int maxLines;
//   final Color borderColor;
//   final bool isborderline;
//   final BorderRadius borderRadius;
//   final Widget? suffixIcon;
//   final TextInputAction? textInputAction;
//   /*final String intialValue;*/
//   final VoidCallback? onTap;
//   final VoidCallback? sufixOnTap;
//   final VoidCallback? prefixOnTap;
//   final Color fillColor;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       // textAlignVertical: TextAlignVertical.center,
//       controller: controller,
//       obscureText: this.obsecure,
//       onTap: onTap ?? () {},
//       cursorColor: cursorColor,
//       /* initialValue: intialValue,*/
//       maxLines: maxLines,
//       validator: validator,
//       style: TextStyle(
//           fontSize: hintSize,
//           fontWeight: fontWeight,
//           color: hintColor,
//           fontFamily: fontFamily),
//       showCursor: isShowCursor,
//       readOnly: isReadOnly,
//       keyboardType: textInputType,
//       textInputAction: textInputAction,
//       decoration: InputDecoration(
//        contentPadding: contentPadding,
//         fillColor: fillColor,
//         filled: isFill,
//         isDense: true,
//         hintText: hint,
//         suffixIcon:
//             GestureDetector(onTap: sufixOnTap ?? () {}, child: this.suffixIcon),
//         prefixIcon: GestureDetector(
//             onTap: prefixOnTap ?? () {}, child: this.prefixIcon),
//         hintStyle: TextStyle(
//             color: hintColor, fontSize: hintSize, fontFamily: Weights.light),
//         border:  null,
//         enabledBorder: isborderline
//             ? OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: borderColor,
//                 ),
//                 borderRadius: borderRadius,
//               )
//             : null,
//         disabledBorder: isborderline
//             ? OutlineInputBorder(
//                 borderSide: BorderSide(width: 1, color: borderColor),
//                 borderRadius: borderRadius,
//               )
//             : null,
//         errorBorder: isborderline
//             ? OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: borderColor,
//                 ),
//                 borderRadius: borderRadius,
//               )
//             : null,
//         focusedBorder: isborderline
//             ? OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: borderColor,
//                 ),
//                 borderRadius: borderRadius,
//               )
//             : null,
//         focusedErrorBorder: isborderline
//             ? OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: borderColor,
//                 ),
//                 borderRadius: borderRadius,
//               )
//             : null,
//       ),
//     );
//   }
// }

class AppTextField extends StatefulWidget {
  AppTextField({
    Key? key,
    this.hint = "",
    this.hintColor,
    this.hintSize,
    this.textInputType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.isShowCursor = true,
    this.isReadOnly = false,
    this.maxLines,
    this.isVisible = true,
    this.enabled = true,
    this.onChange,
    this.onEditingComplete,
    this.cursorColor,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.isborderline = false,
    this.borderColor = Colors.orange,
    this.borderRadius = BorderRadius.zero,
    /* this.intialValue = "",*/
    this.onTap,
    this.obsecure = false,
    this.controller,
    this.fillColor = Colors.white,
    this.isFill = false,
    this.fontFamily = "Poppins",
    this.maxLength,
    this.onSuffixTap, this.isPrefix=false, this.padding=EdgeInsets.zero,
  }) : super(key: key);
  final bool obsecure;
  final String hint;
  final bool isFill;
  final bool isVisible;
  final bool enabled;
  final String fontFamily;
  String? Function(String?)? validator;
  Function(String?)? onChange;
  final Color? hintColor;
  final double? hintSize;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final Widget? prefixIcon;
  final bool isShowCursor;
  final bool isReadOnly;
  final bool isPrefix;
  final EdgeInsets padding; 
  final int? maxLines;
  final int? maxLength;
  final Color borderColor;
  final Color? cursorColor;
  void Function()? onEditingComplete;
  void Function(String)? onFieldSubmitted;
  void Function(String?)? onSaved;
  final bool isborderline;
  final BorderRadius borderRadius;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  /*final String intialValue;*/
  final VoidCallback? onTap;
  final VoidCallback? onSuffixTap;
  final Color fillColor;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isClear = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChange ??
          (value) {
            if (value.isNotEmpty) {
              setState(() {
                isClear = true;
              });
            } else {
              setState(() {
                isClear = false;
              });
            }
          },
      onEditingComplete: widget.onEditingComplete,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      controller: widget.controller,
      maxLength: widget.maxLength,
      obscureText: this.widget.obsecure,
      onTap: widget.onTap,
      cursorColor: widget.cursorColor ?? AppColors.PRIMARY_COLOR,
      /* initialValue: intialValue,*/
      maxLines: widget.maxLines,
      // maxLengthEnforced: false,
      showCursor: widget.isShowCursor,
      readOnly: widget.isReadOnly,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        contentPadding: widget.padding,
        fillColor: widget.fillColor,
        filled: widget.isFill,
        isDense: true,
        hintText: widget.hint,
        suffixIcon: widget.suffixIcon == null || !isClear
            ?null
            :  GestureDetector(
                onTap: widget.onSuffixTap ?? () {},
                child: this.widget.suffixIcon),
        prefixIcon:widget.isPrefix? this.widget.prefixIcon:null,
        hintStyle: TextStyle(
            color: widget.hintColor,
            fontSize: widget.hintSize,
            fontFamily: widget.fontFamily,
            fontWeight: FontWeights.regular),
        border: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
        enabledBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
        disabledBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: widget.borderColor),
                borderRadius: widget.borderRadius,
              )
            : null,
        errorBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
        focusedBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
        focusedErrorBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
      ),
    );
  }
}
