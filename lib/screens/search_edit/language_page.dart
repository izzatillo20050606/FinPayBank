import 'package:finpay_bank/screens/widgets/language_widgets.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Language"), backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              LanguageWidgets(flagName: "Vietnam", image: "assets/flag/2.png"),
              LanguageWidgets(flagName: "Korea", image: "assets/flag/3.png"),
              LanguageWidgets(flagName: "China", image: "assets/flag/5.png"),
              LanguageWidgets(flagName: "Portuguese", image: "assets/flag/6.png"),
              LanguageWidgets(flagName: "French", image: "assets/flag/9.png"),
              LanguageWidgets(flagName: "Nicaragua", image: "assets/flag/10.png"),
              LanguageWidgets(flagName: "Korea", image: "assets/flag/3.png"),
              LanguageWidgets(flagName: "China", image: "assets/flag/5.png"),
              LanguageWidgets(flagName: "Korea", image: "assets/flag/3.png"),
              LanguageWidgets(flagName: "Portuguese", image: "assets/flag/6.png"),
            ],
          ),
        ),
      ),
    );
  }
}
