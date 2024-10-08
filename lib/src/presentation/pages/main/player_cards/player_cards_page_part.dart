import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/src/config/themes/themes.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/player_cards/player_cards_response.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/player_cards_bloc/player_cards_bloc.dart';
import 'package:valorant_app/src/presentation/components/custom_sliver_app_bar/custom_sliver_app_bar.dart';
import 'package:valorant_app/src/presentation/components/loading_widgets/staggered_dots_wave.dart';
import 'package:valorant_app/src/presentation/pages/main/agents/agents_page_part.dart';

part 'player_cards_page.dart';

part 'widgets/player_cards_list_item.dart';

part 'widgets/player_cards_list.dart';