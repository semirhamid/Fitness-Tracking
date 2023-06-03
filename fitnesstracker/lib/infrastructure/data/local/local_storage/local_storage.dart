import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../domain/data/local/localStorage/i_local_storage.dart';

@LazySingleton(as: ILocalStorage)
class LocalStorage implements ILocalStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> readFile(String filePath) async {
    return File(filePath);
  }

  Future<String> updateFile(String filePath, File newFile) async {
    final newFilePath = await _localFile(newFile.path.split('/').last);
    await newFile.copy(newFilePath);
    return newFilePath;
  }

  Future<String> createFile(File file) async {
    final newFilePath = await _localFile(file.path.split('/').last);
    await file.copy(newFilePath);
    return newFilePath;
  }

  Future<void> deleteFile(String filePath) async {
    final file = File(filePath);
    if (await file.exists()) {
      await file.delete();
    }
  }

  Future<String> downloadFile(String url) async {
    final response = await http.get(Uri.parse(url));
    final fileName = url.split('/').last;
    final filePath = await _localFile(fileName);
    await File(filePath).writeAsBytes(response.bodyBytes);
    return filePath;
  }

  Future<String> _localFile(String filename) async {
    final path = await _localPath;
    return '$path/$filename';
  }
}
