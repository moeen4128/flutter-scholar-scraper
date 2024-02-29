import 'package:flutter_test/flutter_test.dart';
import 'package:scholar_scraper/scraper.dart';

void main() {
  test('test scrapeAndSave', () async {
    final result = await ScholarScraper.scrapeAndSave('your_url', 'your_year');
    // Add assertions based on the expected result or behavior of your scrapeAndSave function
    expect(result['Author Name'], isNotNull);
    expect(result['Year'], 'your_year');
    expect(result['Count'], isNotNull);
  });

  test('test scrapeDetails', () async {
    final result = await ScholarScraper.scrapeDetails('your_url', 'your_year');
    // Add assertions based on the expected result or behavior of your scrapeDetails function
    expect(result['Author Name'], isNotNull);
    expect(result['Year'], 'your_year');
    expect(result['Count'], isNotNull);
  });

  // Add more tests as needed for other functions or classes in your package
}
