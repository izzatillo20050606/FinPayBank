import 'package:finpay_bank/screens/search_edit/Interest_page.dart';
import 'package:finpay_bank/screens/search_edit/exchange.dart';
import 'package:finpay_bank/screens/search_edit/exchange_rate_page.dart';
import 'package:finpay_bank/screens/search_edit/language_page.dart';
import 'package:finpay_bank/screens/widgets/search_widgets.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Search"), backgroundColor: Colors.white),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SearchWidgets(
              ontap: () => InterestPage(),
              title: 'Branch',
              subtitle: 'Search for branch',
              image: "assets/images/searchpage1.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InterestPage()),
                );
              },
              title: 'Interest rate',
              subtitle: 'Search for interest rate',
              image: "assets/images/searchpage2.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExchengeRatePage()),
                );
              },
              title: 'Exchange rate',
              subtitle: 'Search for exchange rate',
              image: "assets/images/searchpage3.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>ExchangePage(currency: '',)),
                );
              }, 
              title: 'Exchange',
              subtitle: 'Exchange amount of money',
              image: "assets/images/searchpage4.png",
            ), SearchWidgets(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LanguagePage()),
                );
              },
              title: 'Language',
              subtitle: 'Search for branch and language',
              image: "assets/images/searchpage1.png",
            ),
          ],
        ),
      ),  
    );
  }
}
