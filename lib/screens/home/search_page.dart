import 'package:finpay_bank/screens/widgets/search_widgets.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Search"),backgroundColor: Colors.white,),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SearchWidgets(
              title: 'Branch',
              subtitle: 'Search for branch',
              image: "assets/images/searchpage1.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Interest rate',
              subtitle: 'Search for interest rate',
              image: "assets/images/searchpage2.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Exchange rate',
              subtitle: 'Search for exchange rate',
              image: "assets/images/searchpage3.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Exchange',
              subtitle: 'Exchange amount of money',
              image: "assets/images/searchpage4.png",
            ), SearchWidgets(
              title: 'Branch',
              subtitle: 'Search for branch',
              image: "assets/images/searchpage1.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Interest rate',
              subtitle: 'Search for interest rate',
              image: "assets/images/searchpage2.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Exchange rate',
              subtitle: 'Search for exchange rate',
              image: "assets/images/searchpage3.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Exchange',
              subtitle: 'Exchange amount of money',
              image: "assets/images/searchpage4.png",
            ), SearchWidgets(
              title: 'Branch',
              subtitle: 'Search for branch',
              image: "assets/images/searchpage1.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Interest rate',
              subtitle: 'Search for interest rate',
              image: "assets/images/searchpage2.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Exchange rate',
              subtitle: 'Search for exchange rate',
              image: "assets/images/searchpage3.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Exchange',
              subtitle: 'Exchange amount of money',
              image: "assets/images/searchpage4.png",
            ), SearchWidgets(
              title: 'Branch',
              subtitle: 'Search for branch',
              image: "assets/images/searchpage1.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Interest rate',
              subtitle: 'Search for interest rate',
              image: "assets/images/searchpage2.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Exchange rate',
              subtitle: 'Search for exchange rate',
              image: "assets/images/searchpage3.png",
            ),
            // SizedBox(height: 10),
            SearchWidgets(
              title: 'Exchange',
              subtitle: 'Exchange amount of money',
              image: "assets/images/searchpage4.png",
            ),
          ],
        ),
      ),
    );
  }
}
