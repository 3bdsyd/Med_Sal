import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/data/datasource/static/admin/users_list.dart';
import 'package:med_sal/view/widgets/admin/user_managment/custom_users_item_builder.dart';

class CustomBuildUsers extends StatelessWidget {
  const CustomBuildUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CustomUsersItemBuilder(
        model: usersList[index],
      ),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: Get.height * 0.01,
      ),
      itemCount: usersList.length,
    );
  }
}
