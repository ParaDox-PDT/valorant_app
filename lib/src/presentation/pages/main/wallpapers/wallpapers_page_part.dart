import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:valorant_app/src/core/extension/extension.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/wallpapers/wallpapers_response.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/wallpapers_bloc/wallpapers_bloc.dart';
import 'package:valorant_app/src/presentation/components/custom_sliver_app_bar/custom_sliver_app_bar.dart';
import 'package:valorant_app/src/presentation/components/loading_widgets/custom_shimmer.dart';
import 'package:valorant_app/src/presentation/pages/main/main_page_part.dart';

part 'wallpapers_page.dart';

part 'mixin/wallpapers_mixin.dart';

part 'widgets/wallpapers_photo_item.dart';

part 'widgets/wallpapers_photo_lists.dart';
