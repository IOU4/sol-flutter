import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/util/input_data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  late List<InputData> _inputs;

  _LoginPageState() {
    _inputs = [
      InputData(
          icon: Icons.person_outlined,
          label: "username",
          controller: _usernameController),
      InputData(
          icon: Icons.lock_outlined,
          label: "password",
          controller: _passwordController)
    ];
  }
  get inputDecoration => (String labelText, IconData icon) => InputDecoration(
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: (Colors.brown[400])!),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        labelText: labelText,
      );

  void _finishLogin() {
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
                  const SizedBox(height: 12.0),
                  TextField(
                    controller: input.controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(input.icon),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: (Colors.brown[400])!),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      labelText: input.label,
                    ),
                  )
                ],
              ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.maxFinite,
              height: 50.0,
              child: ElevatedButton(
                onPressed: _finishLogin,
                style: buttonStyle,
                child: const Text('login'),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Not a memeber ?',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/register');
                  },
                  child: Row(
                    children: const [
                      Text('register  '),
                      Icon(Icons.arrow_right)
                    ],
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
