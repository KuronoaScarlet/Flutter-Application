import 'package:flutter/material.dart';

import 'draw.dart';

class InfoIcons extends StatelessWidget {
  final String temperature;
  final String humidity;
  final String energy;
  final Color? color;
  const InfoIcons({
    required this.temperature,
    required this.humidity,
    required this.energy,
    this.color = Colors.black45,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Draw(
          icon: Icons.device_thermostat_rounded,
          value: temperature,
          color: color,
        ),
        Draw(
          icon: Icons.water_damage_sharp,
          value: humidity,
          color: color,
        ),
        Draw(
          icon: Icons.electrical_services_rounded,
          value: energy,
          color: color,
        ),
      ],
    );
  }
}
