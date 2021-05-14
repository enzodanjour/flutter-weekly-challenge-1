import 'package:flutter/material.dart';
import 'package:flutterweeklychallenge1/core/app_colors.dart';
import 'package:flutterweeklychallenge1/core/app_gradients.dart';
import 'package:flutterweeklychallenge1/core/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.linearHorizontal
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: 'Welcome to \n',
                        style: AppTextStyles.normalText,
                        children: [
                          TextSpan(
                            text: 'ZEEBZ \n',
                            style: AppTextStyles.title
                          ),
                          TextSpan(
                            text: 'The shopping app you \n needed',
                            style: AppTextStyles.descriptionText
                          )
                        ]
                    )
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width/3,
                  // )
                ],
              ),
              Center(
                child: Icon(
                  Icons.store_mall_directory_rounded,
                  color: AppColors.light,
                  size: 150,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: TextButton(
                  
                  onPressed: (){}, 
                  child: Text(
                    'Sign Up',
                    style: AppTextStyles.buttonWhite,
                  )
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: TextButton(
                  style: ButtonStyle(

                  ),
                  onPressed: (){}, 
                  child: Text(
                    'Sign Up',
                    style: AppTextStyles.buttonTransparent,
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
