import 'package:flutter/material.dart';
import 'package:iot_thai_moneyshere_project/views/money_input_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {

  @override

  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MoneyInputUI(),
          ),
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/money.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Text(
              'แชร์เงินกันเถอะ',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.035,
                color: Colors.white
              ),
            ),
            Text(
              'Create by Mint SAU',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.02,
                color: Colors.white
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
                ),
                CircularProgressIndicator(
                  color: Colors.white,
                ),
          ],
        ),
      ),
    );
  }
}