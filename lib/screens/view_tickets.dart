import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/layout_builder.dart';
import 'package:ticketbooking/widgets/thick_container.dart';

class ViewTickets extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const ViewTickets({Key?key, required this.ticket, this.isColor}): super(key:key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: GetPlatform.isAndroid==true?163:169,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Colors.teal:Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"],
                      style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      ),
                      const Spacer(),
                      ThickContainer(isColor: isColor,),
                      Expanded(child: Stack(
                        children: [
                          /*
                          App Layout Builder for Dots
                          */
                          // SizedBox(
                          //   height: 24,
                          //   /*
                          //   Reusable App Layout Builder
                          //    */
                          //   child: AppLayoutBuilder(sections: 6,),
                          //   /*
                          //   Reusable App Layout Builder
                          //    */
                          //   // child: LayoutBuilder(
                          //   //   builder: (BuildContext context, BoxConstraints constraints){
                          //   //     return Flex(
                          //   //       direction: Axis.horizontal,
                          //   //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   //       mainAxisSize: MainAxisSize.max,
                          //   //       children: List.generate((constraints.constrainWidth()/6).floor(),
                          //   //             (index) => const SizedBox(
                          //   //           width: 3,
                          //   //           height: 1,
                          //   //           child: DecoratedBox(
                          //   //             decoration: BoxDecoration(
                          //   //               color: Colors.white,
                          //   //             ),
                          //   //           ),
                          //   //         ),
                          //   //       ),
                          //   //     );
                          //   //   },
                          //   // ),
                          // ),
                          /*
                          App Layout Builder for Dots
                          */
                          Center(
                              child: Icon(Icons.compare_arrows_outlined, color: isColor==null? Colors.white: Colors.teal),
                          ),
                        ],
                      ),
                      ),
                      ThickContainer(isColor: isColor),
                      const Spacer(),
                      Text(ticket["to"]["code"],
                        style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    children: [
                      SizedBox(
                        // width: 100,
                        child: Text(ticket["from"]["name"],
                        style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white30): Styles.headLineStyle4,
                        ),
                      ),
                      const Spacer(),
                      Text(ticket["journey_time"],
                        style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white70): Styles.headLineStyle3,
                      ),
                      const Spacer(),
                      Text(ticket["to"]["name"],
                        style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white30): Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor==null?Colors.teal:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                    ),
                    ),
                  ),
                  Expanded(child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          ),
                        ),
                        ),
                      );
                    },
                  ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  //   width: 10,
                  //   child: DecoratedBox(decoration: BoxDecoration(
                  //     color: isColor==null?Colors.teal:Colors.white,
                  //     // borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                  //   ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 15,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor==null?Colors.teal:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0), bottomRight: Radius.circular(isColor==null?21:0),
                ),
              ),
              padding: const EdgeInsets.only(left: 16,top: 10, right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: "${ticket["date"]}",
                          secondText: "Date",
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text("${ticket["date"]}",
                      //       style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text("Date",
                      //       style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white30): Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                      AppColumnLayout(
                        firstText: "${ticket["departure_time"]}",
                        secondText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text("${ticket["departure_time"]}",
                      //       style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text("Departure time",
                      //       style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white30): Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                      AppColumnLayout(
                        firstText: "${ticket["passengers"]}",
                        secondText: "Seats",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text("${ticket["passengers"]}",
                      //       style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text("Seats",
                      //       style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white30): Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
