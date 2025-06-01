part of 'sprays_repository.dart';

final class SpraysRepositoryImpl extends SpraysRepository {
  const SpraysRepositoryImpl({
    required this.dio,
  }) : super();

  final Dio dio;

  @override
  Future<Either<Failure, SpraysResponse>> getSprays() async {
    try {
      final Response response = await dio.get(
        Constants.spraysUrl,
        queryParameters: {'language': getApiLocale},
      );
      return Right(
        SpraysResponse.fromJson(response.data),
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
