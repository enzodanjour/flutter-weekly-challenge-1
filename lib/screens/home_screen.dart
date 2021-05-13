import 'package:flutter/material.dart';
import 'package:flutterweeklychallenge1/core/app_gradients.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.linearHorizontal
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Welcome to \n',
                style: TextStyle(
                  fontFamily: 'Poppins'
                )
              )
            ),
            Center(
              child: Icon(
                Icons.store_mall_directory_rounded,
                color: Colors.white,
                size: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
