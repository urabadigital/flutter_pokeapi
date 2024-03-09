import 'package:flutter/material.dart';
import 'package:evolvers/ui/home/widget/shimmer.dart';

class ShimmerDescription extends StatelessWidget {
  const ShimmerDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerShimmer(
          height: 20,
          width: (width * 0.7),
        ),
        const SizedBox(height: 10),
        const ContainerShimmer(height: 20),
        const SizedBox(height: 10),
        ContainerShimmer(
          height: 20,
          width: (width * 0.75),
        ),
        const SizedBox(height: 10),
        ContainerShimmer(
          height: 20,
          width: (width * 0.5),
        ),
      ],
    );
  }
}
