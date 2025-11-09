class Exam{
  final String subject;
  final DateTime dateTime;
  final List<String> rooms;
  bool get hasPassed => dateTime.isBefore(DateTime.now());
  
  Exam({required this.subject,
  required this.dateTime, 
  required this.rooms});
}
List<Exam> exams = [
  Exam(
    subject: "Мобилни апликации",
    dateTime: DateTime(2025, 12, 11, 9, 0),
    rooms: ["135", "117"],
  ),
   Exam(
    subject: "Бази на податоци",
    dateTime: DateTime(2025, 11, 15, 12, 0),
    rooms: ["Лаб 3", "Лаб 13"],
  ),
  Exam(
    subject: "Алгоритми и податочни структури",
    dateTime: DateTime(2025, 1, 18, 10, 0),
    rooms: ["Б1", "Б2"],
  ),
  Exam(
    subject: "Оперативни системи",
    dateTime: DateTime(2024, 12, 20, 9, 0),
    rooms: ["215"],
  ),
  Exam(
    subject: "Вештачка интелигенција",
    dateTime: DateTime(2025, 12, 1, 13, 0),
    rooms: ["138"],
  ),
  Exam(
    subject: "Компјутерски мрежи",
    dateTime: DateTime(2025, 1, 25, 8, 0),
    rooms: ["Лаб 2"],
  ),
  Exam(
    subject: "Програмирање на видео игри",
    dateTime: DateTime(2024, 12, 15, 9, 0),
    rooms: ["Лаб 13"],
  ),
  Exam(
    subject: "Интернет технологии",
    dateTime: DateTime(2025, 1, 29, 10, 0),
    rooms: ["315"],
  ),
  Exam(
    subject: "Дискретна математика",
    dateTime: DateTime(2025, 1, 9, 11, 0),
    rooms: ["215"],
  ),
  Exam(
    subject: "Мобилни информациски системи",
    dateTime: DateTime(2025, 2, 3, 9, 30),
    rooms: ["Б2"],
  ),
];
