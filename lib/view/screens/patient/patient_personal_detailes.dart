import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/layout/layout_controller.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/core/shared/componnents/customPaint/custom_paint_app_top.dart';
import 'package:med_sal/core/shared/componnents/custom_app_button.dart';
import 'package:med_sal/core/shared/componnents/custom_nav_arrow.dart';
import 'package:med_sal/view/widgets/auth/custom_rich_text_title_field.dart';
import 'package:med_sal/view/widgets/auth/custom_text_form_field.dart';
import 'package:med_sal/view/widgets/auth/profile/custom_patient_picture_profile.dart';
import 'package:med_sal/core/shared/componnents/custom_welcom_rich_text.dart';

class PatientPersonalDetailes extends StatelessWidget {
  const PatientPersonalDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutControllerImp layoutControoler = Get.find<LayoutControllerImp>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                const CustomPaintAppTop(),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.085,
                      ),
                      SizedBox(
                        width: Get.width * 0.23,
                        child: const CustomPatientPictureProfile(),
                      ),
                      SizedBox(
                        height: Get.height * 0.005,
                      ),
                      const CostomWelcomRichText(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 10.w,
                    top: 30.h,
                  ),
                  child: const CustomNavArrow(),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.only(
              start: 24.w,
              end: 24.w,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const CustomRichTextTitleField(text: AppStrings.userName),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 6.h,
                      bottom: 10.h,
                    ),
                    child: CustomTextFormField(
                      textController:
                          TextEditingController(text: 'Nazeera Alkhouri'),
                      hintText: AppStrings.userName,
                      textInputType: TextInputType.name,
                      //validat: (String? val) {},
                    ),
                  ),
                  const CustomRichTextTitleField(text: AppStrings.email),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 6.h,
                      bottom: 10.h,
                    ),
                    child: CustomTextFormField(
                      textController:
                          TextEditingController(text: 'Nazeera@gmail.com'),
                      hintText: AppStrings.email,
                      textInputType: TextInputType.emailAddress,
                      // validat: (String? val) {},
                    ),
                  ),
                  const CustomRichTextTitleField(text: AppStrings.password),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 6.h,
                      bottom: 10.h,
                    ),
                    child: CustomTextFormField(
                      textController:
                          TextEditingController(text: 'Nazeera@gmail'),
                      hintText: AppStrings.password,
                      textInputType: TextInputType.visiblePassword,
                      //  validat: (String? val) {},
                      isObscureText: true,
                    ),
                  ),
                  const CustomRichTextTitleField(text: AppStrings.editPassword),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 6.h,
                      bottom: 10.h,
                    ),
                    child: CustomTextFormField(
                      textController: TextEditingController(),
                      hintText: AppStrings.password,
                      textInputType: TextInputType.visiblePassword,
                      // validat: (String? val) {},
                      isObscureText: true,
                    ),
                  ),
                  Center(
                    child: CustomAppButton(
                      text: AppStrings.save,
                      onPressed: () {
                        layoutControoler.changePage(3, 3);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
