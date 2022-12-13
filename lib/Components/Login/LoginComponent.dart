import 'package:project_collagen/Components/Login/LoginForm.dart';
import 'package:project_collagen/Screens/Register/SignupScreen.dart';
import 'package:project_collagen/size_config.dart';
import 'package:flutter/cupertino.dart';


class LoginComponent extends StatefulWidget {
  const LoginComponent({super.key});

  @override
  _LoginComponent createState() => _LoginComponent();
}

class _LoginComponent extends State<LoginComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight = 0.05,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight = 0.05,
                  ),
                  Image.asset(
                    "assets/images/signin_logo.png",
                    height: 200,
                    width: 252,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SignInForm(),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Image.asset(
                "assets/images/vektor_signin.png",
                alignment: Alignment.bottomCenter,
                fit: BoxFit.cover,
                height: 235,
                width: 450,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignupScreen.routeName);
                },
                child: const Text(
                  "Belum memiliki akun? Daftar",
                  style: TextStyle(
                    height: 15,
                    color: CupertinoColors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
