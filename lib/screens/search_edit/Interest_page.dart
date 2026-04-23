import 'package:finpay_bank/screens/widgets/interest_widgets.dart';
import 'package:flutter/material.dart';

class InterestPage extends StatelessWidget {
  const InterestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.white,
        title: Text(
          "Interest rate",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Interest kind",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(width: 10),
                  Text(
                    "Deposit",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "Rate",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),

              //-------------------------------------------------------------
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "1m",
                rate: "4.50%",
              ),
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "2m",
                rate: "5.50%",
              ),
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "1m",
                rate: "4.50%",
              ),
              InterestWidgets(
                interestKind: "Corporate customers",
                deposit: "6m",
                rate: "2.50%",
              ),
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "1m",
                rate: "4.50%",
              ),
              InterestWidgets(
                interestKind: "Corporate customers",
                deposit: "8m",
                rate: "6.50%",
              ),
              InterestWidgets(
                interestKind: "Corporate customers",
                deposit: "8m",
                rate: "6.50%",
              ),
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "1m",
                rate: "4.50%",
              ),
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "1m",
                rate: "4.50%",
              ),
              InterestWidgets(
                interestKind: "Corporate customers",
                deposit: "7m",
                rate: "6.80%",
              ),
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "1m",
                rate: "4.50%",
              ),
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "12m",
                rate: "5.90%",
              ),
              InterestWidgets(
                interestKind: "Individual customers",
                deposit: "1m",
                rate: "4.50%",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
