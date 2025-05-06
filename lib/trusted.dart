import 'package:flutter/material.dart';

class Trusted extends StatelessWidget {
  const Trusted({super.key}); // Corrected class name to PascalCase

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Customer Testimonials'),
        ),
        body: const SingleTestimonialWidget(),
      ),
    );
  }
}

class SingleTestimonialWidget extends StatelessWidget {
  const SingleTestimonialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final testimonials = [
      {
        'name': 'Yusuf',
        'country': 'From Pakistan',
        'comment': "Their speed and prices are unmatched! Starting my business in the U.S. with Privatily was very easy. Their team took care of everything, and I really can't thank them enough.",
      },
      {
        'name': 'Chinedu',
        'country': 'From Nigeria',
        'comment': "Privatily provides excellent customer service. They are always responsive to concerns and keep you updated throughout the process. I was recommended to them by a friend and I highly recommend them to others.",
      },
      {
        'name': 'Jamal',
        'country': 'From Morocco',
        'comment': "I got an outstanding service for my US LLC formation. Their team was not only professional but also highly responsive throughout the entire process, making everything seamless and efficient.",
      },
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'Trusted by entrepreneurs from 150+ countries',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ...testimonials.map((testimonial) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    testimonial['comment']!,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    testimonial['name']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    testimonial['country']!,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
