import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:valorant_app/src/core/either_dart/either.dart';
import 'package:valorant_app/src/data/models/wallpapers/wallpapers_response.dart';
import 'package:valorant_app/src/domain/failure/failure.dart';
import 'package:valorant_app/src/domain/failure/server_error.dart';

part 'wallpapers_repository_impl.dart';

abstract class WallpapersRepository {
  const WallpapersRepository();

  Future<Either<Failure, List<WallpapersResponse>>> getWallpapers();
}
