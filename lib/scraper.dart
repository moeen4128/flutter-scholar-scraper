// lib/src/scraper.dart
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as html;

class ScholarScraper {
  static Future<Map<String, dynamic>> scrapeAndSave(
      String url, String year) async {
    try {
      final response = await http
          .get(Uri.parse(url), headers: {'User-agent': 'your bot 0.1'});
      final document = html.parse(response.body);

      // Replace the following with your specific scraping logic
      final authors = document.querySelector('#gsc_prf_in');
      final authorName = authors?.text;

      final unYear = document.querySelectorAll('.gsc_a_h.gsc_a_hc.gs_ibl');
      final allYear = unYear.map((element) => element.text).toList();
      final counting = allYear.where((element) => element == year).length;

      Map<String, dynamic> data = {
        'Author Name': authorName,
        'Year': year,
        'Count': counting,
      };

      return data;
    } catch (e) {
      // Handle exceptions as needed
      print('Error in scrapeAndSave: $e');
      throw e;
    }
  }

  static Future<Map<String, dynamic>> scrapeDetails(
      String url, String year) async {
    try {
      final response = await http
          .get(Uri.parse(url), headers: {'User-agent': 'your bot 0.1'});
      final document = html.parse(response.body);

      // Replace the following with your specific scraping logic
      final authors = document.querySelector('#gsc_prf_in');
      final authorName = authors?.text;

      final unYear = document.querySelectorAll('.gsc_a_h.gsc_a_hc.gs_ibl');
      final allYear = unYear.map((element) => element.text).toList();
      final counting = allYear.where((element) => element == year).length;

      Map<String, dynamic> data = {
        'Author Name': authorName,
        'Year': year,
        'Count': counting,
      };

      return data;
    } catch (e) {
      // Handle exceptions as needed
      print('Error in scrapeDetails: $e');
      throw e;
    }
  }
}
