import 'package:flavors/utils/flavor_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You currently running the app using ${FlavorConfig.instance.name} env',
            ),
            Text(
              "\nYour current environment base url is \n${FlavorConfig.instance.values.apiBaseUrl}",
              textAlign: TextAlign.center,
            ),
            const Text('Hello World:')
          ],
        ),
      ),
    );
  }
}