import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:redimm/logic/cubit/categories/categories_cubit.dart';
import 'package:redimm/logic/cubit/stores/stores_cubit.dart';
import 'package:redimm/logic/cubit/users/user_cubit.dart';
import 'package:redimm/utils/constants/app_colors.dart';
import 'package:redimm/utils/constants/app_constants.dart';
import 'package:redimm/utils/constants/app_images.dart';
import 'package:redimm/views/widgets/bottom_bar.dart';
import 'package:redimm/views/widgets/invite_your_friends.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    // BlocProvider.of<UserCubit>(context).getUser();
    BlocProvider.of<StoresCubit>(context).fetchTopStores();
    BlocProvider.of<CategoriesCubit>(context).fetchTopCategories();
  }

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
                BlocBuilder<UserCubit, UserState>(builder: (context, state) {
                  // if (state.userLoading == true) {
                  //   return const CircularProgressIndicator();
                  // } else {
                  return const Text(
                    "Hey, John Appleseed",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  );
                  // }
                }),
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
          Positioned(
            top: 250,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 130),
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: SingleChildScrollView(
                  child: Column(
                children: [
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
                  BlocBuilder<StoresCubit, StoreState>(
                      builder: (context, state) => state.storeLoading != "true"
                          ? SizedBox(
                              height: getDeviceHeight(context) * 0.35,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.storeList!.length,
                                  itemBuilder: (context, index) =>
                                      topBrandsCard(
                                        context: context,
                                        state: state,
                                        index: index,
                                      )),
                            )
                          : const CircularProgressIndicator()),
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
                  BlocBuilder<CategoriesCubit, CategoriesState>(
                      builder: (context, state) =>
                          state.categoryLoading != "true"
                              ? SizedBox(
                                  height: getDeviceHeight(context) * 0.25,
                                  child: ListView.builder(
                                      // shrinkWrap: t,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state.categoriesList!.length,
                                      itemBuilder: (context, index) =>
                                          topCategoriesCard(
                                            context: context,
                                            state: state,
                                            index: index,
                                          )),
                                )
                              : const CircularProgressIndicator()),
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
                  ),
                  SizedBox(height: getDeviceHeight(context) * 0.02),
                  const Text(
                    "Shop on your interested stores just viewed!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.greyColorDark,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: getDeviceHeight(context) * 0.02),
                  const InviteYourFriends()
                ],
              )),
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: BottomBar(),
          )
        ],
      ),
    );
  }

  topBrandsCard({
    required BuildContext context,
    required StoreState state,
    required int index,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: getDeviceHeight(context) * 0.3,
        width: getDeviceWidth(context) * 0.5,
        child: Stack(children: [
          Positioned(
            top: 110,
            left: 0.0,
            right: 0.0,
            child: Container(
                padding: const EdgeInsets.all(10),
                height: getDeviceHeight(context) * 0.15,
                width: getDeviceWidth(context) * 0.5,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyColor),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.storeList![index].name!,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackHeading),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppColors.orangeRatingColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          state.storeList![index].rating!.toString(),
                          style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.greyColorDark,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    // Row(
                    //   children: [
                    Flexible(
                      child: Text(
                        Bidi.stripHtmlIfNeeded(
                            state.storeList![index].description!),
                        maxLines: 2,
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 16,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    // const Text(
                    //   "was 3%",
                    //   style: TextStyle(
                    //       fontSize: 16,
                    //       color: AppColors.greyColorDark,
                    //       fontWeight: FontWeight.w700),
                    // )
                    //   ],
                    // )
                  ],
                )),
          ),
          Positioned(
            top: 0,
            left: 0.0,
            right: 0.0,
            child: Container(
                height: getDeviceHeight(context) * 0.15,
                width: getDeviceWidth(context) * 0.5,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.teal),
                child: Image.network(state.storeList![index].logo!)),
          ),
        ]),
      ),
    );
  }

  topCategoriesCard({
    required BuildContext context,
    required CategoriesState state,
    required int index,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: getDeviceWidth(context) * 0.2,
        child: Column(
          children: [
            Container(
              height: getDeviceHeight(context) * 0.1,
              width: getDeviceWidth(context) * 0.2,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(
                      int.parse("0xFF${state.categoriesList![index].color!}"))),
              child: SvgPicture.network(state.categoriesList![index].icon!),
            ),
            Text(
              state.categoriesList![index].name!,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(color: AppColors.greyColorDark, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
