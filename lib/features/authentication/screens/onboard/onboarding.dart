import 'package:flutter/material.dart';
import 'package:untitled/features/authentication/screens/login/login.dart';

import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../signup/signup.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Center(
      child: Stack(
        children: [
          Container(
            color: dark ? Colors.black : Colors.white,
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  height: 150,
                  image: AssetImage(TImages.logo),
                ),
                Text(
                  TTexts.saveHearts,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: TSizes.sm),
                const SizedBox(height: 70),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text("Login"),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text("Create Account"),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle English button press
                  },
                  child: Text(TTexts.english),
                ),
                TextButton(
                  onPressed: () {
                    // Handle Sinhala button press
                  },
                  child: Text(TTexts.sinhala),
                ),
                TextButton(
                  onPressed: () {
                    // Handle Tamil button press
                  },
                  child: Text(TTexts.tamil),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
