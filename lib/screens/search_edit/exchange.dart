// import 'package:flutter/material.dart';

// class ExchangePage extends StatelessWidget {
//   const ExchangePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Exchange rate"),
//         backgroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(14.0),
//         child: Column(
//           children: [
//             Center(
//               child: Image.asset(
//                 "assets/images/exchenge.png",
//                 width: double.infinity,
//                 height: 212,
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(height: 200,width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:finpay_bank/screens/widgets/exchenge_inputs_widget.dart';
import 'package:finpay_bank/screens/widgets/sign_page.dart';
import 'package:flutter/material.dart';

class ExchangePage extends StatefulWidget {
  final String currency;
  const ExchangePage({super.key, required this.currency});
  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  String fromCurrency = "USD";
  String toCurrency = "KRM";
  List<String> currencies = ["VND", "HK\$", "USD", "NT\$", "J\$"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA),
      appBar: AppBar(
        title: const Text("Exchange"),
        backgroundColor: Colors.transparent,
      
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset("assets/images/exchenge.png", height: 212),
        
              const SizedBox(height: 20),
        
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    input(
                      title: "From",
                      controller: fromController,
                      currency: fromCurrency,
                      isFrom: true,
                      onChanged: () {},
                      onCurrencyTap: () {},
                    ),
        
                    const SizedBox(height: 16),
        
                    Center(child: Image.asset("assets/images/tepa_past.png")),
        
                    const SizedBox(height: 10),
        
                    input(
                      title: "To",
                      controller: toController,
                      currency: toCurrency,
                      isFrom: false,
                      onChanged: () {},
                      onCurrencyTap: () {},
                    ),
        
                    const SizedBox(height: 20),
        
                    SizedBox(height: 20),
                    PrimaryButton(text: "Exchange", onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
