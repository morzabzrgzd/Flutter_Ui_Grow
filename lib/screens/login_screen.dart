import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBachgroundColor,
        appBar: AppBar(
          backgroundColor: kBachgroundColor,
          centerTitle: true,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text('Join Grow'),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.04),
                BuldTextField(
                  size: size,
                  hintText: 'Email',
                ),
                SizedBox(height: size.height * 0.02),
                BuldTextField(
                  size: size,
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                ButtonApp(
                  iconImage: Text(''),
                  size: size,
                  borderColor: kbuttonLoginColor,
                  color: kbuttonLoginColor,
                  title: 'Login',
                  titleColor: kTextWhiteColor,
                ),
                SizedBox(height: size.height * 0.025),
                Text(
                  'By continuing, you agree to Grow’s Terms of\nService and Privacy Policy',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: kTextWhiteColor, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: size.height * 0.06),
                OrWidgets(size: size),
                SizedBox(height: size.height * 0.06),
                ButtonApp(
                  size: size,
                  title: 'Sign in with Email',
                  color: Colors.transparent,
                  borderColor: Colors.white,
                  titleColor: kTextWhiteColor,
                  iconImage: SvgPicture.asset('assets/icons/iconMail.svg'),
                ),
                SizedBox(height: size.height * 0.025),
                ButtonApp(
                  size: size,
                  title: 'Sign in with Apple',
                  color: kbuttonSignAppleColor,
                  borderColor: kbuttonSignAppleColor,
                  titleColor: kTextBlackColor,
                  iconImage: SvgPicture.asset('assets/icons/iconApple.svg'),
                ),
                SizedBox(height: size.height * 0.025),
                ButtonApp(
                  size: size,
                  title: 'Sign in with Google',
                  color: kbuttonSignGoogleColor,
                  borderColor: kbuttonSignGoogleColor,
                  titleColor: kTextWhiteColor,
                  iconImage: SvgPicture.asset('assets/icons/iconGoogle.svg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrWidgets extends StatelessWidget {
  const OrWidgets({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: .3,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03,
          ),
          child: Text(
            'Or',
            style: GoogleFonts.poppins(
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: .3,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({
    Key key,
    @required this.size,
    this.color,
    this.title,
    this.titleColor,
    this.borderColor,
    this.iconImage,
  }) : super(key: key);

  final Size size;
  final color;
  final title;
  final titleColor;
  final borderColor;
  final iconImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: size.height * 0.065,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: borderColor,
              width: .2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            title,
            style: GoogleFonts.poppins(
                color: titleColor, fontSize: size.width * 0.04),
          ),
        ),
        Positioned(
            left: size.width * 0.06,
            top: size.height * 0.016,
            child: iconImage),
      ],
    );
  }
}

class BuldTextField extends StatelessWidget {
  const BuldTextField({
    Key key,
    @required this.size,
    this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  final Size size;
  final hintText;
  final suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.065,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: GoogleFonts.poppins(color: Colors.grey),
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04, vertical: size.height * 0.015)),
      ),
    );
  }
}
