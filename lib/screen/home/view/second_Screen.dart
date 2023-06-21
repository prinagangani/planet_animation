import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planet_animation/screen/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> with SingleTickerProviderStateMixin{
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
    int i = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.black,
              child: Image.asset(
                "${hpfalse!.backimages[i]}",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 270),
                    child: Container(
                      height: 180,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue),
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80, top: 25),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "${hpfalse!.name[i]}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 27),
                              ),
                              subtitle: Text(
                                "Milkyway Galaxy ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              trailing: Icon(
                                Icons.more_vert,
                                color: Colors.black,
                                size: 25,
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
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 23),
                                  child: Text(
                                    "${hpfalse!.location[i]}",
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
                                  padding:
                                      const EdgeInsets.only(right: 5, top: 23),
                                  child: Text(
                                    "${hpfalse!.meter[i]}",
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
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(right: 250, top: 10),
                    child: Text(
                      "Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                        width: 350,
                        child: Text(
                      "${hpfalse!.title[i]}",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    )),
                  )

                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 300,
              child: RotationTransition(
                turns: Tween<double>(begin: 0,end: 1).animate(animationController!),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    "${hpfalse!.images[i]}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
