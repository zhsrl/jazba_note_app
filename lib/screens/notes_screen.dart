import 'package:flutter/material.dart';
import 'package:jazba_app/widgets/note_widget.dart';
import 'package:jazba_app/widgets/notes_grid_view.dart';

import '../consts.dart';
import '../widgets/notes_grid_view.dart';

class NotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MainColors.whiteToneColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: MainColors.darkColor,
                ),
              ),
              forceElevated: innerBoxIsScrolled,
              floating: true,
              title: Text('personal notes',
                  style: TextStyle(color: MainColors.darkColor)),
              backgroundColor: MainColors.whiteToneColor,
            )
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(12),
          child: NoteGridView(),
        ),
      ),
    );
  }
}
