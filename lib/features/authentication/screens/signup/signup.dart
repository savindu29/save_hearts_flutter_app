import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled/common/widgets/form_devider.dart';
import 'package:untitled/utils/constants/colors.dart';
import 'package:untitled/utils/constants/text_strings.dart';
import 'package:untitled/utils/helpers/helper_functions.dart';

import 'widgets/signup_form.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
              padding:const  EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSignupForm(dark: dark),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TFormDivider(dark: dark,text: TTexts.orSignInWith,),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSocialButtons()
                ],
              )
          ),

        )
    );
  }
}

