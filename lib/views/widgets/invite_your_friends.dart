import 'package:flutter/material.dart';
import 'package:redimm/utils/constants/app_colors.dart';
import 'package:redimm/utils/constants/app_images.dart';
import 'package:redimm/utils/constants/app_strings.dart';

class InviteYourFriends extends StatelessWidget {
  const InviteYourFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
            color: AppColors.lightBlue,
            border: Border.all(color: AppColors.lightBlue),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.persons,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    AppStrings.inviteFriends,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    AppStrings.inviteFriendsPara,
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 55,
              width: 55,
              child: Image.asset(
                AppImages.arrow,
                height: 20,
                width: 20,
              ),
            ),
          ],
        ));
  }
}
