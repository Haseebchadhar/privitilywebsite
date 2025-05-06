import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:privitilywebsite/navbar.dart';
import '../Business.dart';
import '../formationtimelinesection.dart';
import '../PricingTitle.dart';
import '../why function.dart'; // ← keeping only the correct one
import '../whyincorporatesection.dart'; // your WhyIncorporateSection widget

class HomeBannerSection extends StatelessWidget {
  const HomeBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1) Nav bar
            const Navbar(), // Assuming you intended to use a custom NavBar widget
            Gap(30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Form your company\nfrom anywhere',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 62,
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

                const Gap(60),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth < 768 ? 16 : 80,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(16),
                      const Gap(30),

                      // 3) Star rating
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 24),
                          Icon(Icons.star, color: Colors.orange, size: 24),
                          Icon(Icons.star, color: Colors.orange, size: 24),
                          Icon(Icons.star, color: Colors.orange, size: 24),
                          Icon(Icons.star_half, color: Colors.orange, size: 24),
                          SizedBox(width: 12),
                        ],
                      ),

                      const Gap(30),

                      // 4) Hero image
                      Image.asset(
                        'assets/images/2.jpg',
                        fit: BoxFit.cover,
                      ),

                      const Gap(30),

                      // 5) Stats & Why section
                      //const StatsAndWhySection(),

                      const Gap(30),

                      // 6) Formation timeline
                      //const FormationTimelineSection(),
                      // 7) Why incorporate
                      //const WhyIncorporateSection(),

                      // 8) Pricing section
                      //const TransparentPricingSection(),
                      //Business(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
