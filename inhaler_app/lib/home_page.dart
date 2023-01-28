import 'package:flutter/material.dart';
import 'package:inhaler_app/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const DetailPage();
              },
            ),
          );
        },
        child: const Text('Details'),
      ),
    );
  }
}
