import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers_demo/project/routes/app_route_constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: const Center(
            child: Text('Home Screen'),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).push(Uri(path: '/about').toString());
          },
          child: const Text('About Page'),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context)
                .pushNamed(MyAppRouteConstants.contactUsRouteName);
          },
          child: const Text('ContactUs Page'),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).pushNamed(MyAppRouteConstants.profileRouteName,
                pathParameters: {
                  'username': 'Yash Tyagi',
                  'userid': '22',
                });
          },
          child: const Text('Profile Page'),
        ),
      ]),
    );
  }
}
