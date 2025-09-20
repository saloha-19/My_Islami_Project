import 'package:shared_preferences/shared_preferences.dart';

class CachedLocalStorage {
  late SharedPreferences prefs;

  final storageKey = "suraList";

  Future<void> setStringValues(String value) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString(storageKey, value);
  }

  Future<String?> getStringValue() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString(storageKey);
  }
}
