import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/screens/view_tickets.dart';
import 'package:ticketbooking/utils/app_info_list.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/layout_builder.dart';
import 'package:ticketbooking/widgets/ticket_tabs.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            Text("Tickets",
            style: Styles.headLineStyle1,
            ),
            const Gap(20),
            AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: ViewTickets(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(height: 1,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "Passenger",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                          firstText: "07*******8",
                          secondText: "Telephone",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                      ),
                    ],
                  ),
                  Gap(20),
                  AppLayoutBuilder(sections: 15,isColor: false,width: 5,),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "38237323",
                        secondText: "Number of E-Ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "R2BFS5",
                        secondText: "Booking code",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(20),
                  AppLayoutBuilder(sections: 15,isColor: false,width: 5,),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.add_card),
                              Gap(5),
                              Text("**** 3532",
                                style: Styles.headLineStyle3,
                              ),
                            ],
                          ),
                          Text("Payment method",
                            style: Styles.headLineStyle4,
                          ),
                        ],
                      ),
                      // AppColumnLayout(
                      //   firstText: "**** 4356",
                      //   secondText: "Payment method",
                      //   alignment: CrossAxisAlignment.start,
                      //   isColor: false,
                      // ),
                      AppColumnLayout(
                        firstText: "\$1.98",
                        secondText: "Price",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1,),
            // Barcode
            Container(

              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                  ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    data: "Marvelous Dx",
                    barcode: Barcode.code128(),
                    color: Styles.textColor,
                    drawText: false,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: ViewTickets(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
          Positioned(
            left: 30,
            top: 290,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 30,
            top: 290,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
      ]
      ),
    );
  }
}
