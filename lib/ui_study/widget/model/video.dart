class Video {
  String _title;
  String _subTitle;
  String _thumbnailUrl;
  String _upLoaderUrl;

//<editor-fold desc="Data Methods">
  Video({
    required String title,
    required String subTitle,
    required String thumbnailUrl,
    required String upLoaderUrl,
  })  : _title = title,
        _subTitle = subTitle,
        _thumbnailUrl = thumbnailUrl,
        _upLoaderUrl = upLoaderUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Video &&
          runtimeType == other.runtimeType &&
          _title == other._title &&
          _subTitle == other._subTitle &&
          _thumbnailUrl == other._thumbnailUrl &&
          _upLoaderUrl == other._upLoaderUrl);

  @override
  int get hashCode =>
      _title.hashCode ^
      _subTitle.hashCode ^
      _thumbnailUrl.hashCode ^
      _upLoaderUrl.hashCode;

  @override
  String toString() {
    return 'Video{ _title: $_title, _subTitle: $_subTitle, _thumbnailUrl: $_thumbnailUrl, _upLoaderUrl: $_upLoaderUrl,}';
  }

  Video copyWith({
    String? title,
    String? subTitle,
    String? thumbnailUrl,
    String? upLoaderUrl,
  }) {
    return Video(
      title: title ?? _title,
      subTitle: subTitle ?? _subTitle,
      thumbnailUrl: thumbnailUrl ?? _thumbnailUrl,
      upLoaderUrl: upLoaderUrl ?? _upLoaderUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_title': _title,
      '_subTitle': _subTitle,
      '_thumbnailUrl': _thumbnailUrl,
      '_upLoaderUrl': _upLoaderUrl,
    };
  }

  factory Video.fromMap(Map<String, dynamic> map) {
    return Video(
      title: map['_title'] as String,
      subTitle: map['_subTitle'] as String,
      thumbnailUrl: map['_thumbnailUrl'] as String,
      upLoaderUrl: map['_upLoaderUrl'] as String,
    );
  }

//</editor-fold>
}
