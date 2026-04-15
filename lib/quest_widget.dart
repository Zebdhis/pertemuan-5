import 'package:flutter/material.dart';

class QuestWidget extends StatelessWidget {
  const QuestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Ink(
        padding: .all(12),
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(14),
          borderRadius: .circular(14),
          border: .all(color: Colors.black.withAlpha(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 10,
              offset: const Offset(0, 4)
            )
          ]
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.purpleAccent.withAlpha(12),
                borderRadius: .circular(12)
              ),
              child: Icon(Icons.task_alt, color: Colors.purpleAccent,),
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Kalahkan 3 Koruptor"),
                  SizedBox(height: 2,),
                  Text("Reward:20+ ompreng MBG",
                  style: TextStyle(
                    fontWeight: .bold
                  ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}