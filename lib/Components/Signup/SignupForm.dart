import 'package:project_collagen/Screens/Register/Registrasi.dart';
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
          SizedBox(height: 20),

          DefaultTextStyle.merge(
            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            child: Row(
              children: const [
                Text("Nomor Telepon"),
              ],
            ),
          ),
          buildTelephoneNumber(),
          SizedBox(height: 20),

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
        labelText: 'Masukkan Nama Pengguna',
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
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Masukkan Nomor Telepon',
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
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Masukkan Email Mahasiswa',
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
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
