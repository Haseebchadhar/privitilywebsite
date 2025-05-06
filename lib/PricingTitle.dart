import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransparentPricingSection extends StatefulWidget {
  const TransparentPricingSection({super.key});

  @override
  _TransparentPricingSectionState createState() =>
      _TransparentPricingSectionState();
}

class _TransparentPricingSectionState
    extends State<TransparentPricingSection> {
  String selectedCountry = "US"; // Default country

  final Map<String, Map<String, dynamic>> countryPricing = {
    "US": {
      "basicPrice": 229,
      "premiumPrice": 397,
      "basicDesc": "If you're operating with a low budget.",
      "premiumDesc": "Enhanced, fast, and premium service.",
      "basicFeatures": [
        "US Company Formation",
        "US Address with Mail forwarding",
        "Registered agent service",
        "US business Stripe account consultation",
        "EIN letter",
        "Incorporation documents",
        "Introduction to a professional accountant",
        "Email support only",
      ],
      "premiumFeatures": [
        "Everything in Basic, plus:",
        "Order priority",
        "FREE Tax consultation",
        "Chat and phone support",
        "FREE US Phone number",
        "Dedicated account manager",
        "FREE Business website",
        "FREE business email inbox",
        "FREE .com domain",
      ]
    },
    "UK": {
      "basicPrice": 199,
      "premiumPrice": 499,
      "basicDesc": "Affordable and simple for UK businesses.",
      "premiumDesc": "All premium services for faster registration.",
      "basicFeatures": [
        "Business registration",
        "UK business address",
        "Business consultation",
        "Certificate of Incorporation",
        "Company documents",
        "Email support",
      ],
      "premiumFeatures": [
        "Everything in Basic, plus:",
        "Priority support",
        "Registration as a UK Corporation",
        "Dedicated business consultant",
        "Phone and chat support",
        "UK bank account setup",
      ]
    },
    "Canada": {
      "basicPrice": 247,
      "premiumPrice": 599,
      "basicDesc": "Ideal for Canadian business setup.",
      "premiumDesc": "Full-service, high-priority registration.",
      "basicFeatures": [
        "Sole Proprietorship registration",
        "Canadian business address",
        "Business consultation",
        "Certificate of Incorporation",
        "Company documents",
        "Email support",
      ],
      "premiumFeatures": [
        "Everything in Basic, plus:",
        "Priority processing",
        "Registration as a Corporation",
        "Phone and chat support",
        "Canadian phone number",
        "Dedicated account manager",
        "Free business email inbox",
      ]
    }
  };

  @override
  Widget build(BuildContext context) {
    final pricing = countryPricing[selectedCountry]!;

    return Container(
      color: const Color(0xFFF5F5F5),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Center(
            child: Text(
              "Transparent Pricing",
              style: GoogleFonts.poppins(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF2F2F2F),
                height: 1.2,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Country Selector
          Center(
            child: Text(
              "Where do you want to Incorporate?",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Scrollable tabs
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CountryTab(
                  country: "In the US",
                  countryFlag: '🇺🇸',
                  isSelected: selectedCountry == "US",
                  onTap: () => setState(() => selectedCountry = "US"),
                ),
                const SizedBox(width: 12),
                CountryTab(
                  country: "In the UK",
                  countryFlag: '🇬🇧',
                  isSelected: selectedCountry == "UK",
                  onTap: () => setState(() => selectedCountry = "UK"),
                ),
                const SizedBox(width: 12),
                CountryTab(
                  country: "In Canada",
                  countryFlag: '🇨🇦',
                  isSelected: selectedCountry == "Canada",
                  onTap: () => setState(() => selectedCountry = "Canada"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),

          // Responsive layout for pricing cards
          LayoutBuilder(
            builder: (context, constraints) {
              // Narrow: stack vertically
              if (constraints.maxWidth < 600) {
                return Column(
                  children: [
                    PricingPlanCard(
                      title: "Basic",
                      price: pricing["basicPrice"],
                      description: pricing["basicDesc"],
                      features: List<String>.from(
                          pricing["basicFeatures"] as List),
                      buttonColor: const Color(0xFF004D40),
                      buttonText: "Go Basic",
                    ),
                    const SizedBox(height: 24),
                    PricingPlanCard(
                      title: "Premium",
                      price: pricing["premiumPrice"],
                      description: pricing["premiumDesc"],
                      features: List<String>.from(
                          pricing["premiumFeatures"] as List),
                      buttonColor: const Color(0xFF004D40),
                      buttonText: "Go Premium",
                    ),
                  ],
                );
              }
              // Wide: side by side
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: PricingPlanCard(
                        title: "Basic",
                        price: pricing["basicPrice"],
                        description: pricing["basicDesc"],
                        features:
                        List<String>.from(pricing["basicFeatures"] as List),
                        buttonColor: const Color(0xFF004D40),
                        buttonText: "Go Basic",
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: PricingPlanCard(
                        title: "Premium",
                        price: pricing["premiumPrice"],
                        description: pricing["premiumDesc"],
                        features: List<String>.from(
                            pricing["premiumFeatures"] as List),
                        buttonColor: const Color(0xFF004D40),
                        buttonText: "Go Premium",
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CountryTab extends StatelessWidget {
  final String country;
  final String countryFlag;
  final bool isSelected;
  final VoidCallback onTap;

  const CountryTab({
    super.key,
    required this.country,
    required this.countryFlag,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
        const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color:
          isSelected ? const Color(0xFFE4E4E4) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? const Color(0xFF0C3C8E)
                : Colors.grey.shade300,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Text(countryFlag, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 10),
            Text(
              country,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: isSelected
                    ? const Color(0xFF0C3C8E)
                    : Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PricingPlanCard extends StatelessWidget {
  final String title;
  final int price;
  final String description;
  final List<String> features;
  final Color buttonColor;
  final String buttonText;

  const PricingPlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.description,
    required this.features,
    required this.buttonColor,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: title == "Basic" ? Colors.white : const Color(0xFF5C6BC0),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: title == "Basic"
                    ? const Color(0xFF2F2F2F)
                    : Colors.white,
              )),
          const SizedBox(height: 10),
          Text("\$$price/yr",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: title == "Basic"
                    ? const Color(0xFF5C6BC0)
                    : Colors.white,
              )),
          const SizedBox(height: 15),
          Text(description,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: title == "Basic"
                    ? Colors.grey.shade600
                    : Colors.white,
              )),
          const SizedBox(height: 15),
          ...features.map((feature) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Icon(Icons.check_circle,
                    size: 18,
                    color: title == "Basic"
                        ? Colors.green
                        : Colors.white),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(feature,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: title == "Basic"
                            ? Colors.grey.shade600
                            : Colors.white,
                      )),
                ),
              ],
            ),
          )),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    vertical: 14, horizontal: 32),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Text(buttonText,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }
}
