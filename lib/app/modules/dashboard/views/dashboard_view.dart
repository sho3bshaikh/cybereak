import 'package:cybereak/app/modules/explore/views/explore_view.dart';
import 'package:cybereak/app/modules/home/views/home_view.dart';
import 'package:cybereak/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: [HomeView(), ExploreView(), ProfileView()],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black45,
          unselectedItemColor: Colors.black45,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          iconSize: 30,
          backgroundColor: const Color.fromARGB(238, 238, 238, 238),
          elevation: 0,
          onTap: (value) {
            print(value);
            controller.pageController.jumpToPage(value);
          },
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              activeIcon: Icon(
                Icons.home,
              ),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Stack(
                  children: const [
                    Icon(Icons.person),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(
                        Icons.brightness_1,
                        size: 15,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
