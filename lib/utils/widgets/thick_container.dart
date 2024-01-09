import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({super.key, this.isColors});
  final bool? isColors;
  @override
  Widget build(BuildContext context) {
    return Container(
      // give it space from inside
      padding: EdgeInsets.all(AppLayout.getHeight(3)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
        border: Border.all(
            width: AppLayout.getHeight(2.5),
            color: isColors == null ? Colors.white : const Color(0xff8accf7)),
      ),
    );
  }
}
