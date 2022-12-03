import 'package:project_collagen/Components/Signup/SignupForm.dart';
import 'package:project_collagen/size_config.dart';
import 'package:flutter/cupertino.dart';


class SignupComponent extends StatefulWidget {
  const SignupComponent({super.key});

  @override
  _SignupComponent createState() => _SignupComponent();
}

class _SignupComponent extends State<SignupComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight = 0,
                ),
                Image.asset(
                    "assets/images/signin_logo.png",
                    height: 200,
                    width: 252,
                ),
                const SizedBox(
                  height: 20,
                ),
                SignupForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
