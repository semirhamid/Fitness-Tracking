import 'dart:io';

abstract class ILocalStorage {
  Future<File> readFile(String filePath);
  Future<String> updateFile(String filePath, File newFile);
  Future<String> createFile(File file);
  Future<void> deleteFile(String filePath);
  Future<String> downloadFile(String url);
}
