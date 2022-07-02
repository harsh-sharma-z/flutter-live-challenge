import 'package:flutter/material.dart';

class CompletionScreen extends StatelessWidget {
  static const routename = '/completion_screen';
  final String name;

  const CompletionScreen({super.key, this.name = ''});

  @override
  Widget build(BuildContext context) {
    var text = RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 20, color: Colors.black),
        children: [
          const TextSpan(
            text:
                'You have successfully completed Hybrid Mobile App Development Course.\n\n',
          ),
          const TextSpan(
            text: 'INSTRUCTOR NAME\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'Pankaj Kapoor\n',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      body:
          // Center(
          //   child:
          Column(
        children: [
          Text(name),
          Image.asset('name'),
          text,
          Text(DateTime.april.toString(), textAlign: TextAlign.right)
        ],
        // ),
      ),
    );
  }
}
