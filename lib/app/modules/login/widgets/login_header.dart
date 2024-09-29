import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
class AppLoginHeader extends StatelessWidget {
  const AppLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Welcome", style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: AppSizes.sm),
        Text('Please login your account with email and password', style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
