import 'package:get/get.dart';
import 'package:med_sal/core/constants/app_image_assets.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/data/model/patient/doctors_model.dart';

List<DoctorsModel> doctorsList = [
  DoctorsModel(
      text: AppStrings.dentist, imageAssets: AppImageAssets.imageDentist),
  DoctorsModel(
      text: AppStrings.optics, imageAssets: AppImageAssets.imageoptics),
  DoctorsModel(text: AppStrings.xRay.tr, imageAssets: AppImageAssets.imagexray),
  DoctorsModel(
      text: AppStrings.facelift, imageAssets: AppImageAssets.imagefacelift),
  DoctorsModel(
      text: AppStrings.dietitian, imageAssets: AppImageAssets.imagedietitian),
  DoctorsModel(
      text: AppStrings.homeNurse, imageAssets: AppImageAssets.imagehomenurse),
];
