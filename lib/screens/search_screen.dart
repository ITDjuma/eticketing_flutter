import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/icon_text_widget.dart';
import 'package:ticketbooking/widgets/reusable_texts.dart';
import 'package:ticketbooking/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text("What are\nYou looking for?",
          style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          AppTicketTabs(firstTab: 'Bus Tickets', secondTab: 'Hotels'),
          const Gap(25),
          const AppIconText(icon: Icons.departure_board, text: "Departure"),
          const Gap(15),
          const AppIconText(icon: Icons.local_parking, text: "Arrivals"),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.find_in_page, color: Colors.white,
                ),
                const Gap(3),
                Text("Find Tickets", style: Styles.textStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  color: Colors.white,
                ),
                ),
              ],
            ),
          ),
          const Gap(25),
          const AppReusableTexts(bigText: "Upcoming Departures", smallText: "View all"),
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 404,
                width: size.width*0.42,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/picture.png"),
                        )
                      ),
                    ),
                    const Gap(10),
                    Text("20% discount for the early booking for this bus, Don't miss out for this chance. Go with us!",
                    style: Styles.headLineStyle3,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: 184,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount \nfor Survey",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,),
                            ),
                            const Gap(10),
                            Text("Take the survey about our services and get discount.",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -38,
                        top: -35,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: const Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    width: size.width*0.44,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text("Nous vous aimons.",
                        style: Styles.headLineStyle2.copyWith(color: Colors.white,
                        fontWeight: FontWeight.bold,),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(10),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "🥰",
                                style: TextStyle(fontSize: 90),
                            ),
                          ],
                        )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
