import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../utils/responsive_helper.dart';
import '../utils/url_launcher_helper.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: ResponsiveHelper.sectionPadding(context),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            children: [
              Text(
                "CONTACT",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Let's Build Something Amazing Together",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 40),

              ListTile(
                leading: const Icon(Icons.email),
                title: const Text(AppStrings.email),
                onTap: () {
                  UrlLauncherHelper.launchEmail(
                    AppStrings.email,
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text(AppStrings.phone),
                onTap: () {
                  UrlLauncherHelper.launchPhone(
                    AppStrings.phone,
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.business),
                title: const Text("LinkedIn"),
                onTap: () {
                  UrlLauncherHelper.launchURL(
                    AppStrings.linkedin,
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.code),
                title: const Text("GitHub"),
                onTap: () {
                  UrlLauncherHelper.launchURL(
                    AppStrings.github,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}