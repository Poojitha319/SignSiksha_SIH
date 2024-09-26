import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:io' as io;

class UploadVideoScreen extends StatefulWidget {
  @override
  _UploadVideoScreenState createState() => _UploadVideoScreenState();
}

class _UploadVideoScreenState extends State<UploadVideoScreen> {
  final ImagePicker _picker = ImagePicker();
  File? _videoFile;

  Future<void> _pickVideo() async {
    final pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _videoFile = File(pickedFile.path);
      });
    }
  }

  String getBaseUrl() {
    if (io.Platform.isAndroid) {
      // For Android Emulator use 10.0.2.2
      return 'http://10.0.2.2:3000';
    } else if (io.Platform.isIOS) {
      // For iOS simulator use localhost (127.0.0.1)
      return 'http://127.0.0.1:3000';
    } else {
      // For physical devices or other platforms, replace with machine's IP address
      return 'http://192.168.116.155:3000';
    }
  }

  Future<void> _uploadVideo() async {
    if (_videoFile == null) return;

    String baseUrl = getBaseUrl();
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('$baseUrl/media/upload-video'),
    );
    request.files.add(await http.MultipartFile.fromPath('file', _videoFile!.path));

    var response = await request.send();
    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Video uploaded successfully')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to upload video')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Video'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _videoFile == null
                ? Text('No video selected.')
                : Text('Video selected: ${_videoFile!.path}'),
            ElevatedButton(
              onPressed: _pickVideo,
              child: Text('Pick Video'),
            ),
            ElevatedButton(
              onPressed: _uploadVideo,
              child: Text('Upload Video'),
            ),
          ],
        ),
      ),
    );
  }
}
