import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'view_list.dart';

Widget loginWidget() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
    ),
    width: Get.width,
    height: 400,
    child: Container(
      height: Get.height * 0.3,
      width: Get.width,
      margin: EdgeInsets.only(right: 200),
      child: Center(
        child: Text(
          "Вход",
          style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget FormWidget() {
  return Container(
    margin: EdgeInsets.only(top: 60, left: 20, right: 20),
    alignment: Alignment.center,
    child: Container(
      child: Column(children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Email'),
        ),
        SizedBox(
          height: 30,
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(hintText: 'Пароль'),
        ),
        SizedBox(
          height: 36,
        ),
        InkWell(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color(0xFF9B51E0)),
              width: 230,
              height: 38,
              margin: EdgeInsets.only(top: 40),
              child: Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  "Войти",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )),
          onTap: () {
            Get.to(() => View());
          },
        ),
      ]),
    ),
  );
}
