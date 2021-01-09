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

List<Rocket> rockets = [];
