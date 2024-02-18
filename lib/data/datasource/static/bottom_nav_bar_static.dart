import 'package:med_sal/core/constants/app_icon_assets.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/data/model/bottom_nav_bar_model.dart';

List<BottomNavBarModel> bottomBarList = [
  BottomNavBarModel(
    title: AppStrings.home,
    iconAssest: AppIconAssets.iconHome,
  ),
  BottomNavBarModel(
    title: AppStrings.search,
    iconAssest: AppIconAssets.iconSearch,
  ),
  BottomNavBarModel(
    title: AppStrings.order,
    iconAssest: AppIconAssets.iconOrder,
  ),
  BottomNavBarModel(
    title: AppStrings.profile,
    iconAssest: AppIconAssets.iconProfile,
  ),
];
