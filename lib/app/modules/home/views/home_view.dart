// ignore_for_file: no_leading_underscores_for_local_identifiers, sized_box_for_whitespace

import 'package:cybereak/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                style: const TextStyle(color: Colors.grey),
                textAlign: TextAlign.start,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Search Courses / Topics',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              "Continue Watching",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 0,
              color: Colors.grey[200],
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          color: Colors.grey,
                          child: const FlutterLogo(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Flutter Devlopment",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Flutter Devlopment Online Course \n By Cybreak",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 78, 75, 62),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    color: Colors.blueGrey,
                    value: 0.7,
                    minHeight: 5,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Top Courses",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: Card(
                      color: Color.fromARGB(255, 223, 213, 213),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: Card(
                      color: Color.fromARGB(255, 223, 213, 213),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: Card(
                      color: Color.fromARGB(255, 223, 213, 213),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: Card(
                      color: Color.fromARGB(255, 223, 213, 213),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: Card(
                      color: Color.fromARGB(255, 223, 213, 213),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: Card(
                      color: Color.fromARGB(255, 223, 213, 213),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            height: 100,
            width: 370,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 90,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 90,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 90,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 90,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 90,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      height: 100,
                      width: 280,
                      color: Colors.black12,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
