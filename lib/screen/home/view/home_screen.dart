import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planet_animation/screen/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home>  with SingleTickerProviderStateMixin{
  Homeprovider? hptrue, hpfalse;
  AnimationController? animationController;
  Animation? rotaion;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    rotaion = Tween<double>(begin: 0, end: pi).animate(animationController!);

    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    hpfalse = Provider.of<Homeprovider>(context, listen: false);
    hptrue = Provider.of<Homeprovider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("PLANETS"),
          centerTitle: true,
          actions: [
            Icon(Icons.search),
          ],
        ),
        backgroundColor: Colors.blue.shade200,
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'detail', arguments: index);
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 320,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.blue),
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(10),
                               ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 95, top: 25),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      "${hpfalse!.name[index]}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 26),
                                    ),
                                    subtitle: Text(
                                      "Milkyway Galaxy ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),

                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Icon(
                                          Icons.location_on,
                                          size: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 23),
                                        child: Text(
                                          "${hpfalse!.location[index]}",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Icon(Icons.compare_arrows),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5, top: 23),
                                        child: Text(
                                          "${hpfalse!.meter[index]}",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 25,
                            child: RotationTransition(
                              turns: Tween<double>(begin: 0,end: 1).animate(animationController!),
                              child: Container(
                                height: 95,
                                width: 95,
                                child: Image.asset(
                                  "${hpfalse!.images[index]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: hpfalse!.name.length,
        ),
      ),
    );
  }
}
