import 'package:finpay_bank/screens/auth/sign_in_page.dart';
import 'package:finpay_bank/screens/widgets/sign.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ SizedBox(height: 20),
            Image.asset(
              "assets/images/sign_up1.png",
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            SizedBox(height: 20),
            Text(
              "Change password successfully!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(54, 41, 183, 1),
              ),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              "You have successfully changed your password\nPlease use the new password when signing in.",
              
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            PrimaryButton(
              text: "Ok",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
