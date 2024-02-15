part of 'extension.dart';

extension BuildContextExtension on BuildContext {
  String tr(String key)=> AppLocalizations.of(this).translate(key);
}