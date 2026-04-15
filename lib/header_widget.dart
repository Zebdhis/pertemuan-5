import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String role;
  final int level;

  const HeaderWidget({super.key,
  required this.name,
  required this.role,
  required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white,Colors.black]),
        color: Colors.black
      ),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage("https://picsum.photos/id/64/4326/2884"),
              ),
              Positioned(
                right: 15,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Text("level $level",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 10,
                    fontWeight: .bold 
                  ),),
                )
              )
            ],
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(name,
                style: TextStyle(
                  fontWeight: .bold,
                  fontSize: 24
                ),),
                Text(role),
              ],
            )
          )
        ],
      ),
    );
  }
}