import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/layout_builder.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key?key}):super (key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/tickets.png",
                    ),
                  ),
                ),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets",
                  style: Styles.headLineStyle1,
                  ),
                  Gap(3),
                  Text("Kigali",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Text("Edit",
                      style: Styles.textStyle.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Styles.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(10),
          /*
          Picture
           */
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 180,
                  width: 180,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 90),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/bean.jpg"
                      ),
                    ),
                  ),
                ),
              ),
              Gap(10),
              Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Rowan Atkinson",
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Gap(10),
          Divider(),
          Gap(10),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              Positioned(
                top: -45,
                right: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("You've got a new reward!",
                        style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Text("You've travelled 50 times",
                          style: Styles.headLineStyle3.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 16,
                          ),
                        ),
                        Text("with us this year.",
                          style: Styles.headLineStyle3.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(25),
          Text("Accumulated Kilometers:",
          style: Styles.headLineStyle2,
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.bgColor,
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
                Text("350 KM",
                  style: Styles.textStyle.copyWith(fontSize: 45,fontWeight: FontWeight.w600),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kilometers accrued",
                    style: Styles.headLineStyle3.copyWith(color: Colors.grey.shade500),
                    ),
                    Text("24 May 2023",
                      style: Styles.headLineStyle3.copyWith(color: Colors.grey.shade500),
                    ),
                  ],
                ),
                Gap(10),
                Divider(),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        firstText: "98",
                        secondText: "Kilometers",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "RAG 453R",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "76",
                      secondText: "Kilometers",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "RAG 253S",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "176",
                      secondText: "Kilometers",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "RAG 123V",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(15),
                Text("How to get more kilometers",
                style: Styles.headLineStyle3.copyWith(color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
