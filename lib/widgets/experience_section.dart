import 'package:flutter/material.dart';

import '../models/portfolio_data.dart';
import '../models/portfolio_models.dart';
import '../utils/responsive_helper.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                "EXPERIENCE",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                "Professional Journey",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),

              const SizedBox(height: 20),

              Text(
                "My experience developing enterprise mobile applications using Flutter.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 40),

              ...PortfolioData.experiences.map(
                (experience) => Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: ExperienceCard(
                    experience: experience,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final ExperienceModel experience;

  const ExperienceCard({
    super.key,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.withOpacity(.15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.primary.withOpacity(.15),
                child: Icon(
                  Icons.work,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.role,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      experience.company,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              if (experience.isCurrent)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Current",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              const Icon(Icons.calendar_month, size: 18),
              const SizedBox(width: 8),
              Text(experience.duration),
            ],
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              const Icon(Icons.location_on, size: 18),
              const SizedBox(width: 8),
              Text(experience.location),
            ],
          ),

          const SizedBox(height: 20),

          Text(
            experience.description,
            style: Theme.of(context).textTheme.bodyLarge,
          ),

          const SizedBox(height: 25),

          const Text(
            "Projects",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 12),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: experience.projects.map((project) {
              return Chip(
                label: Text(project),
              );
            }).toList(),
          ),

          const SizedBox(height: 25),

          const Text(
            "Key Highlights",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 12),

          ...experience.highlights.map(
            (highlight) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 18,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(highlight),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}