import 'package:flutter/material.dart';
import 'package:traveler/pages/singleItem.dart';

class HotelsWidget extends StatelessWidget{

  List img = [
    'Titanic Hotel',
    'Rif Sapanca',
    'Hillside',
    'Bodrum',
    'Cave Hotel',
    'Liberty Hotel',
  ];

  @override
  Widget build(BuildContext context){
    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150/ 195),
      children: [
        for (int i=0; i<img.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey[50],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white70,
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => singleItemPage(img[i])));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/${img[i]}.jpg",
                      width: 150, height: 165,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.location_on,color: Colors.black54,size: 20),
                      Text(
                        img[i],
                        style:const TextStyle(
                            color: Colors.black54,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite,color: Colors.red[100],size: 22),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}