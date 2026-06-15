// lib/models/portfolio_data.dart
import 'portfolio_models.dart';

class PortfolioData {
  // ─── SKILLS ─────────────────────────────────────────────────────────────────
  static const List<SkillModel> skills = [
    // Core
    SkillModel(name: 'Flutter', category: 'Core', icon: '🦋', level: 5),
    SkillModel(name: 'Dart', category: 'Core', icon: '🎯', level: 5),
    SkillModel(name: 'REST API', category: 'Integration', icon: '🔗', level: 5),
    SkillModel(name: 'Firebase', category: 'Backend', icon: '🔥', level: 4),
    SkillModel(name: 'Provider', category: 'State Mgmt', icon: '⚙️', level: 5),
    SkillModel(name: 'GPS Tracking', category: 'Device', icon: '📍', level: 4),
    SkillModel(name: 'SQLite', category: 'Database', icon: '🗄️', level: 4),
    SkillModel(name: 'Push Notifications', category: 'Device', icon: '🔔', level: 4),
    SkillModel(name: 'Syncfusion Charts', category: 'UI', icon: '📊', level: 4),
    SkillModel(name: 'Image Upload', category: 'Media', icon: '🖼️', level: 5),
    SkillModel(name: 'Video Upload', category: 'Media', icon: '🎬', level: 4),
    SkillModel(name: 'Responsive UI', category: 'UI', icon: '📱', level: 5),
    SkillModel(name: 'Material Design', category: 'UI', icon: '🎨', level: 5),
    SkillModel(name: 'Android Studio', category: 'Tools', icon: '🤖', level: 5),
    SkillModel(name: 'VS Code', category: 'Tools', icon: '💻', level: 5),
    SkillModel(name: 'Postman', category: 'Tools', icon: '🛸', level: 4),
    SkillModel(name: 'Figma', category: 'Design', icon: '✏️', level: 3),
    SkillModel(name: 'Git', category: 'Tools', icon: '🌿', level: 4),
  ];

  // ─── EXPERIENCE ─────────────────────────────────────────────────────────────
  static const List<ExperienceModel> experiences = [
    ExperienceModel(
      company: 'Apache Footwear Pvt Ltd',
      role: 'Software Developer',
      duration: 'Dec 2023 – Present',
      location: 'Tada, India',
      isCurrent: true,
      description:
          'Building enterprise-grade Flutter applications for one of India\'s leading footwear manufacturers. Delivered 6 production modules used daily across the organization.',
      projects: [
        'Gate Management System (GMS)',
        'Car Conveyance Management',
        'Business Information & Production Tracking',
        'Join & Exit Management Module',
        'Employee Attendance & Punch Management',
        'Application Update & Version Management',
      ],
      highlights: [
        'Reduced manpower requirements by 40% through gate automation',
        'Built real-time vehicle tracking across 6 organizational gates',
        'GPS-based attendance system with device-level verification',
        'Automated APK version management across local & public networks',
        'Production dashboards using Syncfusion Flutter Charts',
      ],
    ),
    ExperienceModel(
      company: 'Bluee Eagle Software Solutions',
      role: 'Junior Flutter Developer',
      duration: 'Sep 2022 – May 2023',
      location: 'Chennai, India',
      isCurrent: false,
      description:
          'Gained foundational experience building consumer-facing Flutter applications, integrating Firebase authentication and REST APIs.',
      projects: [
        'HealthZ E-Commerce App',
        'Auto Analysis App',
      ],
      highlights: [
        'Developed UI for virtual healthcare consultation platform',
        'Integrated REST APIs for product listings and order processing',
        'Implemented Firebase Authentication for secure user login',
        'Built vehicle insights with cost estimation and analytics',
      ],
    ),
  ];

