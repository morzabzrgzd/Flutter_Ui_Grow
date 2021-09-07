import 'package:flutter/material.dart';
import 'package:login_ui/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    handleSplahs();
  }

  handleSplahs() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBachgroundColor,
        body: Center(
          child: Text(
            'Grow',
            style: GoogleFonts.spartan(
              color: kTextWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.1,
            ),
          ),
        ),
      ),
    );
  }
}
