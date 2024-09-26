import 'dart:convert';
import 'dart:io' as io;  
import 'package:http/http.dart' as http;
import 'package:signsiksha/models/video.dart'; 

class VideoService {
  
  String getBaseUrl() {
    if (io.Platform.isAndroid) {
      return 'http://10.0.2.2:3000/media';  
    } else if (io.Platform.isIOS) {
      return 'http://127.0.0.1:3000/media';  
    } else {
      return 'http://192.168.116.155:3000/media';  
    }
  }

  Future<List<Video>> fetchVideos() async {
    String baseUrl = getBaseUrl();
    print("Base URL: $baseUrl"); 
    final response = await http.get(Uri.parse('$baseUrl/videos/'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Video.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load videos');
    }
  }
}
