import 'package:flutter/material.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth < 768 ? 16 : 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Form your company\nfrom anywhere',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Join the thousands of entrepreneurs using our platform to incorporate their\ncompanies and unlock premium payment & banking options.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star, color: Colors.orange, size: 24),
              Icon(Icons.star, color: Colors.orange, size: 24),
              Icon(Icons.star, color: Colors.orange, size: 24),
              Icon(Icons.star, color: Colors.orange, size: 24),
              Icon(Icons.star_half, color: Colors.orange, size: 24),
              SizedBox(width: 12),
              Text(
                'Rated 4.2+ stars by entrepreneurs worldwide',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
