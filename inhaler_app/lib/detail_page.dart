import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isSwitchActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/inhaler.jpg',
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.black),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text('This is how you inhale',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Elevated button');
            },
            child: const Text('Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined button');
            },
            child: const Text('Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text button');
            },
            child: const Text('Button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is the row');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.local_fire_department, color: Colors.blue),
                Text('Row widget'),
                Icon(Icons.local_fire_department, color: Colors.blue),
              ],
            ),
          ),
          Switch(
            value: isSwitchActive,
            onChanged: (bool newValue) {
              setState(() {
                isSwitchActive = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
