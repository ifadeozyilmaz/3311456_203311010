import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
              padding: const EdgeInsets.only(left: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                          },
                        child: const Icon(Icons.arrow_back, size: 30, color: Colors.white),
                      ),
                    ]
                ),
              ),
                const Center(
                  child: Text("Noticifications",style: TextStyle(color: Colors.white,fontSize: 20),),
                )
            ]
          ),
        ),
    );
  }
}
