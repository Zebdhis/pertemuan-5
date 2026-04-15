import 'package:flutter/material.dart';
import 'package:flutter_application_1/chip_widget.dart';
import 'package:flutter_application_1/header_widget.dart';
import 'package:flutter_application_1/quest_widget.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bini Gweh"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(12),
        child: Column(
          crossAxisAlignment: .start,
          children: [
          HeaderWidget(
            name: "Ada",
            role: "my bini",
            level: 99,
          ),
          SizedBox(height: 8,),
          Row(
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
          SizedBox(height: 8,),
          Text("Todays Quest",
          style: TextStyle(
            fontWeight: .bold,
            fontSize: 24
          ),
        ),
        QuestWidget(),
        QuestWidget(),
        QuestWidget()
          ],
        ),
      )
    );
  }
}