import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/ai_assistant_screen.dart';
import '../screens/search_screen.dart';
import '../screens/gaming/gaming_screen.dart';
import '../screens/shopping/shopping_screen.dart';
import '../screens/music/music_screen.dart';
import '../screens/upload_screen.dart';
import '../screens/camera_screen.dart';
import '../screens/channels_screen.dart';
import '../screens/live_stream_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    AiAssistantScreen(),
    SearchScreen(),
    GamingScreen(),
    ShoppingScreen(),
    MusicScreen(),
    UploadScreen(),
    CameraScreen(),
    ChannelsScreen(),
    LiveStreamScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            _buildDrawerItem(icon: Icons.home, title: 'Home', index: 0),
            _buildDrawerItem(icon: Icons.auto_awesome, title: 'AI Assistant', index: 1),
            _buildDrawerItem(icon: Icons.search, title: 'Search', index: 2),
            _buildDrawerItem(icon: Icons.sports_esports, title: 'Gaming Area', index: 3),
            _buildDrawerItem(icon: Icons.shopping_bag, title: 'Shopping Area', index: 4),
            _buildDrawerItem(icon: Icons.music_note, title: 'Music', index: 5),
            _buildDrawerItem(icon: Icons.upload, title: 'Upload', index: 6),
            _buildDrawerItem(icon: Icons.camera_alt, title: 'Camera', index: 7),
            _buildDrawerItem(icon: Icons.tv, title: 'Channels', index: 8),
            _buildDrawerItem(icon: Icons.live_tv, title: 'Live Stream', index: 9),
            _buildDrawerItem(icon: Icons.person, title: 'Profile', index: 10),
            _buildDrawerItem(icon: Icons.settings, title: 'Settings', index: 11),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({required IconData icon, required String title, required int index}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: _currentIndex == index,
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
        Navigator.pop(context); // Close drawer
      },
    );
  }
}
