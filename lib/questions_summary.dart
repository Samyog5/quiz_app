import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: TextStyle(
                      color: const Color.fromARGB(255, 40, 38, 41),
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        data['question'] as String,
                        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(data['user_answer'] as String, style: TextStyle(color: const Color.fromARGB(255, 196, 149, 246), fontSize: 13, ), textAlign: TextAlign.left),
                      Text(data['correct_answer'] as String , style: TextStyle(color: const Color.fromARGB(255, 146, 253, 226), fontSize: 13, )),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
