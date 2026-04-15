import 'package:flutter/material.dart';

class QuestWidget extends StatelessWidget {
  // Variabel untuk menerima data dari luar
  final String title;
  final String reward;

  const QuestWidget({
    super.key,
    required this.title,
    required this.reward,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Aksi ketika quest ditekan
      },
      child: Ink(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(14),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.black.withAlpha(20)),
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
                borderRadius: BorderRadius.circular(12)
              ),
              child: const Icon(Icons.task_alt, color: Colors.purpleAccent,),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Menampilkan judul dari variabel
                  Text(title),
                  const SizedBox(height: 2,),
                  // Menampilkan reward dari variabel
                  Text(
                    reward,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold
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