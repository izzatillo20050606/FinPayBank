import 'package:finpay_bank/screens/widgets/home_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List dashItems = [
    HomeWidgetsPage(text: "Account\nand Card,", svgAsset: "assets/icons/1.svg"),
    HomeWidgetsPage(text: "Transfer", svgAsset: "assets/icons/2.svg"),
    HomeWidgetsPage(text: "Withdraw", svgAsset: "assets/icons/3.svg"),
    HomeWidgetsPage(text: "Mobile\nprepaid", svgAsset: "assets/icons/4.svg"),
    HomeWidgetsPage(text: "Pay the\nbill", svgAsset: "assets/icons/5.svg"),
    HomeWidgetsPage(text: "Save\nonline", svgAsset: "assets/icons/6.svg"),
    HomeWidgetsPage(text: "Credit\ncard", svgAsset: "assets/icons/7.svg"),
    HomeWidgetsPage(text: "Transaction\nreport", svgAsset: "assets/icons/8.svg"),
    HomeWidgetsPage(text: "Beneficiary", svgAsset: "assets/icons/9.svg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          // header
          Container(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            height: MediaQuery.of(context).size.height * 0.22,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(54, 41, 183, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person.png"),
                  radius: 22,
                ),
                SizedBox(width: 10),
                Text(
                  "Hi, Push Puttichai",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Spacer(),
                Stack(
                  children: [
                    Icon(Icons.notifications, color: Colors.white, size: 26),
                    Positioned(
                      right: 0,
                      bottom: 9,
                      child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),

            child: Column(
              children: [
                // bank card
                Container(
                  padding: EdgeInsets.all(24),
                  height: 204,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: AlignmentGeometry.bottomCenter,
                      end: AlignmentGeometry.centerEnd,
                      colors: [
                        Color.fromRGBO(30, 22, 113, 1),
                        Color.fromARGB(255, 8, 105, 184),
                        Color.fromRGBO(78, 180, 255, 1),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Smith",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      Text(
                        " Amazon Platinium",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        " 4756  •••• ••••   9018",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " \$3.469.52",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "VISA",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 6.0, 
                    crossAxisSpacing: 8.0,
                  ),
                  itemCount: dashItems.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return dashItems[index];
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
