import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shopping Area'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Products'),
              Tab(text: 'Cart'),
              Tab(text: 'Orders'),
            ],
          ),
        ),
        drawer: const AppDrawer(),
        body: const TabBarView(
          children: [
            Center(child: Text('Products')),
            Center(child: Text('Cart')),
            Center(child: Text('Orders')),
          ],
        ),
      ),
    );
  }
}
