import 'package:flutter/material.dart';
import 'package:traveler/pages/favorites.dart';
import 'package:traveler/pages/home.dart';
import 'package:traveler/pages/notifications.dart';
import 'package:traveler/pages/profile.dart';

class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child:const Icon(
                Icons.home, color: Colors.black38, size: 30),
          ), InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoritesPage()));
            },
            child:  const Icon(
                Icons.favorite, color: Colors.black38, size: 30),
          ), InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsPage()));
            },
            child: const Icon(
                Icons.notifications, color: Colors.black38, size: 30),
          ), InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            child:const Icon(
                Icons.person, color: Colors.black38, size: 30),
          ),
        ],
      ),
    );
  }
}