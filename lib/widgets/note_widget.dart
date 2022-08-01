import 'package:flutter/material.dart';
import 'package:jazba_app/consts.dart';

import '../models/note.dart';
import '../screens/note_screen.dart';

class NoteItem extends StatelessWidget {
  final Note note;
  NoteItem(this.note);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NoteScreen()));
      },
      child: Container(
          height: 170,
          width: 150,
          decoration: BoxDecoration(
              color: MainColors.notesColor,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(note.title,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: MainColors.darkColor)),
                Text(note.shortNoteText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style:
                        TextStyle(fontSize: 14, color: MainColors.darkColor)),
              ],
            ),
          )),
    );
  }
}
