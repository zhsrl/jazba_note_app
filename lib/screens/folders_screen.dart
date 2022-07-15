import 'package:flutter/material.dart';
import 'package:jazba_app/consts.dart';
import 'package:jazba_app/widgets/folder_widget.dart';

class FoldersScreen extends StatefulWidget {
  const FoldersScreen({Key? key}) : super(key: key);

  @override
  State<FoldersScreen> createState() => _FoldersScreenState();
}

class _FoldersScreenState extends State<FoldersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('jinaqtar',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: MainColors.whiteColor)),
                  Icon(
                    Icons.calendar_month,
                    color: MainColors.whiteColor,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              FolderWidget(notes_count: 41, note_title: 'personal notes'),
              FolderWidget(notes_count: 259, note_title: 'about ui/ux'),
              FolderWidget(notes_count: 13, note_title: 'daily tasks'),
              FolderWidget(notes_count: 9, note_title: 'mathematic'),
              FolderWidget(notes_count: 16, note_title: 'sound names'),
              FolderWidget(notes_count: 61, note_title: 'others'),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                ConstFuns().showSnack('FAB!', context);
              },
              backgroundColor: MainColors.redColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.add),
            ),
          ),
        ));
  }
}
