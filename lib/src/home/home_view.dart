import 'package:flutter/material.dart';
import 'package:tandem_typer/src/settings/settings_controller.dart';
import 'package:tandem_typer/src/settings/settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.controller});

  static const routeName = '/';

  final SettingsController controller;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Home'),
        title: Row(
          children: [
            Image.asset(
              'assets/tt_wide_small.png',
              scale: 2,
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            const Text(
              'Tandem Typer',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
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
            OutlinedButton(
              child: const Text(
                'Start',
                style: TextStyle(fontSize: 40),
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
