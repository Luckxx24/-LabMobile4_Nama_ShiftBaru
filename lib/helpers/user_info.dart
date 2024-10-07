import 'package:shared_preferences/shared_preferences.dart';

class UserInfo {
  // Menyimpan token ke SharedPreferences
  Future<void> setToken(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("token", value);
  }

  // Mendapatkan token dari SharedPreferences
  Future<String?> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("token");
  }

  // Menyimpan user ID ke SharedPreferences
  Future<void> setUserID(int value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt("userID", value);
  }

  // Mendapatkan user ID dari SharedPreferences
  Future<int?> getUserID() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt("userID");
  }

  // Menghapus semua data dari SharedPreferences (Logout)
  Future<void> logout() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}
