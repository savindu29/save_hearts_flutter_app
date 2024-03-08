import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled/common/styles/spacing_styles.dart';
import 'package:untitled/features/authentication/screens/signup/signup.dart';
import 'package:untitled/utils/constants/colors.dart';
import 'package:untitled/utils/constants/image_string.dart';
import 'package:untitled/utils/constants/sizes.dart';
import 'package:untitled/utils/constants/text_strings.dart';
import 'package:untitled/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/form_devider.dart';
import '../../../../common/widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBar,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(TImages.logo),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: TSizes.spaceBtwSections),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TTexts.email,
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text(TTexts.rememberMe),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.forgetPassword)),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    // sign in button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text(TTexts.signIn)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    // sign in button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupScreen()),
                            );
                          }, child: Text(TTexts.createAccount)),
                    ),
                  ],
                ),
              )),
              TFormDivider(dark: dark,text: TTexts.orSignUpWith,),
              const SizedBox(height: TSizes.spaceBtwSections),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

