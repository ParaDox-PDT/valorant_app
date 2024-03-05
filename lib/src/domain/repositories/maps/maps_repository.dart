import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/core/either_dart/either.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/maps/map_detail_response.dart';
import 'package:valorant_app/src/data/models/maps/maps_response.dart';
import 'package:valorant_app/src/domain/failure/failure.dart';
import 'package:valorant_app/src/domain/failure/server_error.dart';

part 'maps_repository_impl.dart';

abstract class MapsRepository {
  const MapsRepository();

  Future<Either<Failure,MapsResponse>> getMaps();

  Future<Either<Failure,MapDetailResponse>> getMapDetail({required String uuid});
}