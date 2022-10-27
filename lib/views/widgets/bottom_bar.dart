import 'package:flutter/material.dart';
import 'package:redimm/logic/bottom_bar_viewmodel.dart';
import 'package:redimm/utils/constants/app_colors.dart';
import 'package:redimm/utils/constants/app_images.dart';
import 'package:redimm/utils/constants/app_strings.dart';
import 'package:stacked/stacked.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
      viewModelBuilder: () => BottomBarViewModel(),
      builder: (context, viewModel, _) => Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          elevation: 5,
          child: Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                border: Border.all(color: AppColors.whiteColor),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                tapIcon(
                  model: viewModel,
                  index: 0,
                  assetImage: AppImages.home,
                  assetName: AppStrings.home,
                ),
                tapIcon(
                    model: viewModel,
                    index: 1,
                    assetImage: AppImages.shops,
                    assetName: AppStrings.shopes),
                tapIcon(
                    model: viewModel,
                    index: 2,
                    assetImage: AppImages.portfolio,
                    assetName: AppStrings.portfolio),
                tapIcon(
                    model: viewModel,
                    index: 3,
                    assetImage: AppImages.menu,
                    assetName: AppStrings.menu),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget tapIcon(
    {String? assetImage, String? assetName, BottomBarViewModel? model, index}) {
  return InkWell(
    onTap: () {
      print("obj: $index");
      model.tappedHomeIcon(index);
    },
    child: SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetImage!,
            height: 30,
            width: 30,
            color: model!.counter == index
                ? AppColors.primaryColor
                : AppColors.greyColor,
          ),
          Text(
            assetName!,
            style: TextStyle(
                color: model.counter == index
                    ? AppColors.primaryColor
                    : AppColors.greyColor),
          )
        ],
      ),
    ),
  );
}
