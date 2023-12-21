import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String username;
  final String userid;
  const Profile({super.key, required this.username, required this.userid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Center(
              child: Text('Profile Screen'),
            ),
          ),
          Text(username),
          const SizedBox(
            height: 15,
          ),
          Text(userid),
        ],
      ),
    );
  }
}
