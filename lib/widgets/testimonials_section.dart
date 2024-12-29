import 'package:flutter/material.dart';
import 'package:CyTech_Austraia_Dev/styles.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> testimonials = [
      {
        "name": "John Doe",
        "text":
            "This course helped me build a solid foundation in web development!",
        "avatar": "#", // Example image URL
      },
      {
        "name": "Jane Smith",
        "text": "The Laravel section was incredibly detailed and practical.",
        "avatar": "#", // Example image URL
      },
      {
        "name": "Sam Lee",
        "text":
            "I loved the hands-on projects that made learning fun and easy!",
        "avatar": "#", // Example image URL
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Section Title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SelectableText(
              "What Our Learners Say",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF001668),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          // Section sub-Title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SelectableText(
              "学習者の声を聞いてみましょう。",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          // Horizontal List of Testimonials
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: testimonials.map((testimonial) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: _buildTestimonialCard(
                    name: testimonial["name"]!,
                    text: testimonial["text"]!,
                    avatar: testimonial["avatar"]!,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  // Helper Function to Build Testimonial Cards
  Widget _buildTestimonialCard({
    required String name,
    required String text,
    required String avatar,
  }) {
    return Container(
      width: 300, // Fixed width for each card
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar and Name
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(avatar),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF001668),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          // Testimonial Text
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
