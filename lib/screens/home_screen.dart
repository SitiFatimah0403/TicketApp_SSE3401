import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/styles/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
                        Text(
                          "Good Morning",
                          style: AppStyle.headLineStyle2
                        ),
                        const SizedBox(height: 5), //to create space between 2 lines

                        Text(
                          "Book Tickets",
                          style: AppStyle.headLineStyle1
                        ),
                      ],
                    ),
                    Container(
                      width: 50, 
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/pngwing.com.png"))
                      ),
                      

                      ),//adding image
                  ],
                ),
                Row(
                  //apply style to the row widgets :
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [Text("Search Icon"), Text("Empty Space")],
                ),
              ],
            ),
          ),
        ],
      ), //Make it scrollable effects
    );
  }
}
