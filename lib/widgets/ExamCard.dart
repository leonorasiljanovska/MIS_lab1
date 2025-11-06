import 'package:flutter/material.dart';
import '../models/Exam.dart';
class ExamCard  extends StatelessWidget{
  final Exam exam;
  final VoidCallback onTap;


  const ExamCard ({super.key, required this.exam, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: exam.hasPassed ? Colors.grey : Colors.green,
      child: ListTile(
        title: Text(
          exam.subject,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.calendar_today,size: 16,),
                SizedBox(width: 5,),
                Text(
                  "Датум: ${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year}",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_time,size: 16,),
                SizedBox(width: 5,),
                Text("Време: ${exam.dateTime.hour}:${exam.dateTime.minute.toString().padLeft(2, '0')}"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on,size: 16,),
                SizedBox(width: 5,),
                Text("Простории: ${exam.rooms.join(", ")}",)
              ],
            )
          ],
        ),
      onTap: onTap,
      ),
    );
  }
}