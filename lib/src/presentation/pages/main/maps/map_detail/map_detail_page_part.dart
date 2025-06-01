import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/themes/app_typography.dart';
import 'package:valorant_app/src/config/themes/themes.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/maps/maps_response.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/map_bloc/map_detail_bloc/map_detail_bloc.dart';
import 'package:valorant_app/src/presentation/components/custom_sliver_app_bar/custom_sliver_app_bar.dart';
import 'package:valorant_app/src/presentation/components/loading_widgets/staggered_dots_wave.dart';

part 'map_detail_page.dart';

part 'mixin/map_detail_mixin.dart';

part 'widgets/map_detail_rich_text.dart';

part 'widgets/map_detail_items.dart';