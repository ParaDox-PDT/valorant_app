import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/themes/app_typography.dart';
import 'package:valorant_app/src/config/themes/themes.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/ranks/ranks_response.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/ranks_bloc/ranks_bloc.dart';
import 'package:valorant_app/src/presentation/components/custom_sliver_app_bar/custom_sliver_app_bar.dart';
import 'package:valorant_app/src/presentation/components/loading_widgets/staggered_dots_wave.dart';

part 'ranks_page.dart';

part 'widgets/ranks_list.dart';

part 'widgets/ranks_list_item.dart';

part 'mixin/ranks_mixin.dart';