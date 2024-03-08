import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
            children : [
              Row(
                  children: [
                    Expanded(
                        child : TextField(
                          expands: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: TTexts.firstName,

                          ),
                        )
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                        child : TextField(
                          expands: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: TTexts.lastName,

                          ),
                        )
                    ),
                  ]
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              TextFormField(
                expands: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user_edit),
                  labelText: TTexts.username,

                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              TextFormField(
                expands: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct),
                  labelText: TTexts.email,

                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              TextFormField(
                expands: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  labelText: TTexts.phoneNo,

                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              TextFormField(
                expands: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user_edit),
                  labelText: TTexts.username,

                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Row(
                children: [
                  SizedBox(
                    width:24,
                    height:24,
                    child: Checkbox(value: true, onChanged: (value) {}),
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(text: '${TTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),

                        TextSpan(text: '${TTexts.privacyPolicy}', style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? Colors.white : TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? Colors.white : TColors.primary,
                        )),
                        TextSpan(text: ' ${TTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: '${TTexts.termsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? Colors.white : TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? Colors.white : TColors.primary,
                        )),

                      ]
                  ))
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(TTexts.createAccount)),
              ),

            ]
        )
    );
  }
}
