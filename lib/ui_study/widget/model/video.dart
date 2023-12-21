class Video {
  String title;
  String subTitle;
  String thumbnailUrl;
  String upLoaderUrl;

//<editor-fold desc="Data Methods">
  Video({
    required this.title,
    required this.subTitle,
    required this.thumbnailUrl,
    required this.upLoaderUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Video &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          subTitle == other.subTitle &&
          thumbnailUrl == other.thumbnailUrl &&
          upLoaderUrl == other.upLoaderUrl);

  @override
  int get hashCode =>
      title.hashCode ^
      subTitle.hashCode ^
      thumbnailUrl.hashCode ^
      upLoaderUrl.hashCode;

  @override
  String toString() {
    return 'Video{' +
        ' title: $title,' +
        ' subTitle: $subTitle,' +
        ' thumbnailUrl: $thumbnailUrl,' +
        ' upLoaderUrl: $upLoaderUrl,' +
        '}';
  }

  Video copyWith({
    String? title,
    String? subTitle,
    String? thumbnailUrl,
    String? upLoaderUrl,
  }) {
    return Video(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      upLoaderUrl: upLoaderUrl ?? this.upLoaderUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'subTitle': this.subTitle,
      'thumbnailUrl': this.thumbnailUrl,
      'upLoaderUrl': this.upLoaderUrl,
    };
  }

  factory Video.fromMap(Map<String, dynamic> map) {
    return Video(
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      thumbnailUrl: map['thumbnailUrl'] as String,
      upLoaderUrl: map['upLoaderUrl'] as String,
    );
  }

//</editor-fold>
}
