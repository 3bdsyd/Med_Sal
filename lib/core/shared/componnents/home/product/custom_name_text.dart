import 'package:flutter/material.dart';
import 'package:med_sal/data/model/patient/product_services_model.dart';

class CustomNameText extends StatelessWidget {
  const CustomNameText({
    Key? key,
    required this.productServicesModel,
  }) : super(key: key);

  final ProductServicesModel productServicesModel;

  @override
  Widget build(BuildContext context) {
    return Text(productServicesModel.name,
        style: Theme.of(context).textTheme.headline3);
  }
}
