import 'package:aurora/app/ui/colors/colors.dart';
import 'package:flutter/material.dart';

class ColorDemoTile extends StatelessWidget {
  const ColorDemoTile({super.key, required this.color, required this.name});

  final Color color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: mocha.text),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
