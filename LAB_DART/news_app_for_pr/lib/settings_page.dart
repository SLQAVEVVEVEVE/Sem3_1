import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 200.0), // Add 16.0 padding to both sides
      //width: MediaQuery.of(context).size.width * 0.75, // Set the width to 75% of the device's width
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Настройки'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back), // Replace 'abc' with 'arrow_back'
            tooltip: 'Назад',
            onPressed: () {
              Navigator.pop(context); // Navigate back to the main page
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
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
             
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0), // Adjust the horizontal margin
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.black, width: 2), // Add border
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust the horizontal padding
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
        const Text('Theme: '),
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
        const Text('Other Setting: '),
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