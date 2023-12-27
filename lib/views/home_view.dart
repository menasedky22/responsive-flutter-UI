import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/custom_drawer.dart';
import 'package:flutter_application_1/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldGlobalHey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldGlobalHey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffdbdbdb),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width - 32 < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: GestureDetector(
              onTap: () {
                scaffoldGlobalHey.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          )
        : null;
  }
}

// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrains) {
//       if (constrains.maxWidth < 900) {
//         return AppBar(
//           backgroundColor: Colors.black,
//           leading: GestureDetector(
//             onTap: () {
//               //   scaffoldGlobalHey.currentState!.openDrawer();
//             },
//             child: const Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           ),
//         );
//       } else {
//         return const SizedBox();
//       }
//     });
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(56);
// }
