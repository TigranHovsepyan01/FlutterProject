import 'package:flutter/material.dart';
import 'package:test_t/requestes/models/data.dart';
class CardUi extends StatelessWidget {
  final Data data;
  const CardUi({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(data.bankLogo, height: 24,),
             const SizedBox(width: 8.0),
              Text(
                  data.bankName,
                style: const TextStyle(
                  color:  Color.fromARGB(255, 43, 43, 56),
                  fontSize: 16,
                  letterSpacing: 1.2
                ),
              ),
            ],
          ),
                const SizedBox(height: 16.0),
                 const Text(
                   'Type',
                   style: TextStyle(
                       fontSize: 18,
                       fontWeight:FontWeight.w600,
                   letterSpacing: 1.2
                   ),
                 ),
          Text(
              data.type,
              style: const TextStyle(letterSpacing: 1.2),
          ),
          const SizedBox(height: 8.0),
         const Text(
              'purpose',
           style: TextStyle(letterSpacing: 1.2),
         ),
          Text(
              data.purpose,
            style: const TextStyle(letterSpacing: 1.0),
          ),
        const SizedBox(height: 8.0),
         const Text(
              'Date',
            style:  TextStyle(letterSpacing: 1.2),
          ),
          Text("${data.date}",
            style: const TextStyle(letterSpacing: 1.0),
          ),
         const SizedBox(height: 8.0),
          const Text(
              'Effect',
            style: TextStyle(letterSpacing: 1.2),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                  "assets/${"hand1.png"}"),
               Text(
                "${data.effect}",
              style: TextStyle(letterSpacing: 1.0),)
            ],
          )
          ],
          ),
        )),
    );
  }
}




