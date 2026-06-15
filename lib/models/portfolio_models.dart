// lib/models/portfolio_models.dart

class SkillModel {
  final String name;
  final String category;
  final String icon;
  final int level; // 1-5

  const SkillModel({
    required this.name,
    required this.category,
    required this.icon,
    this.level = 4,
  });
}

class ExperienceModel {
  final String company;
  final String role;
  final String duration;
  final String location;
  final String description;
  final List<String> projects;
  final List<String> highlights;
  final bool isCurrent;

  const ExperienceModel({
    required this.company,
    required this.role,
    required this.duration,
    required this.location,
    required this.description,
    required this.projects,
    required this.highlights,
    this.isCurrent = false,
  });
}

class ProjectModel {
  final String title;
  final String description;
  final String company;
  final List<String> technologies;
  final List<String> keyFeatures;
  final String businessImpact;
  final String gradientStart;
  final String gradientEnd;
  final String iconEmoji;
  final String? githubUrl;
  final String? demoUrl;

  const ProjectModel({
    required this.title,
    required this.description,
    required this.company,
    required this.technologies,
    required this.keyFeatures,
    required this.businessImpact,
    required this.gradientStart,
    required this.gradientEnd,
    required this.iconEmoji,
    this.githubUrl,
    this.demoUrl,
  });
}

class ServiceModel {
  final String title;
  final String description;
  final String icon;
  final List<String> features;

  const ServiceModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.features,
  });
}

class StatModel {
  final String value;
  final String label;
  final String icon;

  const StatModel({
    required this.value,
    required this.label,
    required this.icon,
  });
}