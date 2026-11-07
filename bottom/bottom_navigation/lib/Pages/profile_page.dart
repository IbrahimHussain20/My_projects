import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<ProfilePage> {
  bool isDarkMode = false;
  bool highResDownloads = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const _SectionHeader(title: 'Preferences'),
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode_outlined),
            title: const Text('Dark Mode Theme'),
            value: isDarkMode,
            onChanged: (val) => setState(() => isDarkMode = val),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.high_quality_outlined),
            title: const Text('High-Resolution Image Cache'),
            subtitle: const Text('Load uncompressed previews'),
            value: highResDownloads,
            onChanged: (val) => setState(() => highResDownloads = val),
          ),
          const Divider(),
          const _SectionHeader(title: 'Account & Security'),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Edit Profile Details'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.lock_outline),
            title: const Text('Change Password'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          const Divider(),
          const _SectionHeader(title: 'Support'),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Help & FAQ'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About Photography App'),
            subtitle: const Text('Version 1.0.2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: Colors.purple.shade700,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
