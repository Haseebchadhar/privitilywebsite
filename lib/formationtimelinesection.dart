import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FormationTimelineSection extends StatelessWidget {
  const FormationTimelineSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // adjust for smaller screens if you need
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 24 : 64,
            vertical: isMobile ? 48 : 96,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5A00E0),
                Color(0xFF3200A2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT: headline + copy
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How much time to get your LLC?',
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 28 : 36,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: isMobile ? 16 : 24),
                    Text(
                      'At Privatily we count delivery time by business hours, not\n'
                          'by days or weeks like others do.\n\n'
                          'However, please be aware that these timelines are\n'
                          'applicable only if you opt for LLC registration in one of our\n'
                          'recommended US states.',
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 14 : 16,
                        height: 1.5,
                        color: Colors.white70,
                      ),
                    ),
                    Gap(100),
                    Image.asset(
                      'assets/images/11.png', height: 320,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(width: isMobile ? 16 : 48),
              // RIGHT: timeline cards
              Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    _TimelineCard(hours: '24h', label: 'LLC formation'),
                    SizedBox(height: 16),
                    _TimelineCard(hours: '24h', label: 'Company docs delivery'),
                    SizedBox(height: 16),
                    _TimelineCard(hours: '120h', label: 'EIN acquisition'),
                    SizedBox(height: 16),
                    _TimelineCard(hours: '165h', label: 'Avg. order delivery time'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TimelineCard extends StatelessWidget {
  final String hours;
  final String label;

  const _TimelineCard({
    Key? key,
    required this.hours,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            hours,
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

