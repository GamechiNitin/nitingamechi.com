// data/data_sources/local_data_source_impl.dart
import 'dart:convert';
import 'package:nitingamechi/ui/features/dashboard/data/models/welcome_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local_data_source.dart';

class LocalDataSourceImpl implements LocalDataSource {
  final SharedPreferences sharedPreferences;

  LocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> cacheData(DashboardResponse response) async {
    final String jsonData = jsonEncode(response.toJson());
    await sharedPreferences.setString(
        'dashboard_data', jsonData); // Caching data in SharedPreferences
  }

  @override
  Future<DashboardResponse?> getCachedData() async {
    final jsonString = sharedPreferences.getString('dashboard_data');
    if (jsonString != null) {
      return DashboardResponse.fromJson(
          jsonDecode(jsonString)); // Parsing cached data
    } else {
      return null; // Return null if no cached data is found
    }
  }
}
