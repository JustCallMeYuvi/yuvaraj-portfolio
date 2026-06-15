import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

import '../utils/responsive_helper.dart';
import '../utils/url_launcher_helper.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 60 : 100,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0A0A0F),
            Color(0xFF1A1A2E),
            Color(0xFF0A0A0F),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: isMobile
              ? Column(
                  children: [
                    _profileImage(),
                    const SizedBox(height: 30),
                    _content(context),
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: _content(context),
                    ),
                    const SizedBox(width: 60),
                    Expanded(
                      flex: 2,
                      child: _profileImage(),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 14,
        //     vertical: 8,
        //   ),
        //   decoration: BoxDecoration(
        //     color: Colors.blue.withOpacity(.15),
        //     borderRadius: BorderRadius.circular(30),
        //   ),
        //   child: const Text(
        //     "🚀 Available For Flutter Projects",
        //     style: TextStyle(
        //       color: Colors.blueAccent,
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),
        // ),
        // const SizedBox(height: 25),
        Text(
          "Hi, I'm",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white70,
              ),
        ),
        const SizedBox(height: 10),
        const Text(
          AppStrings.name,
          style: TextStyle(
            fontSize: 58,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [
                Colors.blue,
                Colors.cyan,
              ],
            ).createShader(bounds);
          },
          child: const Text(
            "Flutter Developer",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          AppStrings.aboutText,
          style: TextStyle(
            color: Colors.white70,
            height: 1.7,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 30),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            _statCard("3+", "Years"),
            _statCard("8+", "Projects"),
            _statCard("Android", "& iOS"),
          ],
        ),
        const SizedBox(height: 35),
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                UrlLauncherHelper.launchURL(
                  AppStrings.linkedin,
                );
              },
              icon: const Icon(Icons.work),
              label: const Text("LinkedIn"),
            ),
            OutlinedButton.icon(
              onPressed: () {
                UrlLauncherHelper.launchEmail(
                  AppStrings.email,
                );
              },
              icon: const Icon(Icons.email),
              label: const Text("Contact Me"),
            ),
          ],
        ),
      ],
    );
  }

  Widget _profileImage() {
    return Center(
      child: Container(
        width: 280,
        height: 280,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.blueAccent,
            width: 4,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(.3),
              blurRadius: 40,
              spreadRadius: 10,
            ),
          ],
        ),
        // child: const CircleAvatar(
        //   backgroundColor: Color(0xFF1A1A2E),
        //   child: Icon(
        //     Icons.person,
        //     size: 120,
        //     color: Colors.white,
        //   ),
        // ),
        // child: ClipOval(
        //   child: Image.asset(
        //     'images/yuvi.jpeg',
        //     fit: BoxFit.cover,
        //     width: 280,
        //     height: 280,
        //   ),
        // ),
        child: ClipOval(
          child: Image.asset(
            'assets/images/yuvi.jpeg',
            fit: BoxFit.cover,
            width: 280,
            height: 280,
          ),
        ),
      ),
    );
  }

  Widget _statCard(String value, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white12,
        ),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Colors.cyanAccent,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
