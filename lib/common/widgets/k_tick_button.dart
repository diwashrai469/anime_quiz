import 'package:anime_quiz/common/widgets/k_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget kTickButton(
    {void Function()? onTap,
    required bool isLoding,
    required BuildContext context}) {
  return InkWell(
    borderRadius: BorderRadius.circular(80).r,
    onTap: onTap,
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      child: isLoding == true
          ? SizedBox(
              height: 20.h,
              width: 20.w,
              child: kLoadingIndicator(
                context: context,
                background: Colors.white,
                strockWidth: 3.w,
              ),
            )
          : Icon(
              Icons.check,
              color: Colors.white,
              size: 30.sh,
            ),
    ),
  );
}
