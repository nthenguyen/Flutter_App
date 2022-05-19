import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cake_app/controllers/auth_controller.dart';
import 'package:flutter_cake_app/utils/colors.dart';
import 'package:flutter_cake_app/utils/dimensions.dart';
import 'package:get/get.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("object" + Get.find<AuthController>().isLoading.toString());
    return Container(
      height: Dimensions.height20 * 5,
      width: Dimensions.height20 * 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height20 * 5 / 2),
          color: AppColors.mainColor),
      alignment: Alignment.center,
      child: CircularProgressIndicator(color: Colors.white),
    );
  }
}