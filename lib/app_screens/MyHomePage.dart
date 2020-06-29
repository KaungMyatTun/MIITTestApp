import 'package:flutter/material.dart';
import 'package:testing_app/app_screens/SignUp.dart';
import 'package:testing_app/widgets/HexColor.dart';
import 'package:testing_app/widgets/custom_text_feild_form.dart';
import 'package:testing_app/widgets/onboarding_header_text.dart';
import 'package:testing_app/widgets/rounded_button.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _userNameController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Testing App"),
      ),
      body: _buildSignInForm(),
    );
  }

  Widget _buildSignInForm() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            OnBoardingHeaderText(
              text: 'Sign In',
              color: '#000000',
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextFieldForm(
              controller: _userNameController,
              labelText: 'Username',
              hintText: 'Username',
              helperText: 'Enter your username',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFieldForm(
              controller: _passwordController,
              labelText: 'Password',
              hintText: 'Password',
              helperText: 'Enter your password',
            ),
            SizedBox(
              height: 30,
            ),
            RoundedButton(
              text: 'Login',
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
                Text('You don\'t have an account?'),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: HexColor('#3057B8')),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                        fullscreenDialog: true,
                      ),
                    );
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
