import 'package:flutter/material.dart';

class Rocket {
  final String image, name, wikipedia;
  final String firstFlight;
  final int weight;
  final int id;
  final bool active;

  Rocket({
    this.id,
    this.image,
    this.name,
    this.weight,
    this.firstFlight,
    this.wikipedia,
    this.active
  });
}

List<Rocket> rockets = [
  Rocket(
      id: 1,
      name: "Falcon 9",
      image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Falcon_9_logo.svg/1200px-Falcon_9_logo.svg.png",
  ),
  Rocket(
      id: 2,
      name: "Samasource Sofa",
      image: "https://upload.wikimedia.org/wikipedia/commons/9/9a/Soyuz_TMA-9_launch.jpg",
  )
];
