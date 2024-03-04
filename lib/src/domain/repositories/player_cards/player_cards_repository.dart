import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/core/either_dart/either.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/player_cards/player_cards_response.dart';
import 'package:valorant_app/src/domain/failure/failure.dart';
import 'package:valorant_app/src/domain/failure/server_error.dart';

part 'player_cards_repository_impl.dart';

abstract class PlayerCardsRepository {
  const PlayerCardsRepository();

  Future<Either<Failure, PlayerCardsResponse>> getPlayerCards();
}
