import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;

  const ForecastCard(this.time, this.icon, this.temp, {super.key});

  Color _getIconColor(IconData icon) {
    if (icon == Icons.wb_sunny) return Colors.orange;
    if (icon == Icons.cloud) return Colors.grey;
    if (icon == Icons.grain) return Colors.blue;
    return Colors.black;
  }
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

          Icon(
                icon,
                size: 20,
                color: _getIconColor(icon),
              ),

          
          Text(temp,
              style: const TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}