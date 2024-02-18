import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/data/datasource/static/admin/drawer_list.dart';
import 'package:med_sal/view/widgets/admin/admin_home_list/custom_drawer_item_builder.dart';

class CustomListViewDrawer extends StatelessWidget {
  final Function(int index)? onTap;
  const CustomListViewDrawer({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerList.length,
      itemBuilder: (context, index) => CustomDrawerItemBuilder(
        model: drawerList[index],
        onTap: () {
          if (onTap != null) {
            onTap!(index);
          }
        },
      ),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: (index == drawerList.length - 2)
              ? Get.height * 0.2
              : Get.height * 0,
        );
      },
    );
  }
}
