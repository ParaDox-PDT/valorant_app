part of 'player_cards_repository.dart';

final class PlayerCardsRepositoryImpl extends PlayerCardsRepository {
  const PlayerCardsRepositoryImpl({
    required this.dio,
  }) : super();

  final Dio dio;

  @override
  Future<Either<Failure, PlayerCardsResponse>> getPlayerCards() async {
    try {
      final Response response = await dio.get(
        Constants.playerCardsUrl,
        queryParameters: {'language': getApiLocale},
      );
      return Right(
        PlayerCardsResponse.fromJson(response.data),
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
