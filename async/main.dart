

import 'dart:io';

main() {

  File file = new File('main.edart');
  file.open().then(processFileAsync).catchError((error, stackTrace) =>
    print('Catched error is $error\n$stackTrace') , test: (error) {
    return error is FileSystemException;
  }).whenComplete( () => print('File closed'));
  print('Process File...');

}

processFileAsync(RandomAccessFile file) {

  file.length().then((int length) {
    file.read(length).then(readFile).whenComplete(() => file.close());
  });

}

readFile(List<int> content) {

  String contentAsString = new String.fromCharCodes(content);
  print('Content: $contentAsString');

}

processFileSync() {

  try {

    File file = new File('data.txt');
    RandomAccessFile handler = file.openSync();
    List<int> content = handler.readSync(handler.lengthSync());
    String contentAsString = new String.fromCharCodes(content);

    print('Content: $contentAsString');
    handler.closeSync();

  } on FileSystemException catch(e) {
    print(e.message);
  }

}