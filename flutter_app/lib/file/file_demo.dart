import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

///
/// des:
///
class FileDemo {
  ///
  /// 文件夹操作
  ///
  dir() async {
    //获取文档目录
    var rootDir = await getExternalStorageDirectory();
    //文档目录路径
    String rootPath = rootDir.absolute.path;
    print('$rootPath');
    var dir1 =
        await Directory('$rootPath${Platform.pathSeparator}dir1').create();
    print('${dir1.absolute.path}');

    //Platform.pathSeparator表示路径分隔符，也就是'/'
    var dir2 = await Directory(
            '$rootPath${Platform.pathSeparator}dir1${Platform.pathSeparator}dir2${Platform.pathSeparator}')
        .create(recursive: true);
    print('${dir2.absolute.path}');

    var dir3 = await dir2.rename('${dir2.parent.absolute.path}/dir3');
    print('${dir3.absolute.path}');

//    await dir3.delete();
//    await dir1.delete(recursive: true);
    Stream<FileSystemEntity> fileList = rootDir.list(recursive: false);
    await for (FileSystemEntity entity in fileList) {
      //文件、目录和链接都继承自FileSystemEntity
      //FileSystemEntity.type静态函数返回值为FileSystemEntityType
      //FileSystemEntityType有三个常量：
      //Directory、FILE、LINK、NOT_FOUND
      //FileSystemEntity.isFile .isLink .isDerectory可用于判断类型
      print(entity.path);
    }
  }

  ///
  /// 文件操作
  ///
  file() async {
    //获取文档目录
    var rootDir = await getExternalStorageDirectory();
    //文档目录路径
    String rootPath = rootDir.absolute.path;
    var file = await File('$rootPath/dir1/file.txt').create(recursive: true);
    print('$file');
    await file.writeAsString('Flutter 实战入门\n');
    await file.writeAsBytes(Utf8Encoder().convert("Flutter 实战入门"));
    var f = file.openWrite(mode: FileMode.append);
    for (int i = 0; i < 50; i++) {
      f.write('Flutter 实战入门\n');
    }
    List<String> lines = await file.readAsLines();
    lines.forEach((String line) => print(line));
    var content = Utf8Decoder().convert(await file.readAsBytes());
    file.delete();
  }

  http() async {
    var httpClient = new HttpClient();
    var uri = Uri(scheme: 'http', host: 'www.baidu.com', queryParameters: {
      'params1:': '',
      'params2:': '',
    });
    //打开http连接
    HttpClientRequest request = await httpClient.getUrl(uri);
    //如果需要设置headers
    request.headers.add('', '');
    HttpClientResponse response = await request.close();
    String responseBody = await response.transform(utf8.decoder).join();
    print('$responseBody');
  }

  de() {
    var jsonStr =
        '{"name": "flutter", "age": 2, "email": "flutter@example.com"}';
    Map<String, dynamic> jsonObj = json.decode(jsonStr);
    print('$jsonObj');

  }
}
