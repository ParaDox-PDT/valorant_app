import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/core/either_dart/either.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/sprays/sprays_response.dart';
import 'package:valorant_app/src/domain/failure/failure.dart';
import 'package:valorant_app/src/domain/failure/server_error.dart';

part 'sprays_repository_impl.dart';

abstract class SpraysRepository {
  const SpraysRepository();

  Future<Either<Failure, SpraysResponse>> getSprays();
}