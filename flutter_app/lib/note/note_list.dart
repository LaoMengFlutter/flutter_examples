import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/note/note_edit.dart';
import 'package:flutter_app/note/note_info.dart';
import 'package:path_provider/path_provider.dart';

///
/// des: 日记集合
///
class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  List<NoteInfo> _noteList = [];

  @override
  void initState() {
    _loadNotes();
    super.initState();
  }

  ///
  /// 遍历已经存在的日记
  ///
  _loadNotes() async {
    getTemporaryDirectory().then((dir) async {
      List<FileSystemEntity> dirs = dir.listSync(recursive: false);
      List<FileSystemEntity> files = [];
      for (var dir in dirs) {
        if ((await dir.stat()).type == FileSystemEntityType.file) {
          files.add(dir);
        }
      }
      //排序
      files.sort((f1, f2) {
        try {
          var dt1 = File(f1.path).lastModifiedSync();
          var dt2 = File(f2.path).lastModifiedSync();
          return dt2.millisecondsSinceEpoch - dt1.millisecondsSinceEpoch;
        } catch (e) {
          print('$e');
          return 0;
        }
      });
      _noteList.clear();
      files.forEach((f) {
        var file = File(f.path);
        if (file.path.endsWith('txt')) {
          _noteList.add(NoteInfo(getFileNameFromPath(file.path), file.path,
              file.lastModifiedSync()));
        }
      });

      setState(() {});
    });
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
      floatingActionButton: RaisedButton(
        padding: EdgeInsets.all(10),
        child: Icon(
          Icons.mode_edit,
          color: Theme.of(context).primaryColor,
          size: 35,
        ),
        shape: CircleBorder(),
        onPressed: () async {
          var result = await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) {
            return NoteEdit();
          }));
          _loadNotes();
        },
      ),
      body: _noteList.length == 0 ? _buildEmpty() : _buildList(),
    );
  }
  ///
  /// 构建没有写日记的页面
  ///
  _buildEmpty() {
    return Center(
      child: Text(
        '空空如也，快去写日记吧',
        style: TextStyle(color: Colors.black.withOpacity(.6)),
      ),
    );
  }
  ///
  /// 构建日记列表
  ///
  _buildList() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () async{
            var result = await Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return NoteEdit(path: _noteList[index].path,);
            }));
            _loadNotes();
          },
          child: Container(
            child: ListTile(
              title: Text('${_noteList[index].name}'),
              subtitle: Text('${_noteList[index].updateTime}'),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 1,
        );
      },
      itemCount: _noteList.length,
    );
  }
}
