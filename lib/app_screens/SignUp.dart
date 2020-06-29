import 'package:flutter/material.dart';
import 'package:testing_app/widgets/HexColor.dart';
import 'package:testing_app/widgets/custom_text_feild_form.dart';
import 'package:testing_app/widgets/onboarding_header_text.dart';
import 'package:testing_app/widgets/rounded_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _usrNameController;
  TextEditingController _passController;
  TextEditingController _emailController;
  TextEditingController _repassController;

  @override
  void initState() {
    super.initState();
    _usrNameController = TextEditingController();
    _passController = TextEditingController();
    _emailController = TextEditingController();
    _repassController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildSignUpForm(),
    );
  }

  Widget _buildSignUpForm() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            OnBoardingHeaderText(
              text: 'Sing Up',
              color: '#000000',
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextFieldForm(
              controller: _usrNameController,
              labelText: 'Username',
              hintText: 'Username',
              helperText: 'Enter your username',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldForm(
              controller: _emailController,
              labelText: 'Email',
              hintText: 'Email',
              helperText: 'Enter your email',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldForm(
              controller: _passController,
              labelText: 'Password',
              hintText: 'Password',
              helperText: 'Enter your password',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldForm(
              controller: _repassController,
              labelText: 'Re-password',
              hintText: 'Re-password',
              helperText: 'Enter your password again',
            ),
            SizedBox(
              height: 30,
            ),
            RoundedButton(
              text: 'Sign Up',
              colorString: '#3057B8',
              isClickable: true,
              onPressed: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('You already have an account?'),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: HexColor('#3057B8')),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
