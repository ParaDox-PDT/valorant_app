import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/presentation/bloc/video_player_bloc/video_player_bloc.dart';
import 'package:valorant_app/src/presentation/components/loading_widgets/staggered_dots_wave.dart';
import 'package:video_player/video_player.dart';

part 'video_player.dart';
part 'mixin/video_player_mixin.dart';