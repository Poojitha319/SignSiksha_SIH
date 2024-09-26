// lib/screens/alphabets_numbers_screen.dart
import 'package:flutter/material.dart';
import 'package:signsiksha/models/video.dart';  // Import the Video model
import 'package:signsiksha/services/video_service.dart';  // Import the VideoService
import 'package:signsiksha/screens/video_player.dart';  // Import the Video Player Screen

class AlphabetsNumbersScreen extends StatefulWidget {
  @override
  _AlphabetsNumbersScreenState createState() => _AlphabetsNumbersScreenState();
}

class _AlphabetsNumbersScreenState extends State<AlphabetsNumbersScreen> {
  late Future<List<Video>> _videoList;
  final VideoService _videoService = VideoService();

  @override
  void initState() {
    super.initState();
    _videoList = _videoService.fetchVideos();  // Fetch videos on screen load
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabets & Numbers Videos'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade100, Colors.blue.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: FutureBuilder<List<Video>>(
          future: _videoList,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No videos available'));
            }

            List<Video> videos = snapshot.data!;

            return ListView.builder(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                Video video = videos[index];
                return ListTile(
                  title: Text(video.title),
                  trailing: Icon(Icons.play_arrow),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            VideoPlayerScreen(videoUrl: video.videoUrl),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
