import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView<MainController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: Get.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue[400]!,
                Colors.yellow[100]!,
                Colors.purple[200]!,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.purple[200]!,
                        Colors.blue[200]!,
                      ],
                    ),
                  ),
                  child: Obx(() {
                    return Center(
                      child: Text(
                        "Number ${controller.number.value}",
                        style: const TextStyle(fontSize: 30),
                      ),
                    );
                  })),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    controller.five();
                  },
                  child: const Text(
                    "5",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    controller.ten();
                  },
                  child: const Text(
                    "10",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
