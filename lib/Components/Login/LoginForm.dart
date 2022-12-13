import 'package:project_collagen/Screens/PrimaryScreen.dart';
import 'package:project_collagen/Screens/Forgot_Password/ForgotPassScreen.dart';
import 'package:project_collagen/Screens/Register/SignupScreen.dart';
import 'package:project_collagen/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {
  String? username;
  String? password;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          DefaultTextStyle.merge(
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Nama Pengguna"),
              ],
            ),
          ),
          buildUserName(),

          const SizedBox(height: 20),
          DefaultTextStyle.merge(
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Kata Sandi"),
              ],
            ),
          ),
          buildPassword(),
          
          const SizedBox(height: 20),
          Container(
            width: 400,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff3167FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, PrimaryScreen.routeName);
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPassScreen.routeName);
                },
                child: Text(
                  "Lupa Kata Sandi?",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan Nama Pengguna',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan Kata Sandi',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
