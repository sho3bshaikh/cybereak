// ignore_for_file: no_leading_underscores_for_local_identifiers, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:cybereak/app/modules/home/controllers/home_controller.dart';
import 'package:cybereak/app/style/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Hi, Champ. 👋 ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Lets Start Learning",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ),
            SliverAppBar(
              primary: false,

              toolbarHeight: kToolbarHeight,

              // leading: Padding(
              //   padding: const EdgeInsets.all(4.0),
              //   child: FlutterLogo(
              //     style: FlutterLogoStyle.horizontal,
              //     size: 50,
              //   ),
              // ),
              title: TextField(
                textAlign: TextAlign.start,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search Courses / Topics',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorData.primaryButtonColor.withAlpha(45)),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorData.secondaryButtonColor),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusColor: ColorData.secondaryButtonColor,
                  suffixIcon: Container(
                    height: 5,
                    width: 5,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.search_rounded,
                      color: ColorData.primaryButtonColor.withAlpha(200),
                    ),
                  ),
                  prefixIcon: Container(
                    height: 5,
                    width: 5,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.tune_rounded,
                      color: ColorData.primaryButtonColor.withAlpha(200),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorData.secondaryButtonColor),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              elevation: 0,
              backgroundColor: ColorData.backgroundColor,
              actions: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorData.secondaryButtonColor,
                          borderRadius: BorderRadius.circular(15)),
                      width: 20,
                      child: Icon(
                        Icons.person_outline_rounded,
                        color: ColorData.primaryButtonColor,
                      ),
                    ),
                  ),
                )
              ],
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Continue Learning",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorData.primarytextColor)),
              ),
            ),

            SliverToBoxAdapter(
              child: Card(
                margin: EdgeInsets.all(8),
                color: ColorData.secondaryButtonColor,
                clipBehavior: Clip.hardEdge,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://img.youtube.com/vi/ZTPcRWK0ytE/maxresdefault.jpg",
                          ),
                        ),
                        title: Text(
                          "Microsoft Power Platform Fundamentals (PL-900) — Full Course Pass the Exam!",
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: ColorData.primarytextColor),
                        ),
                        subtitle: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            LinearProgressIndicator(
                              color: ColorData.primaryButtonColor,
                              value: 0.6,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.slow_motion_video_rounded,
                                  color: ColorData.secondarytextColor,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "4/16 Lessons",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: ColorData.secondarytextColor),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Chip(
                            backgroundColor: ColorData.primaryButtonColor,
                            label: Row(
                              children: [
                                Icon(
                                  Icons.menu_rounded,
                                  size: 18,
                                  color: ColorData.secondaryButtonColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Text(
                                    "All",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: ColorData.secondaryButtonColor,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Chip(
                            backgroundColor: ColorData.secondaryButtonColor,
                            label: Row(
                              children: [
                                Icon(
                                  Icons.android_rounded,
                                  size: 18,
                                  color: ColorData.secondarytextColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Text(
                                    "App Development",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: ColorData.secondarytextColor,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Chip(
                            backgroundColor: ColorData.secondaryButtonColor,
                            label: Row(
                              children: [
                                Icon(
                                  Icons.web_rounded,
                                  size: 18,
                                  color: ColorData.secondarytextColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Text(
                                    "Web Development",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: ColorData.secondarytextColor,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Chip(
                            backgroundColor: ColorData.secondaryButtonColor,
                            label: Row(
                              children: [
                                Icon(
                                  Icons.settings_applications_rounded,
                                  size: 18,
                                  color: ColorData.secondarytextColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Text(
                                    "Machine Learning",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: ColorData.secondarytextColor,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  )),
            ),

            SliverToBoxAdapter(
              child: CourseCard(
                img: "https://img.youtube.com/vi/ZTPcRWK0ytE/maxresdefault.jpg",
              ),
            ),
            SliverToBoxAdapter(
              child: CourseCard(
                img: "https://img.youtube.com/vi/nu_pCVPKzTk/maxresdefault.jpg",
              ),
            ),

            SliverToBoxAdapter(
              child: CourseCard(
                img: "https://img.youtube.com/vi/rfscVS0vtbw/maxresdefault.jpg",
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                height: 200, // Placeholder content
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200, // Placeholder content
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200, // Placeholder content
              ),
            ),
            // Add more sliver widgets for additional content
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: ColorData.secondaryButtonColor,
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 7,
                  child: Card(
                    margin: EdgeInsets.all(6),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(
                      img,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: ColorData.secondaryButtonColor,
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: ColorData.primarytextColor,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
            // SizedBox(
            //   height: 15,
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.slow_motion_video_rounded,
                        color: ColorData.secondarytextColor,
                        size: 15,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "16 Lessons",
                        style: TextStyle(
                            fontSize: 11, color: ColorData.secondarytextColor),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        color: ColorData.secondarytextColor,
                        Icons.access_time_rounded,
                        size: 15,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "8h 20m",
                        style: TextStyle(
                          fontSize: 10,
                          color: ColorData.secondarytextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Microsoft Power Platform Fundamentals (PL-900) — Full Course Pass the Exam!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorData.primarytextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
