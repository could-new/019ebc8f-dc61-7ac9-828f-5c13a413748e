import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class AiAssistantScreen extends StatelessWidget {
  const AiAssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AI Assistant')),
      drawer: const AppDrawer(),
      body: const Center(child: Text('AI Assistant Content')),
    );
  }
}
