import 'package:flutter/material.dart';

import 'draw.dart';
import 'infoicons.dart';

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
            Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Icon(
                      roomIcon,
                      size: 30,
                      color: topIconColor,
                    ),
                  ],
                ),
                Row(
                  children: [
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
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              roomName,
              style: TextStyle(
                color: topTextColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              devicesValue,
              style: TextStyle(
                color: botTextColor,
                fontSize: 14,
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
      padding: const EdgeInsets.all(13),
      decoration: const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
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
