import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  final String time;
  final String icon;
  final String temp;
  const ForecastCard(this.time, this.icon, this.temp, {super.key});

@override
Widget build(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          blurRadius: 5,
          color: Colors.black.withOpacity(0.1),
        )
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: const TextStyle(fontSize: 12)),
          Text(icon, style: const TextStyle(fontSize: 18)),
          Text(temp,
          style:
          const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}