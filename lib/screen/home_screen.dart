import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_icon.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/signup_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  signInWithEmail() {
    print("Sign In");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Form(
        child: Column(
          children: [
            const Spacer(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Hello,ready to get started",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Please sign-in with your email and password",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: emailController,
              hintText: "Enter your email",
              obscureText: false,
              labelText: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: passwordController,
              hintText: "Enter your password",
              obscureText: true,
              labelText: "Password",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.bodySmall,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(onTap: signInWithEmail, hinText: 'Sign in'),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "Or continous with",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.bodySmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyIconButton(imagePath: 'assets/images/apple_icon.png'),
                SizedBox(
                  width: 10,
                ),
                MyIconButton(imagePath: 'assets/images/google_icon.png'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member ?",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Register Now",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue,
                      ),
                    )),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    ));
  }
}
