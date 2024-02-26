import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/src/config/themes/app_typography.dart';
import 'package:valorant_app/src/config/themes/themes.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/agents/agent_detail_response.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agent_detail_bloc/agent_detail_bloc.dart';
import 'package:valorant_app/src/presentation/components/detail_pages_info_item/detail_pages_info_item_part.dart';
import 'package:valorant_app/src/presentation/components/loading_widgets/staggered_dots_wave.dart';


part 'agent_detail_page.dart';

part 'mixin/agent_detail_mixin.dart';

part 'widget/agent_triangle.dart';

part 'widget/agent_detail_app_bar.dart';

part 'widget/agent_detail_info_item.dart';

part 'widget/agent_detail_info.dart';

part'widget/agent_detail_abilities_item.dart';
part'widget/agent_detail_abilities.dart';