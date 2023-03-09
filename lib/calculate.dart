import 'dart:math';
import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  const Calculate({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Calculate> createState() => calculate();
}

class calculate extends State<Calculate> {
  final carPriceController = TextEditingController(); //ราคารถ
  final downPaymentController = TextEditingController(); //เงินดาวน์
  final interestController = TextEditingController(); //ดอกเบี้ยที่จ่าย
  final installmentPeriodController =
      TextEditingController(); //จำนวนปีในการผ่อน
  final discountController = TextEditingController(); //ส่วนลด
  final percentdownPaymentController = TextEditingController(); //เงินดาวน์%

  double monthlyPayment = 0;
  double difference = 0;
  double interestt = 0;
  double downpaymentamountt = 0;

  void _calculateLoanAmount() {
    final carPrice = int.tryParse(carPriceController.text) ?? 0; //ราคารถ
    final downPayment =
        int.tryParse(downPaymentController.text) ?? 0; //เงินดาวน์
    final interest =
        int.tryParse(interestController.text) ?? 0; //ดอกเบี้ยที่จ่าย
    final installmentPeriod =
        int.tryParse(installmentPeriodController.text) ?? 0; //จำนวนปีในการผ่อน
    final discount = int.tryParse(discountController.text) ?? 0; //ส่วนลด
    final percentdown =
        int.tryParse(percentdownPaymentController.text) ?? 0; //เงินดาวน์%
    final actualDiscount =
        discount ~/ percentdown; // หารด้วย 10 เพื่อรับส่วนลดตามจริง
    final remainingDownPayment =
        downPayment - actualDiscount; //หาเงินดาวน์ที่เหลือ
    final loanAmount =
        (carPrice - remainingDownPayment - discount); //หายอดไฟแนนซ์
    final interestPaid = (loanAmount * interest) /
        installmentPeriod; //หาดอกเบี้ยทั้งหมดที่ต้องการ
    final monthlyPayment =
        (loanAmount / (installmentPeriod * 12)); //หาค่างวดในแต่ละเดือน
    final discountt = discount / percentdown; //หาส่วนลด
    final discounttt = remainingDownPayment; //หาส่วนลด
    setState(() {
      difference = loanAmount.toDouble();
      interestt = monthlyPayment.toDouble();
      downpaymentamountt = discounttt.toDouble(); //จำนวนเงินดาวน์
    });
  }

  @override
  void dispose() {
    carPriceController.dispose();
    downPaymentController.dispose();
    interestController.dispose();
    installmentPeriodController.dispose();
    discountController.dispose();
    percentdownPaymentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATE'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: carPriceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'ราคาของรถยนต์',
              ),
            ),
            TextFormField(
              controller: downPaymentController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'จำนวนเงินดาวน์',
              ),
            ),
            TextFormField(
              controller: percentdownPaymentController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'จำนวนเงินดาวน์(%)',
              ),
            ),
            TextFormField(
              controller: interestController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'ดอกเบี้ยที่ได้รับ',
              ),
            ),
            TextFormField(
              controller: installmentPeriodController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'จำนวนปีที่ผ่อน',
              ),
            ),
            TextFormField(
              controller: discountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'ส่วนลด',
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'ยอดจัดไฟแนนซ์: ${difference.toStringAsFixed(2)} บาท',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 175, 76, 76)),
            ),
            const SizedBox(height: 16),
            Text(
              'เงินดาวน์: ${downpaymentamountt.toStringAsFixed(2)} บาท',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 147, 76, 175)),
            ),
            const SizedBox(height: 16),
            Text(
              'ค่างวดต่อเดือน: ${interestt.toStringAsFixed(2)} บาท',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _calculateLoanAmount,
              child: Text('คำนวณ'),
            ),
          ],
        ),
      ),
    );
  }
}
