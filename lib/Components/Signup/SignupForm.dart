import 'package:project_collagen/Screens/Register/SignupScreen.dart';
import 'package:project_collagen/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  _SignupForm createState() => _SignupForm();
}

class _SignupForm extends State<SignupForm> {
  String? username;
  String? telephone_number;
  String? email_mahasiswa;
  String? password;

  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtTelephoneNumber = TextEditingController();
  TextEditingController txtEmailMahasiswa  = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  FocusNode focusNode = FocusNode();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [

          DefaultTextStyle.merge(
            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Nama Pengguna"),
              ],
            ),
          ),
          buildUserName(),
          SizedBox(height: 10),

          DefaultTextStyle.merge(
            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Nomor Telepon"),
              ],
            ),
          ),
          buildTelephoneNumber(),
          SizedBox(height: 10),

          DefaultTextStyle.merge(
            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("E-Mail Mahasiswa"),
              ],
            ),
          ),
          buildEmailMahasiswa(),
          SizedBox(height: 10),

          DefaultTextStyle.merge(
            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Kata Sandi"),
              ],
            ),
          ),
          buildPassword(),
          SizedBox(height: 10),

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
              onPressed: () {},
              child: const Text(
                "Daftar",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 30,
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
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
        labelStyle:
            TextStyle(
                color: focusNode.hasFocus ? mTitleColor : kPrimaryColor
            ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildTelephoneNumber() {
    return TextFormField(
      controller: txtTelephoneNumber,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan Nomor Telepon',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailMahasiswa() {
    return TextFormField(
      controller: txtEmailMahasiswa,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Masukkan Email Mahasiswa',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor
        ),
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
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
