part of '../sprays_page_part.dart';

class SpraysListItem extends StatelessWidget with SpraysListItemMixin {
  SpraysListItem({super.key, this.gif, this.image, required this.name});

  final String? gif;
  final String? image;
  final String name;

  @override
  Widget build(BuildContext context) => BlocBuilder<Matrix4Bloc, Matrix4State>(
        buildWhen: (p, c) => p != c,
        bloc: _bloc,
        builder: (_, state) => Transform(
          transform: Matrix4(
            1,0,0,0,
            0,1,0,0,
            0,0,1,0,
            0,0,0,1,
          )..rotateX(state.x)..rotateY(state.y)..rotateZ(state.z),
          alignment: FractionalOffset.center,
          child: GestureDetector(
            onPanUpdate: (details) {
              _bloc.add(Matrix4ChangePositionEvent(dx: details.delta.dx, dy: details.delta.dy));
            },
            child:  DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.colorScheme.secondary,
                ),
              ),
              child: Padding(
                padding: AppUtils.kPaddingAll8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      name,
                      style: AppTypography.st2Regular,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    10.g,
                    Stack(
                      children: [
                        Image(
                          image: const AssetImage(AppImages.wall),
                          fit: BoxFit.cover,
                          width: 160.w,
                          height: 160.w,
                        ),
                        CachedNetworkImage(
                          imageUrl: gif ?? image ?? 'null',
                          placeholder: (context, url) => Center(
                            child: StaggeredDotsWave(
                              size: 50,
                              color: context.colorScheme.secondary,
                            ),
                          ),
                          width: 160.w,
                          height: 160.w,
                          fadeOutDuration: const Duration(milliseconds: 300),
                          fit: BoxFit.contain,
                          errorWidget: (context, url, error) => Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              color: colorLightScheme.secondary,
                              size: 50.w,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
