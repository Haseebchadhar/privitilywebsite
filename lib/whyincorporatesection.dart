import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyIncorporateSection extends StatelessWidget {
  const WhyIncorporateSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 800;

    return Container(
      width: double.infinity,
      color: const Color(0xFFE8F6FF), // outer light‑blue background
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 40 : 80,
        horizontal: isMobile ? 16 : 64,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Headline with highlight
          RichText(
            text: TextSpan(
              text: 'Why Incorporate In ',
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 28 : 36,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
              children: [
                TextSpan(
                  text: 'The US',
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 28 : 36,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF6366F1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: isMobile ? 24 : 48),

          // Desktop: Row of equal‑width cards, unconstrained height
          if (!isMobile)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: _BenefitCard(
                    icon: Icons.verified,
                    title: 'Trust',
                    description:
                    'Forming a company in the US is viewed as more trustworthy by financial service providers, like Stripe, PayPal and banks due to the nation’s established business infrastructure and stringent regulatory environment.',
                  ),
                ),
                SizedBox(width: 32),
                Expanded(
                  child: _BenefitCard(
                    icon: Icons.shield_outlined,
                    title: 'Protection',
                    description:
                    'A US-based company provides a legal separation between a business and its owners, known as limited liability protection. This means that in the event of lawsuits or debts, personal assets of the owners are generally protected.',
                  ),
                ),
                SizedBox(width: 32),
                Expanded(
                  child: _BenefitCard(
                    icon: Icons.workspace_premium_outlined,
                    title: 'Prestige',
                    description:
                    'A US company can lend prestige and credibility to a business. The US is often seen as a leader in innovation and entrepreneurship, and having a US-based company can enhance the reputation of a business both domestically and internationally.',
                  ),
                ),
              ],
            )
          // Mobile: stack in a Column
          else
            Column(
              children: const [
                _BenefitCard(
                  icon: Icons.verified,
                  title: 'Trust',
                  description:
                  'Forming a company in the US is viewed as more trustworthy by financial service providers, like Stripe, PayPal and banks due to the nation’s established business infrastructure and stringent regulatory environment.',
                ),
                SizedBox(height: 16),
                _BenefitCard(
                  icon: Icons.shield_outlined,
                  title: 'Protection',
                  description:
                  'A US-based company provides a legal separation between a business and its owners, known as limited liability protection. This means that in the event of lawsuits or debts, personal assets of the owners are generally protected.',
                ),
                SizedBox(height: 16),
                _BenefitCard(
                  icon: Icons.workspace_premium_outlined,
                  title: 'Prestige',
                  description:
                  'A US company can lend prestige and credibility to a business. The US is often seen as a leader in innovation and entrepreneurship, and having a US-based company can enhance the reputation of a business both domestically and internationally.',
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class _BenefitCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _BenefitCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Let the card size itself to its content
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon in colored box
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 28, color: Colors.blue.shade700),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 14,
              height: 1.5,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
