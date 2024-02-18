import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/auth_controllers/bottomsheet_controller.dart';

import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/core/functions/validate_input.dart';
import 'package:med_sal/core/shared/componnents/bottomSheet/custom_bottomsheet_body_text.dart';
import 'package:med_sal/core/shared/componnents/bottomSheet/custom_bottomsheet_title_text.dart';

import 'package:med_sal/view/widgets/auth/bottomSheet/custom_bottomsheet_text_form_field.dart';

class CustomForgetPassword extends GetView<BottomSheetControllerImp> {
  const CustomForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: controller.forgetKey,
          child: Column(
            children: [
              const CustomBottomSheetTitleText(text: AppStrings.forgetPassword),
              SizedBox(height: Get.height * 0.013),
              const CustomBottomSheetBodyText(
                  text: AppStrings.descreptionPatForgetPass),
              Padding(
                padding: EdgeInsets.only(
                  right: 28.w,
                  left: 28.w,
                  top: 30.h,
                  bottom: 30.h,
                ),
                child: CustomBottomSheetTextFormField(
                  controller: controller.emailController,
                  hintText: AppStrings.email,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  valid: (String? val) =>
                      validateInput(val!, 13, 28, 'password'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
