import 'package:finpay_bank/screens/auth/change_password_page.dart';
import 'package:finpay_bank/screens/widgets/sign.dart';
import 'package:flutter/material.dart';

class Forgot2PasswordPage extends StatelessWidget {
  const Forgot2PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 3), // pastga soya
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      "Type a code ",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 26),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CustomInput(hint: "Enter text"),
                        ),

                        const SizedBox(width: 10),

                        Expanded(
                          flex: 1,
                          child: PrimaryButton(
                            text: "Resend",
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "We texted you a code to verify your phone number (+84) 0398829xxx",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "This code will expired 10 minutes after this message. If you don't get a message.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 26),
                    PrimaryButton(
                      text: "Send",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChangePasswordPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChangePasswordPage(),
                    ),
                  );
                },
                child: Text(
                  "Change your phone number?",
                  style: TextStyle(color: Color.fromRGBO(54, 41, 183, 1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
