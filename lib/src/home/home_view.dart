import 'package:flutter/material.dart';
import 'package:tandem_typer/src/settings/settings_controller.dart';
import 'package:tandem_typer/src/settings/settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.controller});

  static const routeName = '/';

  final SettingsController controller;

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tandem Typer',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
              child: const Text(
                'Start',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
            ),
          ],
        ),
      ),
    );
  }
}
