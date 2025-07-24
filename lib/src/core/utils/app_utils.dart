part of 'utils.dart';

sealed class AppUtils {
  AppUtils._();

  static const kSpacer = Spacer();

  static const kGap = Gap(0);
  static const kGap4 = Gap(4);
  static const kGap6 = Gap(6);
  static const kGap8 = Gap(8);
  static const kGap12 = Gap(12);
  static const kGap16 = Gap(16);
  static const kGap20 = Gap(20);
  static const kGap24 = Gap(24);
  static const kGap40 = Gap(40);

  /// divider
  static const kDivider = Divider(height: 1);

  /// border radius
  static BorderRadius kRadius4 = BorderRadius.circular(4);
  static BorderRadius kRadius6 = BorderRadius.circular(6);
  static BorderRadius kRadius8 = BorderRadius.circular(8);
  static BorderRadius kRadius10 = BorderRadius.circular(10);
  static BorderRadius kRadius12 = BorderRadius.circular(12);
  static BorderRadius kRadius16 = BorderRadius.circular(16);
  static BorderRadius kRadius24 = BorderRadius.circular(24);
  static BorderRadius kRadius32 = BorderRadius.circular(32);

  static BorderRadius kChatMe = const BorderRadius.only(
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
    topLeft: Radius.circular(16),
  );

  static BorderRadius kChatYou = const BorderRadius.only(
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
    topRight: Radius.circular(16),
  );

  /// padding
  static const kPadding0 = EdgeInsets.zero;

  /// ALL
  static const kPaddingAll2 = EdgeInsets.all(2);
  static const kPaddingAll4 = EdgeInsets.all(4);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingAll8 = EdgeInsets.all(8);
  static const kPaddingAll10 = EdgeInsets.all(10);
  static const kPaddingAll12 = EdgeInsets.all(12);
  static const kPaddingAll14 = EdgeInsets.all(14);
  static const kPaddingAll16 = EdgeInsets.all(16);
  static const kPaddingAll18 = EdgeInsets.all(18);
  static const kPaddingAll24 = EdgeInsets.all(24);

  /// HORIZONTAL
  static const kPaddingHorizontal2 = EdgeInsets.symmetric(horizontal: 2);
  static const kPaddingHorizontal4 = EdgeInsets.symmetric(horizontal: 4);
  static const kPaddingHorizontal6 = EdgeInsets.symmetric(horizontal: 6);
  static const kPaddingHorizontal12 = EdgeInsets.symmetric(horizontal: 12);
  static const kPaddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHorizontal22 = EdgeInsets.symmetric(horizontal: 22);
  static const kPaddingHorizontal32 = EdgeInsets.symmetric(horizontal: 32);
  static const kPaddingHorizontal48 = EdgeInsets.symmetric(horizontal: 48);

  /// VERTICAL
  static const kPaddingVertical6 = EdgeInsets.symmetric(vertical: 6);
  static const kPaddingVertical8 = EdgeInsets.symmetric(vertical: 8);
  static const kPaddingVertical16 = EdgeInsets.symmetric(vertical: 16);
  static const kPaddingVertical18 = EdgeInsets.symmetric(vertical: 18);
  static const kPaddingVertical24 = EdgeInsets.symmetric(vertical: 24);
  static const kPaddingVertical32 = EdgeInsets.symmetric(vertical: 32);

  /// SYMMETRIC
  static const kPaddingHor32Ver20 = EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  static const kPaddingHor32Ver16 = EdgeInsets.symmetric(horizontal: 32, vertical: 16);
  static const kPaddingHor32Ver12 = EdgeInsets.symmetric(horizontal: 32, vertical: 12);
  static const kPaddingHor22Ver16 = EdgeInsets.symmetric(horizontal: 22, vertical: 16);
  static const kPaddingHor22Ver12 = EdgeInsets.symmetric(horizontal: 22, vertical: 12);
  static const kPaddingHor14Ver16 = EdgeInsets.symmetric(horizontal: 14, vertical: 16);
  static const kPaddingHor14Ver18 = EdgeInsets.symmetric(horizontal: 14, vertical: 18);
  static const kPaddingHor14Ver10 = EdgeInsets.symmetric(horizontal: 14, vertical: 10);
  static const kPaddingHor16Ver12 = EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const kPaddingHor16Ver8 = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static const kPaddingHor16Ver10 = EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const kPaddingHor16Ver24 = EdgeInsets.symmetric(horizontal: 16, vertical: 24);
  static const kPaddingHor12Ver32 = EdgeInsets.symmetric(horizontal: 12, vertical: 32);
  static const kPaddingHor12Ver18 = EdgeInsets.symmetric(horizontal: 12, vertical: 18);
  static const kPaddingHor12Ver16 = EdgeInsets.symmetric(horizontal: 12, vertical: 16);
  static const kPaddingHor12Ver8 = EdgeInsets.symmetric(horizontal: 12, vertical: 8);
  static const kPaddingHor12Ver6 = EdgeInsets.symmetric(horizontal: 12, vertical: 6);
  static const kPaddingHor12Ver4 = EdgeInsets.symmetric(horizontal: 12, vertical: 4);
  static const kPaddingHor10Ver6 = EdgeInsets.symmetric(horizontal: 10, vertical: 6);
  static const kPaddingHor8Ver4 = EdgeInsets.symmetric(horizontal: 8, vertical: 4);

