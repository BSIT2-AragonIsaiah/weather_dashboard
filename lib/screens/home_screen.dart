import 'package:flutter/material.dart';
import '../widgets/forecast_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EEF3),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [
              const Text(
                'Weather Dashboard',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }