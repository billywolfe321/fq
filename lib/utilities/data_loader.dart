import 'package:flutter/services.dart';
import 'package:csv/csv.dart';

// Load the CSV data from the asset
Future<List<List<dynamic>>> loadCsvData() async {
  final data = await rootBundle.loadString('assets/data/flag_data.csv');
  List<List<dynamic>> csvTable = CsvToListConverter().convert(data);
  return csvTable;
}

// Filter the loaded data by continent
List<List<dynamic>> filterByContinent(List<List<dynamic>> data, String continent) {
  return data.where((row) => row[2].toLowerCase() == continent.toLowerCase()).toList();
}
