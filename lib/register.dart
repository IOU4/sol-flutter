import 'package:flutter/material.dart';
import 'package:myapp/home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  get inputDecoration => (String labelText, IconData icon) => InputDecoration(
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: (Colors.brown[400])!),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        labelText: labelText,
      );

  void _finishRegister() {
    Navigator.pushAndRemoveUntil<void>(
      context,
      MaterialPageRoute<void>(
          builder: (BuildContext context) => const AppHome()),
      ModalRoute.withName('/'),
    );
  }

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                const SizedBox(height: 16.0),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                      child: Image.asset('assets/sol-logo.png'),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 100.0),
            TextField(
              controller: _emailController,
              decoration: inputDecoration('email', Icons.email_outlined),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _usernameController,
              decoration: inputDecoration('username', Icons.person_outline),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              decoration: inputDecoration('password', Icons.lock_open_outlined),
              obscureText: true,
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordConfirmationController,
              decoration:
                  inputDecoration('confirm password', Icons.lock_outlined),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.maxFinite,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  _finishRegister();
                },
                style: buttonStyle,
                child: const Text('create account'),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                  child: Row(
                    children: const [Text('login'), Icon(Icons.arrow_right)],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
