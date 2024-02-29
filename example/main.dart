// example/main.dart
import 'package:scholar_scraper/scholar_scraper.dart';

void main() async {
  // Your example code here
  final resultSave =
      await ScholarScraper.scrapeAndSave('your_url', 'your_year');
  print('Scrape and Save Result: $resultSave');

  final resultDetails =
      await ScholarScraper.scrapeDetails('your_url', 'your_year');
  print('Scrape Details Result: $resultDetails');
}
