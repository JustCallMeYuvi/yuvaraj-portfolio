import 'package:flutter/material.dart';

import '../models/portfolio_models.dart';
import '../utils/responsive_helper.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  Color _hexToColor(String hex) {
    return Color(int.parse("FF$hex", radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    final startColor = _hexToColor(project.gradientStart);
    final endColor = _hexToColor(project.gradientEnd);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            startColor.withOpacity(.15),
            endColor.withOpacity(.15),
          ],
        ),
        border: Border.all(
          color: Colors.grey.withOpacity(.15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 14 : 20),
        child: Column(
           mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.iconEmoji,
              style: TextStyle(
                fontSize: isMobile ? 28 : 40,
              ),
            ),

            SizedBox(height: isMobile ? 10 : 16),

            Text(
              project.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isMobile ? 18 : 22,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              project.company,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
                fontSize: isMobile ? 12 : 14,
              ),
            ),

            SizedBox(height: isMobile ? 10 : 16),

            Text(
              project.description,
              maxLines: isMobile ? 3 : 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: isMobile ? 13 : 14,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              "Technologies",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: project.technologies
                  .take(isMobile ? 4 : 8)
                  .map(
                    (tech) => Chip(
                      label: Text(
                        tech,
                        style: const TextStyle(fontSize: 11),
                      ),
                    ),
                  )
                  .toList(),
            ),

            if (!isMobile) ...[
              const SizedBox(height: 16),

              const Text(
                "Key Features",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              ...project.keyFeatures.take(3).map(
                    (feature) => Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 16,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              feature,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            ],

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primary
                    .withOpacity(.08),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.trending_up,
                    size: 18,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      project.businessImpact,
                      maxLines: isMobile ? 2 : 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: isMobile ? 12 : 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}