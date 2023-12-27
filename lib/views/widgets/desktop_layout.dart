import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_drawer.dart';
import 'package:flutter_application_1/views/widgets/tablet_layout.dart';

import 'custom_desktop_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TabletLayout(),
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: CustomDesktopWidget(),
        )),
      ],
    );
  }
}
