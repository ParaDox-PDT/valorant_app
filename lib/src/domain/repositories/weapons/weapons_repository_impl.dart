part of 'weapons_repository.dart';

final class WeaponsRepositoryImpl extends WeaponsRepository {
  const WeaponsRepositoryImpl({
    required this.dio,
  }) : super();

  final Dio dio;

  @override
  Future<Either<Failure, WeaponsResponse>> getWeapons() async {
    try {
      final Response response = await dio.get(
        Constants.weaponsUrl,
        queryParameters: {'language': getApiLocale},
      );
      return Right(
        WeaponsResponse.fromJson(response.data),
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
