import 'package:flutter/material.dart';
import 'package:toonflix/button.dart';
import 'package:toonflix/currency_card.dart';


void main() {
  runApp(App());  // runApp은 void
}

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home : Scaffold(
        backgroundColor: Color(0xff181818),  // color: Color.fromRGBO(255, 255, 255, 0.8),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text('Hey, Selena', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        ),
                    ),
                    Text('Welcome back', 
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize:18,
                        ),
                      ),
                  ],)
                ],
              ),
              SizedBox(
                height: 20
                ),
              Text('Total balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22, 
                ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: 'Transfer', bgColor: const Color(0xFFF1B33B), textcolor: Colors.black),
                    Button(text: 'Request', bgColor: Colors.black, textcolor: Colors.white),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                    ),),
                ],
                ),
                SizedBox(
                  height: 20,
                ),
                  Currencycard(
                    name: 'Euro', 
                    code: 'EUR', 
                    amount: '6,428', 
                    icon: Icons.euro_rounded,
                    isInverted: false,
                ),
                Transform.translate(
                  offset: Offset(0,-20),
                  child: Currencycard(
                    name: 'Bitcoin', 
                    code: 'BTC', 
                    amount: '9,785', 
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    ),
                ),
                Transform.translate(
                  offset: Offset(0,-40),
                  child: Currencycard(
                    name: 'Dollar', 
                    code: 'USD', 
                    amount: '428', 
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    ),
                ),
              ],
            ),
            ),
        ),
        ),
    );   // Material 구글, Cupertino ios, customize 라도 설정 필요 
  }

}
