import 'package:flutter/material.dart';
import 'package:threads/features/auth/views/login_view.dart';
import 'package:threads/features/auth/widgets/auth_input_widget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController nameController;
  late final TextEditingController usernameController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    usernameController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    usernameController.dispose();
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
            'Inscription',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          AuthInputWidget(
            controller: nameController,
            hinText: 'Nom complet',
          ),
          const SizedBox(
            height: 30,
          ),
          AuthInputWidget(
            controller: usernameController,
            hinText: 'Nom d\'utilisateur',
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
          const Chip(label: Text('Inscription')),
          TextButton(
            child: const Text('Deja un compte ? Connectez-vous !'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginView()));
            },
          ),
        ],
      ),
    ));
  }
}
