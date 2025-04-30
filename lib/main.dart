import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/bottom_nav_bar.dart';

void main() {

  runApp(const MyApp());
}

//*******NOTES********

/*!!Every class extended from Stateless or Stateful = is a widget!!
//Every widget class must OVERRIDE BUILD METHOD 

//STATELESS : -doesn't have any state, dont have living condition (dead) 
              - tak boleh nak print benda pun
              -cannot use setState function
            
//STATEFUL : - Do have a state (alive)
             - boleh print
             -boleh guna setState ( we can see the changes )

//Scaffold : Hold everything together

              */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 153, 110, 227)),
      ),
      home: BottomNavBar(),
    );
  }
}


