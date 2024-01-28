import 'package:flutter/material.dart';
import 'package:practice/pages/login/widgets/app_button.dart';
import 'package:practice/pages/login/widgets/username_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Quiz App",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: _buildFields(_usernameController),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}


_buildFields(var controller) {
  return Column(
    children: [
      UsernameField(
        usernameController: controller,
        hintText: "Game PIN",
      ),
      const SizedBox(
        height: 16,
      ),
      AppButton(
        title: "Login",
        onPressed: () {
          print('Username is ${controller.text}');
        },
      ),
    ],
  );
}
