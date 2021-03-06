import 'package:flutter/material.dart';
import 'package:live_class/screens/completion_screen.dart';
import 'package:live_class/widget/text_field_builder.dart';

class LoginScreen extends StatefulWidget {
  static const routename = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Get Your Certificate",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Login',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFieldBuilder(
              icon: const Icon(Icons.account_circle_sharp),
              labelText: "Student Name",
              textType: TextInputType.name,
              controller: _loginController,
            ),
            const SizedBox(height: 20),
            TextFieldBuilder(
              icon: const Icon(Icons.email),
              labelText: 'Student Email',
              textType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, CompletionScreen.routename),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                minimumSize: const Size(200, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
