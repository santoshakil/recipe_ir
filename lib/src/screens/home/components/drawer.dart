import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Shaznin Safia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const Text(
                  '+880 1234567890',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Points'),
            subtitle: const Text('0'),
            trailing: const Text('TK 0.00'),
            onTap: () => Navigator.pop(context),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(),
          ),
          ListTile(
            title: const Text('Orders'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Address'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Payment'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('About'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Help'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
