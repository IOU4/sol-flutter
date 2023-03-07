import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/util/input_data.dart';

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

  late List<InputData> _inputs;
  _RegisterPageState() {
    _inputs = [
      InputData(
          icon: Icons.email_outlined,
          label: "email",
          controller: _emailController),
      InputData(
          icon: Icons.person_outlined,
          label: "usename",
          controller: _usernameController),
      InputData(
          icon: Icons.lock_open_outlined,
          label: "password",
          controller: _passwordController),
      InputData(
          icon: Icons.lock_outlined,
          label: "confirm password",
          controller: _passwordConfirmationController)
    ];
  }

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
            for (var input in _inputs)
              Column(
                children: [
                  const SizedBox(height: 10),
                  TextField(
                    controller: input.controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(input.icon),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: (Colors.brown[400])!),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      labelText: input.label,
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.maxFinite,
              height: 50.0,
              child: ElevatedButton(
                onPressed: _finishRegister,
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
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Text(
          "all rights reserved @2023",
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
