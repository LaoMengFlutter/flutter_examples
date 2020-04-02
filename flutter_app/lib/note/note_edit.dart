import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

///
/// des:日志编辑
///
class NoteEdit extends StatefulWidget {
  const NoteEdit({this.path});

  final String path;

  @override
  State<StatefulWidget> createState() => _NoteEditState();
}

class _NoteEditState extends State<NoteEdit> {
  TextEditingController _titleController;
  TextEditingController _contentController;

  _save() async {
    try {
      var title = _titleController.text;
      var content = _contentController.text;
      var rootDir = await getTemporaryDirectory();
      var file = File('${rootDir.path}/$title.txt');
      var exist = file.existsSync();
      if (!exist) {
        //不存在，创建文件
        file.createSync(recursive: true);
      }
      file.writeAsStringSync(content);
      Navigator.of(context).pop(title);
    } catch (e) {
      print('$e');
    }
  }

  @override
  void initState() {
    _titleController = TextEditingController();
    _contentController = TextEditingController();
    _loadData();
    super.initState();
  }

  _loadData() async {
    if (widget.path != null) {
      var fileName = getFileNameFromPath(widget.path);
      fileName = fileName.substring(0,fileName.length-4);
      _titleController.text =fileName ;
      var content =
          Utf8Decoder().convert(await File(widget.path).readAsBytes());
      _contentController.text = content;
      setState(() {});
    }
  }

  /// 从路径中提取文件名
  String getFileNameFromPath(String path) {
    int index = path.lastIndexOf('/');
    if (index <= 0) {
      return path;
    }
    return path.substring(index + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            tooltip: 'Show Snackbar',
            onPressed: _save,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _titleController,
                decoration: InputDecoration(hintText: '输入日记名称'),
              ),
              Expanded(
                child: TextField(
                  controller: _contentController,
                  decoration: InputDecoration(hintText: '开始你的故事'),
                  maxLines: 2000,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
