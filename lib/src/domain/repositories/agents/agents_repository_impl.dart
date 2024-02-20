part of 'agents_repository.dart';

final class AgentsRepositoryImpl extends AgentsRepository {
  const AgentsRepositoryImpl({
    required this.dio,
  }) : super();

  final Dio dio;

  @override
  Future<Either<Failure, Agents>> getAgents() async {
    try {
      final Response response = await dio.get(
        Constants.agentsUrl,
        queryParameters: {'language': getApiLocale},
      );
      return Right(
        Agents.fromJson(response.data),
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
  Future<Either<Failure, AgentDetail>> getAgentDetail(
      {required String uuid}) async {
    try {
      final Response response = await dio.get(
        '${Constants.agentsByIdUrl}/$uuid',
        queryParameters: {'language': getApiLocale},
      );
      return Right(
        AgentDetail.fromJson(response.data),
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
