import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:booking_ticket_ui/utils/widgets/app_icon_text.dart';
import 'package:booking_ticket_ui/utils/widgets/ticket_tabs.dart';
import 'package:booking_ticket_ui/utils/widgets/up_coming_flights.dart';
import 'package:booking_ticket_ui/utils/widgets/upcoming_flights.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColros,
      body: ListView(
          padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(20),
            horizontal: AppLayout.getwidth(20),
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  'what are\nYou Looking For ?',
                  style: Styles.headlineStyle1.copyWith(
                    fontSize: AppLayout.getwidth(35),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                const TicketTabbs(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
                Gap(
                  AppLayout.getHeight(25),
                ),
                const AppIconTEXT(
                  icon: Icons.flight_takeoff_rounded,
                  text: "Departure",
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                const AppIconTEXT(
                  icon: Icons.flight_takeoff_rounded,
                  text: "Arrival",
                ),
                Gap(
                  AppLayout.getHeight(25),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getwidth(15),
                      vertical: AppLayout.getHeight(18)),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      ' Find Tickets',
                      style: Styles.textStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Gap(
                  AppLayout.getHeight(40),
                ),
                const DoubleText(
                    bigText: 'Upcoming Flights', smallText: 'View All'),
                Gap(
                  AppLayout.getHeight(15),
                ),
                const UpcomingFlights(),
              ],
            ),
          ]),
    );
  }
}
/*  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ToggleButtons(
                        selectedColor: Colors.grey,
                        borderRadius: BorderRadius.circular(21),
                        children: [
                          Text(
                            'Airline Tickets',
                          ),
                          Text('Hotels'),
                        ],
                        isSelected: selections,
                        onPressed: (index) {
                          setState(() {
                            for (var i = 0; i < selections.length; i++) {
                              i == index;
                              setState(() {});
                              selections[i] = i == index;
                            }
                          });
                        },
                      )
                    ], */