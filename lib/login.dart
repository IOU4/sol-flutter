import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
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
              controller: _usernameController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: (Colors.brown[400])!),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                labelText: 'Moblie num',
              ),
            ),
            // spacer
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: (Colors.brown[400])!),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // TODO: invoke login
                    // ignore: avoid_print
                    print("login ....");
                  },
                  child: const Text('login'),
                ),
              ],
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
                    // TODO: got to register
                    // ignore: avoid_print
                    print("regiser ...");
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
