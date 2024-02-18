import 'package:med_sal/core/constants/app_image_assets.dart';
import 'package:med_sal/core/localizations/app_strings.dart';
import 'package:med_sal/data/model/order_model.dart';

List<OrderModel> orderCompletedList = [
  OrderModel(
    id: '1',
    name: 'Home Massage',
    type: 'Service',
    price: 400,
    newPrice: 387,
    image: AppImageAssets.pHome2,
    state: AppStrings.delivered,
  ),
  OrderModel(
    id: '2',
    name: 'Home Massage',
    type: 'Service',
    price: 400,
    newPrice: 387,
    image: AppImageAssets.pHome2,
    state: AppStrings.notDelivered,
  ),
  OrderModel(
    id: '3',
    name: 'Cream',
    type: 'product',
    price: 66,
    image: AppImageAssets.pHome3,
    state: AppStrings.delivered,
  ),
  OrderModel(
    id: '4',
    name: 'Shampo',
    type: 'product',
    price: 66,
    image: AppImageAssets.pHome4,
    state: AppStrings.notDelivered,
  ),
];
