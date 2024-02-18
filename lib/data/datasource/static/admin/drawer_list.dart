import 'package:med_sal/core/constants/app_icon_assets.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/data/model/admin/drawer_model.dart';

List<DrawerModel> drawerList = const [
  DrawerModel(
      icon: AppIconAssets.iconUserManagement, title: AppStrings.userManagement),
  DrawerModel(
      icon: AppIconAssets.iconRegistrationRequests,
      title: AppStrings.registrationRequests),
  DrawerModel(
      icon: AppIconAssets.iconManageSupervisors,
      title: AppStrings.manageSupervisors),
  DrawerModel(
      icon: AppIconAssets.iconSalesReports, title: AppStrings.salesReports),
  DrawerModel(
      icon: AppIconAssets.iconServiceManagement,
      title: AppStrings.serviceManagement),
  DrawerModel(
      icon: AppIconAssets.iconManageReservations,
      title: AppStrings.manageReservations),
  DrawerModel(icon: AppIconAssets.iconLogout, title: AppStrings.logOut),
];
