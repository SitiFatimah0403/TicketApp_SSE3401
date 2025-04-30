import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/media.dart';
import 'package:ticket_app_223846/base/res/styles/app_style.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/app_double_text.dart';
import 'package:ticket_app_223846/screens/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              children: [
                Row(
                  //apply style to the row widgets :
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle2),
                        const SizedBox(
                          height: 5,
                        ), //to create space between 2 lines

                        Text("Book Tickets", style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ), //adding image
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  width: double.infinity, // or set a reasonable width like 200
                  height: 50,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 244, 246, 255),
                  ),
                  child: const Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color.fromARGB(255, 25, 8, 95),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View All',
                ),

                const SizedBox(height: 40),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TicketView(),
                      TicketView(),
                    ],
                  )),
                const SizedBox(height: 20),
                const AppDoubleText(
                  bigText: 'Upcoming hi',
                  smallText: 'View All',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ), //Make it scrollable effects
    );
  }
}
