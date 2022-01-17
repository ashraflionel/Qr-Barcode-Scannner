import 'package:flutter/material.dart';

import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatefulWidget {
  const GenerateQR({Key? key}) : super(key: key);

@override
_GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {

String qrData="https://github.com/ChinmayMunje";
final qrdataFeed = TextEditingController();
@override
Widget build(BuildContext context) {
	return Scaffold(
	//Appbar having title
	appBar: AppBar(
		title: const Center(child: Text("Generate QR Code")),
	),
	body: Container(
		padding: const EdgeInsets.all(20),
		child: SingleChildScrollView(
		
		//Scroll view given to Column
		child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			crossAxisAlignment: CrossAxisAlignment.stretch,
			children: [
			QrImage(data: qrData),
			const SizedBox(height: 20),
			const Text("Generate QR Code",style: TextStyle(fontSize: 20),),
			
			//TextField for input link
			const TextField(
				decoration: InputDecoration(
				hintText: "Enter your link here..."
				),
			),
			Padding(
				padding: const EdgeInsets.all(8.0),
				//Button for generating QR code
				// ignore: deprecated_member_use
				child: FlatButton(
					onPressed: () async {
					//a little validation for the textfield
					if (qrdataFeed.text.isEmpty) {	
						setState(() {
						qrData = "";
						});
					} else {
						setState(() {
						qrData = qrdataFeed.text;
						});
					}
					},
				//Title given on Button
					child: Text("Generate QR Code",style: TextStyle(color: Colors.indigo[900],),),
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.circular(20),
					side: const BorderSide(color: Colors.blue),
				),
				),
			),
			],
		),
		),
	),
	);
}
}
