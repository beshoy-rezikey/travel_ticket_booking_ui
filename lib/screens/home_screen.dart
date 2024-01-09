import 'package:booking_ticket_ui/screens/hotel_screen.dart';
import 'package:booking_ticket_ui/utils/widgets/ticket_view.dart';
import 'package:booking_ticket_ui/utils/app_info_list.dart';
import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:booking_ticket_ui/utils/widgets/search_bar.dart';
import 'package:booking_ticket_ui/utils/widgets/up_coming_flights.dart';
import 'package:booking_ticket_ui/utils/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Styles.bgColros,
      body: ListView(
        children: [
          const Gap(40),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getwidth(30),
              vertical: AppLayout.getHeight(15),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Welcome(),
                Gap(25),
                SerachBar(),
                Gap(40),
                DoubleText(bigText: 'Up ComingFlights', smallText: 'View all'),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(ticket: ticket))
                  .toList(),
            ),
          ),
          const Gap(15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: DoubleText(bigText: 'Hotels', smallText: 'View All'),
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList
                  .map((singleHotel) => HoteLscreen(hotel: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
