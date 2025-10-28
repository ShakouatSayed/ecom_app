import 'package:ecom_app/utils/constants/image_strings.dart';
import 'package:ecom_app/utils/constants/size.dart';
import 'package:ecom_app/utils/constants/text_strings.dart';
import 'package:ecom_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: [
              OnBoarding(
                image: ANBImage.onBoardingImage1,
                title: ANBTexts.onBoardingTitle1,
                subTitle: ANBTexts.onBoardingSubTitle1,
              ),
              OnBoarding(
                image: ANBImage.onBoardingImage2,
                title: ANBTexts.onBoardingTitle2,
                subTitle: ANBTexts.onBoardingSubTitle2,
              ),
              OnBoarding(
                image: ANBImage.onBoardingImage3,
                title: ANBTexts.onBoardingTitle3,
                subTitle: ANBTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button

          /// Dot Navigation SmoothPageIndicator

          /// Circular Button
        ],
      ),
    );
  }
}

class OnBoarding extends StatelessWidget {
  final String image,  title,  subTitle;
   const OnBoarding({super.key, required this.image, required this.title, required this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ANBSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: ANBHelperFunctions.screenWidth() * 0.8,
            height: ANBHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: ANBSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
