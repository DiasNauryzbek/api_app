import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import 'loginIntroWidget.dart';
import 'view_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              loginWidget(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        )
                      ]),
                  margin: EdgeInsets.only(bottom: 70),
                  width: 327,
                  height: 348,
                  child: FormWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
