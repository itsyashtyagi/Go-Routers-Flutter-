import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Contact Us Screen'),
      ),
    );
  }
}
