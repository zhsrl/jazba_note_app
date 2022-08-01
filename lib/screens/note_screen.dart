import 'package:flutter/material.dart';
import 'package:jazba_app/consts.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: MainColors.whiteColor,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: MainColors.darkColor,
                  ),
                ),
                backgroundColor: MainColors.whiteColor,
                actions: [
                  Icon(
                    Icons.bookmark_add_outlined,
                    color: MainColors.darkColor,
                  ),
                ],
              )
            ];
          },
          body: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('CREATED BY - ',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('12/05/2023',
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(
                  height: fullHeight * 0.03,
                ),
                Text('how I found a new dream',
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: fullHeight * 0.02,
                ),
                Text('Description',
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ));
  }
}
