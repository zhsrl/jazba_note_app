import 'package:flutter/material.dart';
import 'package:jazba_app/consts.dart';
import 'package:jazba_app/widgets/note_card_widget.dart';
import 'package:jazba_app/widgets/notes_grid_view.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: MainColors.whiteToneColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: MainColors.darkColor,
                      ),
                    ),
                    SizedBox(
                      height: fullHeight * 0.02,
                    ),
                    Text('jazbalar',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 32,
                            color: MainColors.darkColor)),
                    NoteItem()
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
