import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/styles/app_style.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/app_coloum_text_layout.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/big_circle.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/big_dot.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/text_style_forth.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // Top blue section
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // First row: airport codes with icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextStyleThird(text: "NYC"),
                      const Spacer(),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      const Spacer(),
                      const TextStyleThird(text: "LDN"),
                    ],
                  ),
                  const SizedBox(height: 3),

                  // Second row: city names and flight time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextStyleForth(text: "New-York"),
                      TextStyleForth(text: "8H 30M    "),
                      TextStyleForth(text: "London"),
                    ],
                  ),
                ],
              ),
            ),

            // Middle orange separator with dashed line
            Container(
              margin: const EdgeInsets.only(right: 18),
              height: 10,
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  const BigCircle(isRight: false),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 10)),
                  const BigCircle(isRight: true),
                ],
              ),
            ),

            // Bottom orange section
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // Labeled columns for each field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColoumTextLayout(topText: "1 MAY",bottomText: "Date", alignment: CrossAxisAlignment.start,),
                      AppColoumTextLayout(topText: "08:00 AM",bottomText: "Departure Time",alignment: CrossAxisAlignment.center,),
                      AppColoumTextLayout(topText: "23",bottomText: "Number",alignment: CrossAxisAlignment.end,),
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
