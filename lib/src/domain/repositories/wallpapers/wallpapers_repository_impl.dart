part of 'wallpapers_repository.dart';

final class WallpapersRepositoryImpl extends WallpapersRepository {
  const WallpapersRepositoryImpl();

  @override
  Future<Either<Failure, List<WallpapersResponse>>> getWallpapers() async {
    try {
      final CollectionReference collectionReference =
          FirebaseFirestore.instance.collection('wallpapers');
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
    } on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stackTrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }
}
