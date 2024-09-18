import 'package:flutter/material.dart';
import 'package:threads/features/auth/views/register_view.dart';
import 'package:threads/features/auth/widgets/auth_input_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'connexion',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          AuthInputWidget(
            controller: emailController,
            hinText: 'Adresse Email',
          ),
          const SizedBox(
            height: 30,
          ),
          AuthInputWidget(
            controller: passwordController,
            hinText: 'Mot de passe',
            isPassword: true,
          ),
          const SizedBox(
            height: 30,
          ),
          const Chip(label: Text('Connexion')),
          TextButton(
            child: const Text('Pas de compte ? Inscrivez-vous !'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterView()));
            },
          ),
        ],
      ),
    ));
  }
}
