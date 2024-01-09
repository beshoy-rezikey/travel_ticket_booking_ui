import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class SerachBar extends StatelessWidget {
  const SerachBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          color: const Color(0xFFF4F6FD),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const Icon(FluentSystemIcons.ic_fluent_search_regular,
              color: Color(0xFFBFC205)),
          Text('Search', style: Styles.headlineStyle4),
        ],
      ),
    );
  }
}
