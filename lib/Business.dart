import 'package:flutter/material.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      padding: const EdgeInsets.all(24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text column
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Bonuses for Premium\nclients only",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "As a Premium client, we’ll assist you in setting up all the financial services\n"
                      "available to you. You’ll have a dedicated account manager and our exceptional\n"
                      "support team, ready to assist you via chat, email, and phone.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 24), // Add spacing between text and image
          // Image section
          SizedBox(
            width: 350, // Adjusted image width
            height: 350, // Adjusted image height
            child: Image.asset(
              'assets/images/4.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
