//Page to generate a QR code which contains data on the user reqesting funds, their userID and the transaction amount
//Currently hardcoded with an example userID and transaction amount

//The plan is for the user to input the amount and have their userID automatically included in the userID field when they request funds and
//generate a QRcode

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyQRCode extends StatelessWidget {
  final String userId;
  final double transactionAmount;

  MyQRCode({required this.userId, required this.transactionAmount});

  @override
  Widget build(BuildContext context) {
    String data =
        '{"user_id": "$userId", "transaction_amount": $transactionAmount}';
    return QrImage(
      data: data,
      version: QrVersions.auto,
      size: 200.0,
    );
  }
}

// Example usage of the MyQRCode widget with hardcoded recipient userID and transaction amount
class ExampleUsage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code"),
      ),
      body: Center(
        child: MyQRCode(
          //Just a filler UserID, should automatically be filled in when a user clicks a button to display their QR code
          userId: "123456",
          //A filler amount hardcoded here but this will be inputted by the user requesting funds
          transactionAmount: 50.0,
        ),
      ),
    );
  }
}
