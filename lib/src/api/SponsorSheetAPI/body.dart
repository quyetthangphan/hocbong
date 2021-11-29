import 'package:gsheets/gsheets.dart';

class SponsorSheetAPI {
  static const _creadentials = r'''
{
  "type": "service_account",
  "project_id": "project-sms-2021",
  "private_key_id": "947e6d0889ba532d15169d250b7240c027a61a05",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDbet/ZceuwCuH8\nt9OhPo/014bjIL0Ghyq6tCknnHeVH06cC8H9bupe6sFlo8PZn6uhYT544MxO3NDT\n4v3Bi/AKnUo/OIsurdWYQSN8YIXEhp6QUqamS4cFISLVDmB/oSQjq6K86zb//S2g\n80OR0deI4SMEMzl+HZ8Pk5LAebCSH3qtUmcoHyrFiaXwfCtyPYUF5RQXQiZ/yf1X\nTbr74mCBT8Zx6MPWjaa9I2cqATkp6ZH0wlXgvm23adjudTu2p7O8FEILtBVHjMXo\nWysoNblpGLbPBQQAKt0BF89V0D252hBkswkTLUjq9NgeASBW/bIouZEEId4sQApe\nniDS7wY3AgMBAAECggEAD9m+4thMWilfCr5H5WQ8R0Vtc2fA3wDSACvUsQymwjlB\nlxluSBxDhtlTYEDEeyoB3iTEuzwY5TUjS7of82Nk0Y9sdkZiHtvlChriMjBSWNAU\nEX42lNnthVxQRKzGIVGE56KUnSorja8+JVqMLbLG6xa/TaVZaJdBDoHs3kOrkdHb\n7+vHcCxFN+vt2bEBzlL4cX2Z9xD2mJ/K7fGqyr4gBN26Bsmi6Nu7FqE3biadyZ7P\nQaJOyQHaBialwV4Y1e3K+rn2ugrP1dMrJoyutov0BenhCfxkUAyf87kwrNGF6zBi\nRlk1nuFAyOF9rps1+j9zJcA13pUHuB70dx2HurvzmQKBgQDvf+V5HXdJOFPtTsu6\n3Z8yH4yebuYYlD7p7J5KTdqIO19coF+HM2FzBmqCV1M0Kh5BESKUf++CA7yL2Jh/\nC89RY5Lgbt2yOOF4N3aqICuPic1WAAhX5h+H5pEyHgvKxNptrkjlwFlCzo2tBl/C\nEOV3WXpd/IUzMMvAxmktsPQOAwKBgQDqmeNPS4YAJ7twm0Kq7IYor5sSXpZFi5HO\nk5kP1u0Hp7DB2LGoPxMbn/0YkMw0QnPqednS1ObFn6DB+Cz+OJOkk2kgDqoKiMzk\nxl/rW0y3KHsx3gAQTbO1lA35wzJDNm3XrfNcmSZdS0hck+5bwsyXxsosOc+2AhIV\n4eAX89w6vQKBgHoGUPWvhKpir6g2QGj6J/VSy8OhP00AozluXIwBNLm6fnDkKSfq\njtkbSMMWGQd3+iguwc6ljHNS0grylWgNrViLgjclZYE7p+0nXSd68pbUoDEUHSwj\nzKbiW9IMKvfp6lx9sxiUMyZttROWLs3i6/cuOMGQOpGFaBrVPJuSEBbfAoGAYZT5\nE/aaGl5sfP5X0LjpZOsGWbG2V98iGwcR16DSnyiFQVxdKVpzHD6EDD/OcL5jcNiW\nXjfodbNcLtKIBIaMAxy90XPIDvGwKEjLhR5I3rab57Yr2Jw5cAHRfl5O/d4Z+miE\nnbOmXY/+3WM69jgk2cz6M0MovtBFrYxypgPtSxECgYAKwStdJ5DOl1/XKAaq0bda\nT8HKD00RUKDRxCRk1BgZtXTYQxb2HaJE2sX1SzokeZ0Buf2zBwUZrnDUyuMxHzOl\n9Iojn22IuCI+TACUif8ZgkxXqQ781jucmITNhIhm9IOXdAnfn1LCV+rMKJGPkam0\nIZg3TnnQsfFReUQX5llxrA==\n-----END PRIVATE KEY-----\n",
  "client_email": "smsapp@project-sms-2021.iam.gserviceaccount.com",
  "client_id": "106825106497595869133",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/smsapp%40project-sms-2021.iam.gserviceaccount.com"
}
''';

  static final _spreadsheetId = '1OHaJuktocln6NjKCwlNt_2eXFKtAYS-DvuDhqyili7w';
  static final _gsheets = GSheets(_creadentials);
  static Worksheet _sheetSumSponsor, _sheetChiTiet;

  static Future init(String title) async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_spreadsheetId);

      _sheetSumSponsor = await _getWorkSheet(spreadsheet, title: title);
      _sheetChiTiet = await _getWorkSheet(spreadsheet, title: 'ChiTiet');
    } catch (e) {
      print('Fix :$e');
    }
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
    String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title);
    }
  }

  /// Method Communication Client vs Google Sheet Data

  static Future<List<List<String>>> getAllSumSponsorData() async {
    if (_sheetSumSponsor == null) return null;
    return await _sheetSumSponsor.values.allRows();
  }

  static Future<List<Map<String, String>>> getAllChiTiet() async {
    if (_sheetChiTiet == null) return null;
    return await _sheetChiTiet.values.map.allRows();
  }
}
