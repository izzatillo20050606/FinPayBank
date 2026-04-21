import 'package:finpay_bank/screens/auth/forgot_password_page.dart';
import 'package:finpay_bank/screens/auth/sign_up_page.dart';
import 'package:finpay_bank/screens/widgets/sign.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            height: MediaQuery.of(context).size.height * 0.22,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Color.fromRGBO(54, 41, 183, 1),Color.fromRGBO(54, 41, 183, 1)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: const [
                Icon(Icons.arrow_back, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(54, 41, 183, 1)
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Hello there, sign in to continue",
                      style: TextStyle(color: Colors.grey),
                    ),

                    const SizedBox(height: 30),

                    Center(
                      child: Image.asset(
                        "assets/images/sign_up1.png",
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                    ),

                    const SizedBox(height: 30),

                    CustomInput(hint: "Text Input"),
                    const SizedBox(height: 15),
                    CustomInput(
                      hint: "Password",
                      keyboardType: TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 10),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPasswordPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(color: Color.fromRGBO(54, 41, 183, 1)),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Align(
                      alignment: AlignmentGeometry.center,
                      child: PrimaryButton(
                        text: "Sign In",
                        onPressed: () {},
                        //  onPressed: () {
                        //     Navigator.push(
                        //        context,
                        //       MaterialPageRoute(
                        //         builder: (context) => SignUpPage(),
                        //       ),
                        //     );
                        //   },
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Center(
                      child: Icon(
                        Icons.fingerprint,
                        size: 50,
                        color: Colors.deepPurple,
                      ),
                    ),

                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color.fromRGBO(54, 41, 183, 1),
                              fontSize: 20,
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
