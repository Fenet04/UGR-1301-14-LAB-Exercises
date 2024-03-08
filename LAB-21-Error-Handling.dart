import 'dart:io';

void main() {
  
  String filePath = 'example.txt'; 

  try {
 
    File file = File(filePath);
    String contents = file.readAsStringSync();

    print("File contents:");
    print(contents);
  } catch (e) {
   
    if (e is FileSystemException && e.osError != null && e.osError!.errorCode == 2) {
      print("Error: File not found.");
    } else {
      print("Error: $e");
    }
  }
}
