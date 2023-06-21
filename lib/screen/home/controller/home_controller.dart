import 'package:flutter/material.dart';



class Homeprovider extends ChangeNotifier
{
  List name=[
    "Mercury",
    "Venus",
    "Earth",
    "Mars",
    "Jupiter",
    "Saturn",
    "Uranus",
    "Neptune",
  ];

  List location=[
    "45,1m km",
    "67.4m km",
    "78.9m km",
    "89.5m km",
    "26.1m km",
    "47.5m km",
    "57.2m km",
    "22.2m km",

  ];
  List meter=[
    "6.25 m/s2",
    "5.26 m/s2",
    "5.21 m/s2",
    "8.7 m/s2",
    "3.71 m/s2",
    "2.54 m/s2",
    "4.5 m/s2",
    "9.14 m/s2",
  ];
  List images=[
    "assets/images/mercury.png",
    "assets/images/venus.png",
    "assets/images/earth.png",
    "assets/images/mars.png",
    "assets/images/jupiter.png",
    "assets/images/saturn.png",
    "assets/images/uranus.png",
    "assets/images/neptune.png",
  ];
  List backimages=[
    "assets/backimages/mercury.jpg",
    "assets/backimages/venus.jpg",
    "assets/backimages/earthback.jpg",
    "assets/backimages/marsback.jpg",
    "assets/backimages/jupiterback.jpg",
    "assets/backimages/saturn.jpg",
    "assets/backimages/uransuback.jpg",
    "assets/backimages/neptuneback.jpg",
  ];
  List title=[
    "Mercury is the smallest planet in our solar system. It’s just a little bigger than Earth’s moon. It is the closest planet to the sun, but it’s actually not the hottest. Venus is hotter.Along with Venus, Earth, and Mars, Mercury is one of the rocky planets. It has a solid surface that is covered with craters. It has no atmosphere, and it doesn’t have any moons. Mercury likes to keep things simple.",
    "Venus is the second planet from the Sun and Earth's closest planetary neighbor. Even though Mercury is closer to the Sun, Venus is the hottest planet in our solar system. Its thick atmosphere is full of the greenhouse gas carbon dioxide, and it has clouds of sulfuric acid.",
    "Earth's Moon is the fifth largest of the 200+ moons orbiting planets in our solar system. Earth's only natural satellite is simply called \"the Moon\" because people didn't know other moons existed until Galileo Galilei discovered four moons orbiting Jupiter in 1610.",
    "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.",
    "Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter's stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium.",
    "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium. Saturn is not the only planet to have rings, but none are as spectacular or as complex as Saturn's. Saturn also has dozens of moons.",
    "Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star.",
    "Neptune is one of two ice giants in the outer solar system (the other is Uranus). Most (80% or more) of the planet's mass is made up of a hot dense fluid of \"icy\" materials – water, methane, and ammonia – above a small, rocky core. Of the giant planets, Neptune is the densest.",
  ];

}