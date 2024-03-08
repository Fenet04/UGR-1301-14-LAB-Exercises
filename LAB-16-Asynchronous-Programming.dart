import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  try {
   
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      File file = File(savePath);
      await file.writeAsBytes(response.bodyBytes);

      print('File downloaded successfully to: $savePath');
    } else {
      print('Failed to download file: ${response.statusCode}');
    }
  } catch (e) {
    print('Error while downloading file: $e');
  }
}

void main() async {
  String url = 'https://example.com/file-to-download.txt';
  String savePath = 'downloaded_file.txt';


  await downloadFile(url, savePath);
}
