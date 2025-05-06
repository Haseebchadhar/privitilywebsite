import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Logo
          Row(
            children: [
              Image.asset('assets/images/icon.png', height: 60),
              const SizedBox(width: 8),
            ],
          ),
          // Navigation links
          Row(
            children: [
              _navItem('Home', isActive: true),
              _navItem('Pricing', isActive: true),
              _navItem('About', isActive: true),
              _navItem('Contact us', isActive: true),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                child: const Text('Sign In', style: TextStyle(color: Colors.black87)),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                ),
                onPressed: () {},
                child: const Text("Start My Business", style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _navItem(String title, {bool isActive = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: isActive ? Colors.blue : Colors.black87,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
