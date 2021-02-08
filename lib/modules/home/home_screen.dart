import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_boilerplate/config/routes.dart';
import 'package:flutter_boilerplate/widgets/appbar.dart';

class HomeScreenController extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class MyHomePage extends StatelessWidget {
  MyHomePage({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final HomeScreenController c = Get.put(HomeScreenController());

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Pius',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => Text(
                'Welcome ${c.count}',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          c.increment();
          if (c.count > 3) {
            Get.toNamed(Routes.second);
          }
        },
      ),
    );
  }
}
