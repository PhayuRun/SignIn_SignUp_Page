import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signin_signup_page/constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _rememberMe = false;

  Widget _buildRegisterBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () => print('REGISTER Buttun Pressed'),
        child: Text(
          'REGISTER',
          style: GoogleFonts.openSans(
            color: Color(0xFF1F847A),
            letterSpacing: 1.5,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildSignInBtn() {
    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(context, '/SignIn'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Have an Account ? ',
              style: GoogleFonts.openSans(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'Sign In',
              style: GoogleFonts.openSans(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF2BB6A8),
                  Color(0xFF27A599),
                  Color(0xFF239589),
                  Color(0xFF1F847A),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 120,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: GoogleFonts.openSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppTextField(
                    text: 'Email',
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    hint: 'Enter your Email',
                    obscure: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    text: 'Full Name',
                    icon: Icon(
                      Icons.account_box_outlined,
                      color: Colors.white,
                    ),
                    hint: 'Enter your name',
                    obscure: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    text: 'Password',
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    hint: 'Enter your Password',
                    obscure: true,
                  ),
                  AppTextField(
                    text: '',
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    hint: 'Confirm Password',
                    obscure: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _buildRegisterBtn(),
                  _buildSignInBtn(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField(
      {required this.text,
      required this.icon,
      required this.hint,
      required this.obscure});
  final String text;
  final Icon icon;
  final String hint;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            obscureText: obscure,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: icon,
              hintText: hint,
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
