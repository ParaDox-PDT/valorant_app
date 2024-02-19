part of '../main_page_part.dart';

class MainPageButtons extends StatelessWidget {
  const MainPageButtons({super.key});

  @override
  Widget build(BuildContext context) =>  Expanded(
    child: ListView(
      padding: AppUtils.kPaddingAll16,
      children: [
        MainPageButton(
          title: 'agents'.tr,
          image: AppImages.agents,
          onTap: () {},
        ),
        MainPageButton(
          title: 'weapons'.tr,
          image: AppImages.weapons,
          onTap: () {},
        ),
        MainPageButton(
          title: 'ranks'.tr,
          image: AppImages.ranks,
          onTap: () {},
        ),
        MainPageButton(
          title: 'sprays'.tr,
          image: AppImages.sprays,
          onTap: () {},
        ),
        MainPageButton(
          title: 'player_cards'.tr,
          image: AppImages.playerCards,
          onTap: () {},
        ),
        MainPageButton(
          title: 'maps'.tr,
          image: AppImages.playerCards,
          onTap: () {},
        ),
        MainPageButton(
          title: 'gun_buddies'.tr,
          image: AppImages.gunBuddies,
          onTap: () {},
        ),
        MainPageWallpapersButton(onTap: (){})
      ],
    ),
  );
}
