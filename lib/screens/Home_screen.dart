// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset(
                  "Profile.png",
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                "Welcomeback",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Username",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  )),
              const Text("Email",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 15,
              ),
              ActionChip(label: const Text("logout"), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
