import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      child: const Column(
        children: [
          Divider(),
          SizedBox(height: 20),
          Text(
            "© 2026 Yuvaraj P",
          ),
          SizedBox(height: 8),
          Text(
            "Built with Flutter ❤️",
          ),
        ],
      ),
    );
  }
}