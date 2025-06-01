part of 'wallpapers_repository.dart';

final class WallpapersRepositoryImpl extends WallpapersRepository {
  const WallpapersRepositoryImpl();

  @override
  Future<Either<Failure, List<WallpapersResponse>>> getWallpapers(
      {required int limit}) async {
    late int count;
    try {
      await FirebaseFirestore.instance
          .collection('wallpapers')
          .count()
          .get()
          .then((value) => count = value.count ?? 0);

      if (count+limit > limit) {
        final collectionReference =
            FirebaseFirestore.instance.collection('wallpapers').limit(limit);
        final QuerySnapshot querySnapshot = await collectionReference.get();
        final List<WallpapersResponse> response = querySnapshot.docs
            .map(
              (doc) => WallpapersResponse.fromJson(
                  doc.data()! as Map<String, dynamic>),
            )
            .toList();
        return Right(
          response,
        );
      } else {
        return const Right(
          [],
        );
      }
    } on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stackTrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }
}
