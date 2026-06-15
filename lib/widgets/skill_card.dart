import 'package:flutter/material.dart';
import 'package:yuvaraj_portfolio_app/constants/app_colors.dart';
import '../models/portfolio_models.dart';

class SkillCard extends StatelessWidget {
  final SkillModel skill;

  const SkillCard({
    super.key,
    required this.skill,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.withOpacity(.15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //   skill.icon,
          //   style: const TextStyle(fontSize: 36),
          // ),
          Text(
            skill.icon,
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 12),
          Text(
            skill.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            skill.category,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: skill.level / 5,
            backgroundColor: Colors.grey.shade300,
            valueColor: const AlwaysStoppedAnimation(
              AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
