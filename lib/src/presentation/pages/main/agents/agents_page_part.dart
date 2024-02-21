import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/config/themes/app_typography.dart';
import 'package:valorant_app/src/config/themes/themes.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/agents/agents_response.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agents_bloc.dart';
import 'package:valorant_app/src/presentation/components/custom_sliver_app_bar/custom_sliver_app_bar.dart';
import 'package:valorant_app/src/presentation/components/loading_widgets/custom_shimmer.dart';


part 'agents_page.dart';

part 'widgets/agents_image.dart';

part 'widgets/agents_item.dart';

part 'widgets/agents_list_shimmer.dart';

