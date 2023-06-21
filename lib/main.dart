import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:planet_animation/screen/home/controller/home_controller.dart';
import 'package:planet_animation/screen/home/view/home_screen.dart';
import 'package:planet_animation/screen/home/view/second_Screen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>  home(),
          'detail':(context)  => detail(),
        },
      ),
    ),
  );
}