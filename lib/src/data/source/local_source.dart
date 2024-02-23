import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/agents/agents_response.dart';
import 'package:valorant_app/src/data/models/weapons/weapons_response.dart';

final class LocalSource {
  const LocalSource(this.box);

  final Box<dynamic> box;

  String get locale => box.get(
        AppKeys.languageCode,
        defaultValue: defaultLocale,
      ) as String;

  bool get lanSelected =>
      box.get(AppKeys.langSelected, defaultValue: false) is bool
          ? box.get(AppKeys.langSelected, defaultValue: false) as bool
          : false;

  Future<void> setThemeMode(ThemeMode mode) async {
    await box.put(AppKeys.themeMode, mode.name);
  }

  Future<void> setLocale(String lang) async {
    await box.put(AppKeys.languageCode, lang);
  }

  Future<void> setAgents(Agents agents) async {
    await box.put(AppKeys.agents, agents);
  }

  Agents? getAgents() => box.get(
      AppKeys.agents,
    );

  Future<void> setWeapons(WeaponsResponse weapons)async{
    await box.put(AppKeys.weapons, weapons);
  }

  WeaponsResponse? getWeapons() => box.get(
    AppKeys.weapons,
  );

  Future<void> setKey(String key, String value) async {
    await box.put(key, value);
  }

  Future<void> setLangSelected({required bool value}) async {
    await box.put(AppKeys.langSelected, value);
  }

  String getKey(String key) => box.get(key, defaultValue: '') as String;

  ThemeMode get themeMode => switch (box.get(AppKeys.themeMode)) {
        'system' => ThemeMode.system,
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        _ => ThemeMode.light,
      };

  Future<void> clear() async {
    await box.clear();
  }
}

HiveInterface hiveRegister() => Hive
  ..registerAdapter(AgentsAdapter())
  ..registerAdapter(AgentsDataAdapter())
  ..registerAdapter(AgentsRoleAdapter())
  ..registerAdapter(AgentsAbilitiesAdapter());
