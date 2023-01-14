// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:libera/login.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                    Container(height: 20),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 20, bottom: 12),
                        child: Column(
                          children: [
                            TextField(
                              onChanged: (text) {
                                email = text;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              onChanged: (text) {
                                password = text;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green),
                              onPressed: () async {
                                if (await login(email, password) == true){
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                } else {
                                  print('Login inválido!');
                                }
                              },
                              child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'Entrar',
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background_1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.2),
          ),
          _body(),
        ],
      ),
    );
  }
}
