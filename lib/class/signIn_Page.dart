import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signin_signup_page/constants.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _rememberMe = false;

  Widget _buildForgetPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('Forget Password Button Pressed'),
        child: Text(
          'Forget Password ?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeBtn() {
    return Container(
      child: Row(
        children: [
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.white,
            ),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: kLabelStyle,
          )
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
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
            )),
        onPressed: () => print('LOGIN Buttun Pressed'),
        child: Text(
          'LOGIN',
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

  Widget _buildSignInWithText() {
    return Column(
      children: [
        Text(
          '- OR -',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Sign In with',
          style: kLabelStyle,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildSocialBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () => print('Login With Facebook'),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/fbLogo.png',
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => print('Login With Google'),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/GoogleLogo.png',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }

  Widget _buildSignUpBtn() {
    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(context, '/SignUp'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account ? ',
              style: GoogleFonts.openSans(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
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
                    'Sign In',
                    style: GoogleFonts.openSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
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
                    text: 'Password',
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    hint: 'Enter your Password',
                    obscure: true,
                  ),
                  _buildForgetPasswordBtn(),
                  _buildRememberMeBtn(),
                  _buildLoginBtn(),
                  _buildSignInWithText(),
                  _buildSocialBtn(),
                  _buildSocialBtnRow(),
                  _buildSignUpBtn(),
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
