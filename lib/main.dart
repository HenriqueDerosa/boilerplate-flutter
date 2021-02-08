import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_boilerplate/config/routes.dart';

void main() => runApp(
      GetMaterialApp(
        title: 'Pius',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: Routes.home,
        getPages: Routes.pages,
      ),
    );
