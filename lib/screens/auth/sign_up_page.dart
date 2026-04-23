import 'package:finpay_bank/screens/widgets/sign_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
            child: const Row(
              children: [
                BackButton(color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome to us,",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(54, 41, 183, 1),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      "Create an account to continue",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),

                    const SizedBox(height: 10),
                    Center(
                      child: Image.asset(
                        "assets/images/sign_up2.png",
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                    ),
                    const SizedBox(height: 14),
                    CustomInput(hint: "Name"),
                    const SizedBox(height: 10),

                    CustomInput(
                      hint: "Text input",
                      keyboardType: TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 10),

                    CustomInput(hint: "Password"),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                        ),
                        Text(
                          "By creating an account you agree to our  Terms and Conditions",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    PrimaryButton(
                      text: "Sign Up",
                      disabled: !isChecked,
                      onPressed: () {
                       
                      },
                    ),
                    const SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Have an account?   ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Color.fromRGBO(54, 41, 183, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
