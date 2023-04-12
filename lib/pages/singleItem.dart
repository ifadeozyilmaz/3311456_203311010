import 'package:flutter/material.dart';
import 'package:traveler/pages/favorites.dart';

class singleItemPage extends StatelessWidget {
  String img;
  singleItemPage(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back, size: 30, color: Colors.blueGrey),
                        ),
                        InkWell(
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoritesPage()));
                          },
                          child: Icon(Icons.favorite,size: 30,color: Colors.red[200]),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on,color: Colors.blueGrey,size: 30),
                      Text(img,style: TextStyle(color: Colors.blueGrey[300],fontSize: 30,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: Image.asset("assets/images/$img.jpg",
                      width:MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.5,
                      fit: BoxFit.cover,),
                  ),
                  Container(
                    height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50)
                  ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children:  [
                        Text("Destination Details",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                        const SizedBox(height: 10),
                        const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        ),
                        const SizedBox(height: 10),
                        MaterialButton(
                          onPressed: (){},
                          color: Colors.red[100],
                          height: 50,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20),
                           ),
                          child: Text("Book Now",
                          style:TextStyle(
                            color: Colors.blueGrey[800],
                          ) ,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
    );
  }
}
