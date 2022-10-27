import 'package:flutter/material.dart';
import 'package:redimm/utils/constants/app_colors.dart';
import 'package:redimm/utils/constants/app_constants.dart';
import 'package:redimm/utils/constants/app_images.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 25),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  AppColors.primaryColor,
                  AppColors.secondaryColor
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.logo),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(AppImages.notifications),
                        SizedBox(width: getDeviceWidth(context) * 0.05),
                        Image.asset(AppImages.search),
                      ],
                    )
                  ],
                ),
                SizedBox(height: getDeviceHeight(context) * 0.03),
                const Text(
                  "Hey, John Appleseed",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                const Text(
                  "\$0.00",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
                const Text(
                  "Portfolio Value",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Stack(children: [
                    Container(
                        height: getDeviceHeight(context) * 0.1,
                        width: getDeviceWidth(context) * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Image.asset(AppImages.persons)),
                    Align(
                      heightFactor: 0.9,
                      child: Container(
                          height: getDeviceHeight(context) * 0.1,
                          width: getDeviceWidth(context) * 0.4,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              color: Colors.teal),
                          child: Image.asset(AppImages.persons)),
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Top Brands",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: const [
                          Text(
                            "See All ",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 25,
                            color: AppColors.primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Top Categories",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: const [
                          Text(
                            "See All ",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 25,
                            color: AppColors.primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recently Visited",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: const [
                          Text(
                            "See All ",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 25,
                            color: AppColors.primaryColor,
                          )
                        ],
                      )
                    ],
                  )
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
