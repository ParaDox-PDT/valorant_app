part of 'maps_repository.dart';

final class MapsRepositoryImpl extends MapsRepository {
  const MapsRepositoryImpl({
    required this.dio,
  }) : super();

  final Dio dio;

  @override
  Future<Either<Failure, MapsResponse>> getMaps() async {
    try {
      final Response response = await dio.get(
        Constants.mapsUrl,
        queryParameters: {'language': getApiLocale},
      );
      return Right(
        MapsResponse.fromJson(response.data),
      );
    } on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stackTrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }

  @override
  Future<Either<Failure, MapDetailResponse>> getMapDetail(
      {required String uuid}) async {
    try {
      final Response response = await dio.get(
        '${Constants.mapsByIdUrl}/$uuid',
        queryParameters: {'language': getApiLocale},
      );
      return Right(
        MapDetailResponse.fromJson(response.data),
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