  // ─── PROJECTS ───────────────────────────────────────────────────────────────
  static const List<ProjectModel> projects = [
    ProjectModel(
      title: 'Gate Management System',
      description:
          'A real-time vehicle gate management app tracking entry/exit operations across 6 organizational gates with inspection workflows and media documentation.',
      company: 'Apache Footwear Pvt Ltd',
      technologies: ['Flutter', 'Dart', 'REST API', 'Provider', 'Image Upload', 'Video Upload'],
      keyFeatures: [
        'Real-time vehicle tracking across 6 gates',
        'Inspection checkpoint approval workflows',
        'Image & video documentation for security',
        'Live status updates and dashboards',
      ],
      businessImpact: 'Reduced manpower requirements by 40% through process automation',
      gradientStart: '6C63FF',
      gradientEnd: '00D9FF',
      iconEmoji: '🚗',
    ),
    ProjectModel(
      title: 'Car Conveyance Management',
      description:
          'Employee transportation and vehicle booking management with multi-level approval workflows, driver assignment, and trip analytics.',
      company: 'Apache Footwear Pvt Ltd',
      technologies: ['Flutter', 'Dart', 'Syncfusion Charts', 'REST API', 'Provider'],
      keyFeatures: [
        'Multi-level approval workflows',
        'Vehicle allocation & driver assignment',
        'Trip monitoring & km tracking',
        'Transport reporting dashboards',
      ],
      businessImpact: 'Streamlined employee transport logistics for 500+ employees',
      gradientStart: '00D9FF',
      gradientEnd: '00FFA3',
      iconEmoji: '🚌',
    ),
    ProjectModel(
      title: 'Production Tracking Dashboard',
      description:
          'Business information and production monitoring system with order tracking, manpower analytics, and line-wise production dashboards.',
      company: 'Apache Footwear Pvt Ltd',
      technologies: ['Flutter', 'Dart', 'Syncfusion Charts', 'REST API', 'Provider', 'SQLite'],
      keyFeatures: [
        'Real-time production target tracking',
        'Manpower monitoring & analytics',
        'Line-wise production dashboards',
        'Graphical reporting with Syncfusion Charts',
      ],
      businessImpact: 'Reduced manual reporting effort through automated production workflows',
      gradientStart: 'FF6584',
      gradientEnd: 'FF9F43',
      iconEmoji: '🏭',
    ),
    ProjectModel(
      title: 'Join & Exit Management',
      description:
          'Employee onboarding and resignation tracking module with analytical reporting, active employee statistics, and centralized HR workflows.',
      company: 'Apache Footwear Pvt Ltd',
      technologies: ['Flutter', 'Dart', 'REST API', 'Provider'],
      keyFeatures: [
        'Employee onboarding tracking',
        'Resignation management workflows',
        'Active employee statistics',
        'Date-based reporting & search filters',
      ],
      businessImpact: 'Improved HR reporting visibility and reduced manual tracking',
      gradientStart: 'A29BFE',
      gradientEnd: 'FD79A8',
      iconEmoji: '👥',
    ),
    ProjectModel(
      title: 'GPS Attendance System',
      description:
          'Location-based Punch In/Out attendance tracking with GPS validation, device-level verification, and real-time attendance management.',
      company: 'Apache Footwear Pvt Ltd',
      technologies: ['Flutter', 'Dart', 'GPS', 'Location Services', 'REST API', 'Provider'],
      keyFeatures: [
        'GPS-based Punch In / Punch Out',
        'Location validation workflows',
        'Device-level attendance verification',
        'Automatic refresh & exception handling',
      ],
      businessImpact: 'Eliminated buddy-punching and improved attendance accuracy',
      gradientStart: '00B894',
      gradientEnd: '00CEC9',
      iconEmoji: '📍',
    ),
    ProjectModel(
      title: 'App Version Management',
      description:
          'Automatic APK version validation and update management with forced update handling and seamless installation for local and public networks.',
      company: 'Apache Footwear Pvt Ltd',
      technologies: ['Flutter', 'Dart', 'REST API', 'Provider'],
      keyFeatures: [
        'Automatic version validation',
        'Forced update handling',
        'Dynamic APK download for networks',
        'Seamless APK installation',
      ],
      businessImpact: 'Reduced manual APK distribution dependency significantly',
      gradientStart: 'FDCB6E',
      gradientEnd: 'E17055',
      iconEmoji: '🔄',
    ),
    ProjectModel(
      title: 'HealthZ E-Commerce App',
      description:
          'Online healthcare consultation and e-commerce app providing virtual medical services, product listings, and order processing.',
      company: 'Bluee Eagle Software Solutions',
      technologies: ['Flutter', 'Dart', 'REST API', 'Firebase'],
      keyFeatures: [
        'Virtual healthcare consultation UI',
        'Product listings & inventory',
        'Customer accounts & order processing',
        'REST API integration',
      ],
      businessImpact: 'Enabled remote healthcare access for patients across India',
      gradientStart: '74B9FF',
      gradientEnd: '0984E3',
      iconEmoji: '🏥',
    ),
    ProjectModel(
      title: 'Auto Analysis App',
      description:
          'Vehicle insights app providing detailed cost estimation, average vehicle age analysis, and secure user authentication.',
      company: 'Bluee Eagle Software Solutions',
      technologies: ['Flutter', 'Dart', 'Firebase Auth', 'REST API'],
      keyFeatures: [
        'Detailed vehicle insights',
        'Cost estimation analytics',
        'Average vehicle age calculation',
        'Firebase Authentication',
      ],
      businessImpact: 'Helped users make informed vehicle purchase decisions',
      gradientStart: '6C5CE7',
      gradientEnd: 'A29BFE',
      iconEmoji: '🚘',
    ),
  ];

