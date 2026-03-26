import 'package:flutter/material.dart';
import '../widgets/forecast_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFFE9EEF3),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
              const Text(
                "Weather Dashboard",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // 🌤 Main Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                color: const Color(0xFFF5F7FA),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("☀️", style: TextStyle(fontSize: 40)),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("25°C",
                              style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold)),
                            Text("Cloudy with a chance of sunshine"),
                            Text("London, UK",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),

                  // 🔲 Grid Forecast
                  GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: const [
                      ForecastCard("10:00", "☀️", "26°C"),
                      ForecastCard("11:00", "☀️", "27°C"),
                      ForecastCard("12:00", "☁️", "25°C"),
                      ForecastCard("13:00", "☁️", "24°C"),
                      ForecastCard("14:00", "☀️", "25°C"),
                      ForecastCard("15:00", "☁️", "24°C"),
                      ForecastCard("16:00", "☁️", "23°C"),
                      ForecastCard("17:00", "🌧️", "22°C"),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            // 🔻 Bottom Navigation
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                NavItem(icon: Icons.home, label: "Home", active: true),
                NavItem(icon: Icons.search, label: "Search"),
                NavItem(icon: Icons.person, label: "Profile"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;
  const NavItem({
  super.key,
  required this.icon,
  required this.label,
  this.active = false,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: active ? Colors.blue : Colors.grey),
        Text(label,
        style: TextStyle(color: active ? Colors.blue : Colors.grey)),
      ],
    );
  }
}