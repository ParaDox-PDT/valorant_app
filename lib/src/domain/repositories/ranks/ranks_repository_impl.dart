part of 'ranks_repository.dart';

final class RanksRepositoryImpl extends RanksRepository {
  const RanksRepositoryImpl({
    required this.dio,
  }) : super();

  final Dio dio;

  @override
  Future<Either<Failure, RanksResponse>> getRanks() async {
    try {
      final Response response = await dio.get(
        Constants.ranksUrl,
        queryParameters: {'language': getApiLocale},
      );
      return Right(
        RanksResponse.fromJson(response.data),
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
