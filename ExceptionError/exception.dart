
import 'dart:io';

main(List<String> args) {
  
  
  /*
  Uri uri = new Uri.file('EE.dart');
  
  if (uri != null) {

    File file = new File.fromUri(uri);

    if(file.existsSync()) {
      RandomAccessFile random = file.openSync();
    }

  } else {
    print('File NOT exist');
  }
  */

  RandomAccessFile random;

  try {
    
    Uri uri = new Uri.file("file.json");
    File file = new File.fromUri(uri);

    random = file.openSync();

    List<int> notReadyContent = 
         random.readSync(random.lengthSync());

    String content = new String.fromCharCodes(notReadyContent);

    print('File content: ${content}');
  } on ArgumentError catch(ex) {

  } on UnsupportedError catch(ex) {

  } on FileSystemException catch(ex) {

  } finally {

    try {
      random.closeSync();
    } on FileSystemException catch (ex) {
      
    } 

  }

}