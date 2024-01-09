import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  const AppLayoutBuilder(
      {super.key, this.isColor, required this.section, this.width = 3});
  final bool? isColor;
  final int section;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        direction: Axis.horizontal,
        children: List.generate(
          (constraints.constrainWidth() / section).floor(),
          (index) => SizedBox(
            width: width,
            height: AppLayout.getHeight(1),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Colors.grey.shade300),
            ),
          ),
        ),
      ),
    );
  }
}
