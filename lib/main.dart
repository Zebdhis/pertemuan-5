import 'package:flutter/material.dart';
import 'package:flutter_application_1/chip_widget.dart';
import 'package:flutter_application_1/header_widget.dart';
import 'package:flutter_application_1/quest_widget.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Menyimpan data secara terorganisir agar tidak ditulis statis di komponen
    final List<Map<String, String>> questData = [
      {
        "title": "Kalahkan 3 Koruptor",
        "reward": "Reward: 20+ Gold"
      },
      {
        "title": "Selesaikan Laporan Sistem RUP",
        "reward": "Reward: 50+ EXP"
      },
      {
        "title": "Membaca Buku",
        "reward": "Reward: +10 Charisma"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Bini Gweh"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(
              name: "Ada",
              role: "my bini",
              level: 99,
            ),
            const SizedBox(height: 8,),
            const Row(
              spacing: 8,
              children: [
                ChipWidget(
                  icon: Icons.favorite,
                  label: "HP",
                  value: 100,
                  backgroundColor: Colors.green,
                  borderColor: Colors.green,
                ),
                ChipWidget(
                  icon: Icons.shield,
                  label: "DEF",
                  value: 999,
                  backgroundColor: Colors.lightBlueAccent,
                  borderColor: Colors.lightBlueAccent,
                ),
                ChipWidget(
                  icon: Icons.water_drop,
                  label: "DMG",
                  value: 999,
                  backgroundColor: Colors.red,
                  borderColor: Colors.red,
                )
              ],
            ),
            const SizedBox(height: 8,),
            const Text(
              "Todays Quest",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            const SizedBox(height: 12),
            
            // Render dinamis: mengirim data dari luar (main.dart) ke dalam QuestWidget
            ...questData.map((quest) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: QuestWidget(
                  title: quest["title"]!,
                  reward: quest["reward"]!,
                ),
              );
            }).toList(),
          ],
        ),
      )
    );
  }
}