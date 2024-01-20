import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:uptodo/core/widgets/app_text_form_field.dart';
import 'package:uptodo/features/home_screen/presentation/screen/home_screen.dart';
import 'package:uptodo/features/home_screen/presentation/widgets/add_to_do_mission.dart';

import '../presentation/widgets/index_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  bool isBottomSheetOpen = false;

  List<Widget> buildScreens() {
    return [
      const IndexScreen(),
      const Center(
        child: Text("Calender"),
      ),
      const SizedBox.shrink(),
      const Center(
        child: Text("Focused"),
      ),
      const Center(
        child: Text("Profile"),
      ),
    ];
  }


  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: "Index",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: "Calendar",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.add,
          color: Colors.white,
        ),
        title: " ",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        onPressed: (context) {
          if (isBottomSheetOpen) {
            // Navigator.pop(context!);
            // isBottomSheetOpen = false;
          } else {
            _showBottomSheet(context!);
            // isBottomSheetOpen = true;
          }
          isBottomSheetOpen = !isBottomSheetOpen;
        },
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: "Focuse",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: "Profile",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            AppTextFormField(
              hintText: 'Add Title',
              validator: (value) {},
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                // Handle option 2
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
