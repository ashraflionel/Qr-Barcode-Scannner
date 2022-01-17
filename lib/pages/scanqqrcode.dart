import 'package:barcode_scan/barcode_scan.dart';

import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  //we need to change the state of the string as the scanner scan the qr code
  String qrResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Scan QR Code",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purple,
                Colors.red,
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Result",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              qrResult,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18.0, color: Colors.black45),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              // ignore: deprecated_member_use
              child: FlatButton(
                padding: const EdgeInsets.all(10.0),
                child: const Text("Scan QR Code"),
                onPressed: () async {
                  //ScanOptions options = const ScanOptions();
                  var scaning =await BarcodeScanner.scan();
                  //var barcode = await BarcodeScanner.scan(options: options);
                  setState(() {
                    qrResult = scaning.toString();
                   // qrResult = barcode.toString();
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: const BorderSide(color: Colors.black, width: 1.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
