import 'package:flutter/material.dart';
import 'package:upi_payment_qrcode_generator/upi_payment_qrcode_generator.dart';

final upiDetails = UPIDetails(upiID: "UPI ID", payeeName: "Payee Name", currencyCode: 'USD');

void main() {
  runApp(const Payments());
}

/// Creates The UPI Payment QRCode
class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _MyPaymentsState();
}

class _MyPaymentsState extends State<Payments> {
  final upiDetails = UPIDetails(
      upiID: "9167877725@paytm",
      payeeName: "Payee Name Here",
      amount: 1,
      transactionNote: "Hello World");
  final upiDetailsWithoutAmount = UPIDetails(
      upiID: "9167877725@paytm",
      payeeName: "Agnel Selvan",
      transactionNote: "Hello World");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('UPI Payment QRCode Generator'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("UPI Payment QRCode without Amount",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              UPIPaymentQRCode(
                upiDetails: upiDetailsWithoutAmount,
                size: 200,
                embeddedImagePath: 'assets/images/img_newlogo1.png',
                embeddedImageSize: const Size(60, 60),
              ),
              Text(
                "Scan QR to Pay",
                style: TextStyle(color: Colors.grey[600], letterSpacing: 1.2),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("UPI Payment QRCode with Amount",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              UPIPaymentQRCode(
                upiDetails: upiDetails,
                size: 200,
                upiQRErrorCorrectLevel: UPIQRErrorCorrectLevel.low,
              ),
              Text(
                "Scan QR to Pay",
                style: TextStyle(color: Colors.grey[600], letterSpacing: 1.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}