  /// ONLY
  /// TOP
  static const kPaddingTop24 = EdgeInsets.fromLTRB(0, 24, 0, 0);
  static const kPaddingTop16 = EdgeInsets.fromLTRB(0, 16, 0, 0);
  static const kPaddingTop12 = EdgeInsets.fromLTRB(0, 12, 0, 0);
  static const kPaddingTop10 = EdgeInsets.fromLTRB(0, 10, 0, 0);
  static const kPaddingTop8 = EdgeInsets.fromLTRB(0, 8, 0, 0);
  static const kPaddingTop4 = EdgeInsets.fromLTRB(0, 4, 0, 0);
  static const kPaddingTop2 = EdgeInsets.fromLTRB(0, 2, 0, 0);

  /// LEFT
  static const kPaddingLeft16 = EdgeInsets.fromLTRB(16, 0, 0, 0);
  static const kPaddingLeft6 = EdgeInsets.fromLTRB(6, 0, 0, 0);
  static const kPaddingLeft4 = EdgeInsets.fromLTRB(4, 0, 0, 0);

  /// RIGHT
  static const kPaddingRight16 = EdgeInsets.fromLTRB(0, 0, 16, 0);
  static const kPaddingRight8 = EdgeInsets.fromLTRB(0, 0, 8, 0);
  static const kPaddingRight4 = EdgeInsets.fromLTRB(0, 0, 4, 0);

  /// BOTTOM
  static const kPaddingBottom80 = EdgeInsets.fromLTRB(0, 0, 0, 80);
  static const kPaddingBottom18 = EdgeInsets.fromLTRB(0, 0, 0, 18);
  static const kPaddingBottom16 = EdgeInsets.fromLTRB(0, 0, 0, 16);
  static const kPaddingBottom12 = EdgeInsets.fromLTRB(0, 0, 0, 12);
  static const kPaddingBottom10 = EdgeInsets.fromLTRB(0, 0, 0, 10);
  static const kPaddingBottom8 = EdgeInsets.fromLTRB(0, 0, 0, 8);
  static const kPaddingBottom6 = EdgeInsets.fromLTRB(0, 0, 0, 6);
  static const kPaddingBottom4 = EdgeInsets.fromLTRB(0, 0, 0, 4);
  static const kPaddingBottom2 = EdgeInsets.fromLTRB(0, 0, 0, 2);

  /// LRB
  static const kPaddingLRB16 = EdgeInsets.fromLTRB(16, 0, 16, 16);
  static const kPaddingLR22B16 = EdgeInsets.fromLTRB(22, 0, 22, 16);
  static const kPaddingLR12T12B80 = EdgeInsets.fromLTRB(12, 12, 12, 80);
  static const kPaddingLRT16 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingL16R16B12 = EdgeInsets.fromLTRB(16, 0, 16, 12);

  /// LTRB
  static const kPaddingLR16TB8 = EdgeInsets.fromLTRB(16, 8, 16, 8);
  static const kPaddingL16T20R22B14 = EdgeInsets.fromLTRB(16, 20, 22, 14);

  ///TB
  static const kPaddingT16B60 = EdgeInsets.fromLTRB(0, 16, 0, 64);

  /// border radius
  static const kRadius = Radius.zero;
  static const kBorderRadius2 = BorderRadius.all(Radius.circular(2));
  static const kBorderRadius4 = BorderRadius.all(Radius.circular(4));
  static const kBorderRadius6 = BorderRadius.all(Radius.circular(6));
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadius10 = BorderRadius.all(Radius.circular(10));
  static const kBorderRadius12 = BorderRadius.all(Radius.circular(12));
  static const kBorderRadius16 = BorderRadius.all(Radius.circular(16));
  static const kBorderRadius24 = BorderRadius.all(Radius.circular(24));
  static const kBorderRadius32 = BorderRadius.all(Radius.circular(32));
  static const kBorderRadiusMax = BorderRadius.all(Radius.circular(100));

  static const kBorderRadiusTop16 = BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16));

  static const kBorderRadiusBottom16 = BorderRadius.only(
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
  );

  /// TOP LEFT RIGHT BOTTOM RIGHT
  static const kBorderRadiusTLRBR16 = BorderRadius.only(
    topLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
    topRight: Radius.circular(16),
  );

  /// TOP LEFT RIGHT BOTTOM LEFT
  static const kBorderRadiusTLRBL16 = BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
    bottomLeft: Radius.circular(16),
  );

  static const kShapeRoundedNone = RoundedRectangleBorder();
  static const kShapeRoundedAll12 = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)));
  static const kShapeRoundedAll10 = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)));
  static const kShapeRoundedBottom12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(bottomRight: Radius.circular(12), bottomLeft: Radius.circular(12)),
  );
}
