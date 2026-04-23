import 'package:finpay_bank/screens/widgets/exchange_widgets.dart';
import 'package:flutter/material.dart';

class ExchengeRatePage extends StatelessWidget {
  const ExchengeRatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Exchange rate"),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:16, right: 20),
                      child: Text(
                        "Country",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.grey),
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 10),
                    Text(
                      "Buy",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.grey),
                    ),
                    SizedBox(width: 26),
                    Text(
                      "Sell        ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.grey),
                    ),
                  ],
                ),
                //---------------------------------------------
                ExchangeRateWidgets(
                  flagName: "Vietnam",
                  buy: "1.403",
                  sell: "1.746",
                  image: "assets/flag/2.png",
                ),
                ExchangeRateWidgets(
                  flagName: "Korea",
                  buy: "3.704",
                  sell: "5.151",
                  image: "assets/flag/3.png",
                ),
                ExchangeRateWidgets(
                  flagName: "China",
                  buy: "1.725",
                  sell: "2.234",
                  image: "assets/flag/5.png",
                ),
                ExchangeRateWidgets(
                  flagName: "Portuguese",
                  buy: "1.403",
                  sell: "1.746",
                  image: "assets/flag/6.png",
                ),
                ExchangeRateWidgets(
                  flagName: "French",
                  buy: "23.45",
                  sell: "34.56",
                  image: "assets/flag/9.png",
                ),
                ExchangeRateWidgets(
                  flagName: "Nicaragua",
                  buy: "263.1",
                  sell: "300.3",
                  image: "assets/flag/10.png",
                ),
                ExchangeRateWidgets(
                  flagName: "Korea",
                  buy: "3.704",
                  sell: "5.151",
                  image: "assets/flag/3.png",
                ),
                ExchangeRateWidgets(
                  flagName: "China",
                  buy: "1.725",
                  sell: "2.234",
                  image: "assets/flag/5.png",
                ),
                ExchangeRateWidgets(
                  flagName: "Korea",
                  buy: "3.454",
                  sell: "4.312",
                  image: "assets/flag/3.png",
                ),
                ExchangeRateWidgets(
                  flagName: "Portuguese",
                  buy: "1.403",
                  sell: "1.746",
                  image: "assets/flag/6.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
