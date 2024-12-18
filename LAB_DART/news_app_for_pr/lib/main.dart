import 'package:flutter/material.dart';
import 'news_list.dart';
import 'settings_page.dart'; // Add this line

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 200.0), // Add 16.0 padding to both sides
      width: MediaQuery.of(context).size.width * 0.75, // Set the width to 75% of the device's width
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Бюро'),
          leading: const Icon(Icons.abc),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings), // Change the icon to settings icon
              tooltip: 'Go to the settings page',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const Scaffold(
                      body: SettingsPage(), // Call the SettingsPage widget
                    );
                  },
                ));
              },
            ),

          ],
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: const TextStyle(color: Colors.white),
        ),
        body: const NewsList(),
      ),
    );
  }
}


 