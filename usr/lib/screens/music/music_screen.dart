import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Music'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Songs'),
              Tab(text: 'Live Music'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Songs')),
            Center(child: Text('Live Music')),
          ],
        ),
      ),
    );
  }
}
