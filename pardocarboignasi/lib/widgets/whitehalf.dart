import 'package:flutter/material.dart';

import 'infoboxes.dart';

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
