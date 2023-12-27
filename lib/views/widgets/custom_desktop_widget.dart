import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_item.dart';
import 'package:flutter_application_1/views/widgets/custom_item2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: CustomItem(),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: CustomItems2()),
      ],
    );
  }
}
