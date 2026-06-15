import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../utils/responsive_helper.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      width: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: 80,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: isMobile
              ? Column(
                  children: [
                    _buildContent(context),
                    const SizedBox(height: 30),
                    _buildHighlights(),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: _buildContent(context),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      flex: 2,
                      child: _buildHighlights(),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "ABOUT ME",
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),

        const SizedBox(height: 15),

        Text(
          "Flutter Developer with Enterprise Application Experience",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),

        const SizedBox(height: 25),

        Text(
          "I am a Flutter Developer with 3+ years of experience building Android and iOS applications using Flutter and Dart.",
          style: Theme.of(context).textTheme.bodyLarge,
        ),

        const SizedBox(height: 15),

        Text(
          "I specialize in developing enterprise-level mobile applications including Gate Management Systems, GPS Attendance Tracking, Vehicle Management Systems, Production Monitoring Dashboards, HRMS Modules, and Business Analytics Solutions.",
          style: Theme.of(context).textTheme.bodyLarge,
        ),

        const SizedBox(height: 15),

        Text(
          "My expertise includes Flutter, REST API Integration, Firebase, Provider State Management, GPS Tracking, Syncfusion Charts, SQLite, Push Notifications, Image & Video Upload, and Responsive UI Development.",
          style: Theme.of(context).textTheme.bodyLarge,
        ),

        const SizedBox(height: 15),

        Text(
          "I am passionate about building scalable, high-performance applications that solve real-world business problems and improve operational efficiency.",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  Widget _buildHighlights() {
    return Column(
      children: [
        _infoCard(
          icon: Icons.work_outline,
          title: "3+ Years",
          subtitle: "Flutter Experience",
        ),

        const SizedBox(height: 16),

        _infoCard(
          icon: Icons.mobile_friendly,
          title: "8+ Projects",
          subtitle: "Enterprise Applications",
        ),

        const SizedBox(height: 16),

        _infoCard(
          icon: Icons.code,
          title: "Flutter & Dart",
          subtitle: "Cross Platform Development",
        ),

        const SizedBox(height: 16),

        _infoCard(
          icon: Icons.location_on,
          title: "Chennai",
          subtitle: "Tamil Nadu, India",
        ),
      ],
    );
  }

  Widget _infoCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.withOpacity(.2),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.primary.withOpacity(.15),
            child: Icon(
              icon,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}