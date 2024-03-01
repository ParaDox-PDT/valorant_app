part of '../ranks_page_part.dart';

mixin RanksMixin on State<RanksPage> {
  List<Widget> ranksItems = [];
  @override
  void dispose() {
    ranksItems=[];
    super.dispose();
  }
}
