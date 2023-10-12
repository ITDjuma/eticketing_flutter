import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/screens/hotels_screen.dart';
import 'package:ticketbooking/screens/view_tickets.dart';
import 'package:ticketbooking/utils/app_info_list.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/reusable_texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      // appBar: AppBar(
      //   title: const Center(
      //       child: Text("Home")
      //   ),
      // ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning!",
                        style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text("Book your Tickets.",
                        style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/tickets.png"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search",style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                const Gap(40),
                const AppReusableTexts(bigText: "Upcoming Departures", smallText: "View all")
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("Upcoming Departures.",
                //     style: Styles.headLineStyle2),
                //     InkWell(
                //       onTap: (){
                //
                //       },
                //       child: Text("View all",
                //         style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children:ticketList.map((n) => ViewTickets(ticket: n)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("Hotels",
                //         style: Styles.headLineStyle2),
                //     InkWell(
                //       onTap: (){
                //
                //       },
                //       child: Text("View all",
                //         style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                //       ),
                //     ),
                //   ],
                // ),
                AppReusableTexts(bigText: "Hotels", smallText: "View all"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
                children:hotelList.map((n) => HotelScreen(hotel: n)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
