// lib/data_provider.dart

import 'package:flutter/cupertino.dart';

/// A data provider class for managing scholar-related data.
class DataProvider extends ChangeNotifier {
  /// Output information provided by the data provider.
  String output = '';

  /// Controller for managing the Google Scholar URL.
  TextEditingController urlController = TextEditingController();

  /// Controller for managing the target year for data analysis.
  TextEditingController yearController = TextEditingController();

  /// List of details extracted from Google Scholar profiles.
  List<Map<String, dynamic>> details = [];

  /// Update the output information and notify listeners.
  void updateOutput(String newOutput) {
    output = newOutput;
    notifyListeners();
  }

  /// Clear the details list.
  void clearDetails() {
    details.clear();
    notifyListeners();
  }
}
