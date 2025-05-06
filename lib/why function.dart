import 'package:flutter/material.dart';

class StatsAndWhySection extends StatelessWidget {
  const StatsAndWhySection({super.key});

  Widget _statItem(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 25, vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Stats Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _statItem('2300+', 'Clients'),
              _statItem('2800+', 'Companies formed'),
              _statItem('150+', 'Countries served'),
              _statItem('6+', 'Years of experience'),
            ],
          ),
          const SizedBox(height: 60),

          // Why Privatily Text with Image
          Flex(
            direction: isMobile ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Why Privatily?',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "We know how to take the complexity out of forming your company because we’ve been in your shoes. Privatily was born because we struggled ourselves—facing a complicated, lengthy process when trying to set up our own company in a supported country. Since 2019, we’ve been committed to providing unmatched expertise, affordable prices, and the fastest turnaround time to help entrepreneurs like you start your business journey smoothly and confidently.",
                      style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 40, height: 40),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/image3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
