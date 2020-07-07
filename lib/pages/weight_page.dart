import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightPage extends StatelessWidget {
  WeightPage({Key key}) : super(key: key);

  final text1Focus = FocusNode();
  final text2Focus = FocusNode();
  final text1Controller = TextEditingController();
  final text2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Peso')),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "DE:",
                labelStyle: TextStyle(
                  color: Get.isDarkMode
                      ? Colors.white
                      : Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Get.isDarkMode
                      ? Colors.white
                      : Colors.black,
                    width: 2)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Get.isDarkMode
                      ? Colors.white
                      : Colors.black,
                    width: 3))
              ),
              style: TextStyle(
                color: Get.isDarkMode
                      ? Colors.white
                      : Colors.black,
                fontSize: MediaQuery.of(context).size.width / 14.5,
              ),
              maxLines: 1,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.number,
              autofocus: true,
              focusNode: text1Focus,
              controller: text1Controller,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "PARA:",
                labelStyle: TextStyle(
                  color: Get.isDarkMode
                      ? Colors.white
                      : Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Get.isDarkMode
                      ? Colors.white
                      : Colors.black,
                    width: 2)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Get.isDarkMode
                      ? Colors.white
                      : Colors.black,
                    width: 3))
              ),
              style: TextStyle(
                color: Get.isDarkMode
                    ? Colors.white
                    : Colors.black,
                fontSize: MediaQuery.of(context).size.width / 14.5,
              ),
              maxLines: 1,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.number,
              autofocus: false,
              focusNode: text2Focus,
              controller: text2Controller,
            ),
          ],
        ),
      ),
    );
  }
}
