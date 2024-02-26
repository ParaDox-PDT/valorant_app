import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/src/config/themes/themes.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/weapons/weapons_response.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/weapons_bloc/weapon_detail_bloc/weapon_detail_bloc.dart';
import 'package:valorant_app/src/presentation/components/detail_pages_info_item/detail_pages_info_item_part.dart';
import 'package:valorant_app/src/presentation/components/loading_widgets/staggered_dots_wave.dart';
import 'package:valorant_app/src/presentation/pages/main/agents/agent_detail/agent_detail_page_part.dart';

part 'weapon_detail_page.dart';
part 'mixin/weapon_detail_mixin.dart';

part 'widgets/weapon_detail_app_bar.dart';

part 'widgets/weapon_detail_info.dart';