  // ─── SERVICES ────────────────────────────────────────────────────────────────
  static const List<ServiceModel> services = [
    ServiceModel(
      title: 'Flutter App Development',
      description: 'End-to-end cross-platform mobile app development with clean architecture and scalable code.',
      icon: '🦋',
      features: ['Android & iOS', 'Clean Architecture', 'Provider State Mgmt', 'Custom UI Widgets'],
    ),
    ServiceModel(
      title: 'REST API Integration',
      description: 'Seamless integration with backend REST APIs, authentication flows, and data synchronization.',
      icon: '🔗',
      features: ['API Integration', 'Auth Flows', 'Real-time Updates', 'Error Handling'],
    ),
    ServiceModel(
      title: 'Firebase Integration',
      description: 'Firebase Authentication, Firestore, Cloud Storage, and Push Notifications integration.',
      icon: '🔥',
      features: ['Authentication', 'Cloud Firestore', 'Push Notifications', 'Analytics'],
    ),
    ServiceModel(
      title: 'GPS & Location Services',
      description: 'Location-based features including GPS tracking, geofencing, and map integrations.',
      icon: '📍',
      features: ['GPS Tracking', 'Geofencing', 'Location Validation', 'Maps Integration'],
    ),
    ServiceModel(
      title: 'Dashboard Development',
      description: 'Data-rich analytical dashboards with Syncfusion Charts, real-time data, and reporting.',
      icon: '📊',
      features: ['Syncfusion Charts', 'Real-time Data', 'Reporting', 'Export Features'],
    ),
    ServiceModel(
      title: 'Enterprise Mobile Apps',
      description: 'Scalable enterprise solutions for workforce management, operations, and logistics.',
      icon: '🏢',
      features: ['Scalable Architecture', 'Offline Support', 'Role-based Access', 'Audit Trails'],
    ),
  ];

  // ─── STATS ──────────────────────────────────────────────────────────────────
  static const List<StatModel> stats = [
    StatModel(value: '3+', label: 'Years Experience', icon: '⚡'),
    StatModel(value: '8+', label: 'Enterprise Projects', icon: '🚀'),
    StatModel(value: '2', label: 'Platforms Supported', icon: '📱'),
    StatModel(value: '40%', label: 'Efficiency Gained', icon: '📈'),
  ];
}