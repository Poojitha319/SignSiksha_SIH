class Video {
  final int id;
  final String title;
  final String videoUrl;

  Video({
    required this.id,
    required this.title,
    required this.videoUrl,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'],
      title: json['title'],
      videoUrl: json['video'],
    );
  }
}
