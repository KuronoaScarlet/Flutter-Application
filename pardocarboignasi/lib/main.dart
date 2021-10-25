import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          BlueHalf(),
          WhiteHalf(),
        ],
      ),
    );
  }
}

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
                      height: 40,
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
                  child: const Icon(Icons.person, size: 90),
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
          color: Colors.blue[500],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
    );
  }
}

class WhiteHalf extends StatelessWidget {
  const WhiteHalf({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        padding: const EdgeInsets.fromLTRB(14, 15, 14, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
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
                InfoMidBox(
                  roomIcon: Icons.living_outlined,
                  boolText: "On",
                  checkBox: Icons.check_box,
                  roomName: "Living Room",
                  devicesValue: "5 devices",
                  tempValue: "24 ºC",
                  humValue: "18%",
                  enerValue: "56 kWh",
                  boxColor: Colors.blue[500],
                  topTextColor: Colors.white,
                  topIconColor: Colors.white,
                  botTextColor: Colors.white,
                  botIconColor: Colors.white,
                ),
                const InfoMidBox(
                  roomIcon: Icons.bed,
                  boolText: "Off",
                  checkBox: Icons.check_box_outline_blank_rounded,
                  roomName: "Bedroom",
                  devicesValue: "3 devices",
                  tempValue: "19 ºC",
                  humValue: "31%",
                  enerValue: "21 kWh",
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: const [
                InfoMidBox(
                  roomIcon: Icons.bathtub_outlined,
                  boolText: "Off",
                  checkBox: Icons.check_box_outline_blank_rounded,
                  roomName: "Bathroom",
                  devicesValue: "3 devices",
                  tempValue: "11 ºC",
                  humValue: "67%",
                  enerValue: "19 kWh",
                ),
                InfoMidBox(
                  roomIcon: Icons.kitchen_outlined,
                  boolText: "Off",
                  checkBox: Icons.check_box_outline_blank_rounded,
                  roomName: "Kitchen",
                  devicesValue: "6 devices",
                  tempValue: "26 ºC",
                  humValue: "48%",
                  enerValue: "98 kWh",
                )
              ],
            ),
            const MenuBotBox(),
          ],
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
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: Colors.blue[500], size: 30),
            const SizedBox(
              height: 20,
            ),
            Text(
              concept,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            Text(
              number,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}

class InfoMidBox extends StatelessWidget {
  final IconData roomIcon;
  final String boolText;
  final IconData checkBox;
  final String roomName;
  final String devicesValue;
  final String tempValue;
  final String humValue;
  final String enerValue;
  final Color? boxColor;
  final Color? topIconColor;
  final Color? botIconColor;
  final Color? topTextColor;
  final Color? botTextColor;

  const InfoMidBox({
    required this.roomIcon,
    required this.boolText,
    required this.checkBox,
    required this.roomName,
    required this.devicesValue,
    required this.tempValue,
    required this.humValue,
    required this.enerValue,
    this.boxColor = Colors.black12,
    this.topIconColor = Colors.black87,
    this.botIconColor = Colors.black45,
    this.topTextColor = Colors.black54,
    this.botTextColor = Colors.black45,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 6),
        width: 120,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  roomIcon,
                  size: 30,
                  color: topIconColor,
                ),
                Text(
                  boolText,
                  style: TextStyle(
                    fontSize: 14,
                    color: topTextColor,
                  ),
                ),
                Icon(
                  checkBox,
                  color: topIconColor,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              roomName,
              style: TextStyle(
                color: topTextColor,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              devicesValue,
              style: TextStyle(
                color: botTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InfoIcons(
              temperature: tempValue,
              humidity: humValue,
              energy: enerValue,
              color: botIconColor,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuBotBox extends StatelessWidget {
  const MenuBotBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: const [
          Draw(
            value: "Home",
            icon: Icons.home_filled,
            color: Colors.white,
          ),
          Draw(
            value: "New device",
            icon: Icons.add_box_outlined,
            color: Colors.white70,
          ),
          Draw(
            value: "Settings",
            icon: Icons.settings,
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}

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

class Draw extends StatelessWidget {
  final IconData icon;
  final String value;
  final Color? color;

  const Draw({
    Key? key,
    required this.icon,
    required this.value,
    this.color = Colors.black45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            value,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
