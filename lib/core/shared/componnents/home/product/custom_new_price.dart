import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_sal/core/constants/app_colors.dart';
import 'package:med_sal/data/model/patient/product_services_model.dart';

class CustomNewPriceText extends StatelessWidget {
  const CustomNewPriceText({
    Key? key,
    required this.productServicesModel,
  }) : super(key: key);

  final ProductServicesModel productServicesModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${productServicesModel.newPrice}',
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(fontSize: 8.33.sp, color: AppColors.redColor),
    );
  }
}
