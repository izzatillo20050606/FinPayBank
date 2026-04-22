import 'package:finpay_bank/screens/auth/change_password_page.dart';
import 'package:finpay_bank/screens/auth/forgot_password_page.dart';
import 'package:finpay_bank/screens/auth/sign_in_page.dart';
import 'package:finpay_bank/screens/auth/sign_up_page.dart';
import 'package:flutter/material.dart';

class Battomnavigator extends StatefulWidget {
  const Battomnavigator({super.key});

  @override
  State<Battomnavigator> createState() => _BattomnavigatorState();
}

class _BattomnavigatorState extends State<Battomnavigator> {
  int myIndex = 0;

  List<Widget> get myList => [
    ForgotPasswordPage(),
    ChangePasswordPage(),
    SignInPage(),
    SignUpPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: "File"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
    ;
  }
}
