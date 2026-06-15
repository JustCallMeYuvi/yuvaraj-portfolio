import 'package:flutter/material.dart';

import '../models/portfolio_data.dart';
import '../utils/responsive_helper.dart';
import 'skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final columns = ResponsiveHelper.skillGridColumns(context);

    return Container(
      width: double.infinity,
      padding: ResponsiveHelper.sectionPadding(context),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MY SKILLS",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Technologies & Tools",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              Text(
                "Technologies I use to build high-quality mobile applications.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 40),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: PortfolioData.skills.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  // childAspectRatio: 1.15,
                  childAspectRatio:
                      ResponsiveHelper.isMobile(context) ? 0.85 : 1.15,
                ),
                itemBuilder: (context, index) {
                  return SkillCard(
                    skill: PortfolioData.skills[index],
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
