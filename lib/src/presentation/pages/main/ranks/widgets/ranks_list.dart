part of '../ranks_page_part.dart';

List<Widget> ranksList(
        {required List<RanksTiers> ranks, required BuildContext context}) =>
    List.generate(
      ranks.length % 3 != 0 ? (ranks.length ~/ 3) + 1 : (ranks.length ~/ 3),
      (rowIndex) => Column(
        key: Key(AppKeys.ranksRowKeys + rowIndex.toString()),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              ranks[rowIndex * 3].divisionName ?? 'null',
              style: AppTypography.t2Medium
                  .copyWith(color: context.colorScheme.secondary),
            ),
          ),
          Row(
            children: [
              ...List.generate(
                rowIndex * 3 < ranks.length - 1
                    ? 3
                    : ranks.length - (rowIndex * 3),
                (i) {
                  if (ranks[i + (rowIndex * 3)].smallIcon == null) {
                    return 0.g;
                  } else {
                    return Expanded(
                      child: Padding(
                        padding: AppUtils.kPaddingAll8,
                        child: RanksListItem(
                          image: ranks[i + (rowIndex * 3)].smallIcon ?? 'null',
                        ),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ],
      ),
    );
