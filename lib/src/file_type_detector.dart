// ignore_for_file: public_member_api_docs

import 'package:path/path.dart' as p;

enum FileType { image, video, word, excel, csv, text, md }

/// Detect the file type of the given file path.
///
/// The function supports the following file types:
/// - image: .jpg, .jpeg, .png, .gif, .bmp, .tiff
/// - video: .mp4, .avi, .mov, .mkv
/// - word: .doc, .docx
/// - excel: .xls, .xlsx
/// - csv: .csv
/// - ppt: .ppt, .pptx
/// - text: .txt, .md
FileType? detectFileType(String path) {
  final String extension = p.extension(path).toLowerCase();

  if (<String>['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff']
      .contains(extension)) {
    return FileType.image;
  } else if (<String>['.mp4', '.avi', '.mov', '.mkv'].contains(extension)) {
    return FileType.video;
  } else if (<String>['.doc', '.docx'].contains(extension)) {
    return FileType.word;
  } else if (<String>['.xls', '.xlsx'].contains(extension)) {
    return FileType.excel;
  } else if (extension == '.csv') {
    return FileType.csv;
  }
  /*else if (<String>['.ppt', '.pptx'].contains(extension)) {
    return FileType.ppt;*/

  else if (<String>['.txt'].contains(extension)) {
    return FileType.text;
  } else if (<String>['.md'].contains(extension)) {
    return FileType.md;
  } else {
    return null;
  }
}

bool supportedFile(String path) => detectFileType(path) != null;
