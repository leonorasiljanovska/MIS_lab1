import 'package:flutter/material.dart';
import 'package:lab_1/screens/exam_details_screen.dart';
import '../widgets/ExamCard.dart';
import '../models/Exam.dart';

class ExamListScreen extends StatelessWidget {
  const ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => b.dateTime.compareTo(a.dateTime));
    List<Exam> examsToTake = exams.where((e) => !e.hasPassed).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Распоред за испити - 221115",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle:FontStyle.italic,
        ),
      ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: exams.length,
              itemBuilder: (context, index) {
                return ExamCard(
                  exam: exams[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ExamDetailsScreen(exam: exams[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Text(
                "Вкупно: ${exams.length}  |  Останати: ${examsToTake.length}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
