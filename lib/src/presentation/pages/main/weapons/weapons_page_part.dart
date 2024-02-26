import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/themes/themes.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/weapons/weapons_response.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/weapons_bloc/weapons_bloc.dart';
import 'package:valorant_app/src/presentation/components/custom_paint_items/custom_paint_items.dart';
import 'package:valorant_app/src/presentation/components/custom_sliver_app_bar/custom_sliver_app_bar.dart';
import 'package:valorant_app/src/presentation/pages/main/agents/agents_page_part.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

part 'weapons_page.dart';

part 'widgets/weapons_list_inner_item.dart';
part 'widgets/weapons_list_last_item.dart';
part 'widgets/weapons_list.dart';