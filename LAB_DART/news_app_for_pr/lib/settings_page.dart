import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Settings'),
                      ),
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
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.black, width: 2), // Add border
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'This is the settings page',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 20),
                  buildThemeSetting(),
                  const SizedBox(height: 20),
                  buildOtherSetting(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildThemeSetting() {
    return Row(
      children: <Widget>[
        Text('Theme: '),
        Switch(
          value: false, // Replace with the current setting value
          onChanged: (value) {
            // Handle theme setting change action here
          },
        ),
      ],
    );
  }

  Widget buildOtherSetting() {
    return Row(
      children: <Widget>[
        Text('Other Setting: '),
        Switch(
          value: false, // Replace with the current setting value
          onChanged: (value) {
            // Handle other setting change action here
          },
        ),
      ],
    );
  }
}