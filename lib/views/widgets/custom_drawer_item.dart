import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';

class CustomDrawerItems extends StatelessWidget {
  const CustomDrawerItems({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: const EdgeInsets.symmetric(horizontal: 32),
      leading: Icon(drawerItemModel.icon),
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(drawerItemModel.title),
        ),
      ),
    );
  }
}
