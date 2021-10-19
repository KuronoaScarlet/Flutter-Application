// ignore_for_file: dead_code, prefer_const_constructors, empty_statements

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TopContainer(),
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Rooms",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 12,
                            ),
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [
                                    Icon(
                                      Icons.living_outlined,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "On",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Icon(Icons.check_box),
                                  ],
                                ),
                                Text(""),
                                Text(""),
                                Row(),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: const [
                            MenuIcons(
                              concept: "Home",
                              icon: Icons.home_filled,
                              color: Colors.white,
                            ),
                            MenuIcons(
                              concept: "New device",
                              icon: Icons.add_box_outlined,
                            ),
                            MenuIcons(
                              concept: "Settings",
                              icon: Icons.settings,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuIcons extends StatelessWidget {
  final String concept;
  final IconData icon;
  final Color? color;
  const MenuIcons({
    Key? key,
    required this.concept,
    required this.icon,
    this.color = Colors.white70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: color,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          concept,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ],
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double hPadding = 10;
    double vPadding = 30;
    return Expanded(
      flex: 8,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Good Evening",
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Jonathan Holmes",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
            Text(
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
          color: Colors.blue[500],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }
}

class InfoTopBox extends StatelessWidget {
  final String concept;
  final String number;
  final IconData icon;
  const InfoTopBox({
    Key? key,
    required this.concept,
    required this.number,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.blue[500], size: 30),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            concept,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          Text(
            number,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
}
