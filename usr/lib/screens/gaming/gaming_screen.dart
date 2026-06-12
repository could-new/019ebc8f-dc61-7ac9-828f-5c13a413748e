import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';

class GamingScreen extends StatelessWidget {
  const GamingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Gaming Area'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Play Games'),
              Tab(text: 'Live Gaming'),
              Tab(text: 'Leaderboard'),
            ],
          ),
        ),
        drawer: const AppDrawer(),
        body: const TabBarView(
          children: [
            Center(child: Text('Play Games')),
            Center(child: Text('Live Gaming')),
            Center(child: Text('Leaderboard')),
          ],
        ),
      ),
    );
  }
}
