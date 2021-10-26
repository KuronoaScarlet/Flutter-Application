import 'package:flutter/material.dart';

import 'infoboxes.dart';

class BlueHalf extends StatelessWidget {
  const BlueHalf({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double hPadding = 14;
    double vPadding = 30;
    return Expanded(
      flex: 7,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Good Evening",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Jonathan Holmes",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.person, size: 75),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Overview",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: const [
                InfoTopBox(
                  concept: "Temperature",
                  number: "12 ºC",
                  icon: Icons.device_thermostat_rounded,
                ),
                InfoTopBox(
                  concept: "Humidity",
                  number: "43 %",
                  icon: Icons.water_damage_sharp,
                ),
                InfoTopBox(
                  concept: "Energy",
                  number: "315 kWh",
                  icon: Icons.electrical_services_rounded,
                ),
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blueAccent.shade200,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
