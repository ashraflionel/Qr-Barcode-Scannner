import 'package:flutter/material.dart';
import 'package:qrsample/pages/generateqrcode.dart';
import 'package:qrsample/pages/scanqqrcode.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SizedBox(
        width:500,
        height: 500,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Display Image:
         const Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU")),

         //First Button:
         // ignore: deprecated_member_use
         FlatButton(
           onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Scan()));
           },
           child: const Text("Scan Qr Code",
           style: TextStyle(fontSize: 15,color: Colors.black),),
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
           side: const BorderSide(color: Colors.blue)),
         ),
         const SizedBox(height: 10),
         // ignore: deprecated_member_use
         FlatButton(
           onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const GenerateQR()));
           },
           child: const Text("Generate QR Code",style: TextStyle(color: Colors.blue),),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
           side: const BorderSide(color: Colors.blue)),
         ),
         
        ],
        ),
      ),
      
    );
  }
}