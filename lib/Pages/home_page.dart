
import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c5bab),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         /*ClipRRect( // Give radius to border of image
           borderRadius: BorderRadius.circular(250.0),
           child: Image.asset("assets/images/business.png",width: 200,), // summarize to Image(image: AssetImage(""))
         ),*/
          const CircleAvatar( // anther way
            radius: 100,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/business.png"),
            ),
          ),
          const Text("Azza Emam",style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
          ),),
          const Text("FLUTTER DEVELOPER",style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold
          ),),
          const Divider(
            color: Colors.grey,
            indent: 40,
            endIndent: 40,
          ),
          Padding( // perform on child
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Icon(Icons.phone,
                     size: 30,
                      color:Color(0xff2c5bab) ,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text("(+20) 123456789",style: TextStyle(
                      fontSize: 20,
                        color:Color(0xff2c5bab)
                    ),),
                  ),
                ],
              ),
            ),
          ),
          //-----------------------------------------------------------------------
          // This widget better than container
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: Colors.white,
            child: const ListTile(
              leading:  Icon(Icons.mail,
                size: 30,
                color:Color(0xff2c5bab) ,
              ),
              title: Text("azzaemam123gamil.com",style: TextStyle(
                  fontSize: 20,
                  color:Color(0xff2c5bab)
              ),),
            ),
          ),
      ]
      )
    );
  }
}
