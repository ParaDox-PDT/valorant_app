part of '../main_page_part.dart';

mixin MainPageMixin on State<MainPage> {
  late final List<String> titles;
  late final List<String> images;
  late final List<VoidCallback> onTaps;

  @override
  void initState() {
    super.initState();
    titles = [
      'agents'.tr,
      'weapons'.tr,
      'ranks'.tr,
      'sprays'.tr,
      'player_cards'.tr,
      'maps'.tr,
      'gun_buddies'.tr,
    ];
    images = [
      AppImages.agents,
      AppImages.weapons,
      AppImages.ranks,
      AppImages.sprays,
      AppImages.playerCards,
      AppImages.maps,
      AppImages.gunBuddies,
    ];
    onTaps = [
      () {
        context.push(Routes.agents);
      },
      () {},
      () {},
      () {},
      () {},
      () {},
      () {},
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }
}
