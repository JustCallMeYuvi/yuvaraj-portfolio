import 'package:flutter/material.dart';

import '../models/portfolio_data.dart';
import '../utils/responsive_helper.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: ResponsiveHelper.sectionPadding(context),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1400,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PROJECTS",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                "Featured Work",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),

              const SizedBox(height: 20),

              Text(
                "Enterprise applications and mobile solutions developed using Flutter.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 40),

              LayoutBuilder(
                builder: (context, constraints) {
                  double cardWidth;

                  if (ResponsiveHelper.isMobile(context)) {
                    cardWidth = constraints.maxWidth;
                  } else if (ResponsiveHelper.isTablet(context)) {
                    cardWidth =
                        (constraints.maxWidth - 24) / 2;
                  } else {
                    cardWidth =
                        (constraints.maxWidth - 48) / 3;
                  }

                  return Wrap(
                    spacing: 24,
                    runSpacing: 24,
                    children:
                        PortfolioData.projects.map((project) {
                      return SizedBox(
                        width: cardWidth,
                        child: ProjectCard(
                          project: project,
                        ),
                      );
                    }).toList(),
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