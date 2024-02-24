import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/blocs/user_bloc.dart';
import 'package:test_app/presentation/view/home_screen.dart';
import 'package:test_app/presentation/view/profile_screen.dart';
import 'package:test_app/presentation/view/ticket_screen.dart';

import 'direct_screen.dart';
@RoutePage()
class CombainScreen extends StatefulWidget {
  const CombainScreen({super.key});

  @override
  State<CombainScreen> createState() => _CombainScreenState();
}

class _CombainScreenState extends State<CombainScreen> {

  final List<Widget> list=[const HomeScreen(),const DirectScreen(),const TicketScreen(),const ProfileScreen()];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index){
setState(() {
  currentIndex=index;
  if(index==0){
    BlocProvider.of<UserBloc>(context).add(HomeEvent());
  }
});

        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.flight_takeoff),label: 'Directory'),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),


        ],
      ),
    );
  }
}
