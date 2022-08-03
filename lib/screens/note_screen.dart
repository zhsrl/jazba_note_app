import 'package:flutter/material.dart';
import 'package:jazba_app/consts.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

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
                  Icons.arrow_back_ios_new_outlined,
                  color: MainColors.darkColor,
                ),
              ),
              backgroundColor: MainColors.whiteToneColor,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.bookmark_add_outlined,
                    color: MainColors.darkColor,
                  ),
                ),
              ],
            )
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('CREATED BY - ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: MainColors.c9c9c9)),
                      Text('12/05/2023',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: MainColors.c9c9c9))
                    ],
                  ),
                  SizedBox(
                    height: fullHeight * 0.03,
                  ),
                  Text('how I found a new dream',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: fullHeight * 0.02,
                  ),
                  Text(
                      'Duis quis lacus vel ante commodo blandit. Pellentesque velit leo, rutrum vel nisl scelerisque, placerat condimentum nulla. Nam in enim at quam rhoncus egestas non at dui. Fusce id sapien et mauris tempor consequat id in augue. Sed nec neque nisi. Sed tempus nisi quis sem bibendum, ut fringilla metus vestibulum. Cras nec lorem at ipsum dignissim porttitor quis ac eros. Nullam vestibulum tincidunt nunc nec dictum.',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w200)),
                  SizedBox(
                    height: fullHeight * 0.03,
                  ),
                ],
              ),
              BottomNavigation()
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
            color: MainColors.darkColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.add_a_photo,
                color: MainColors.whiteToneColor,
              ),
              Icon(
                Icons.check_box_rounded,
                color: MainColors.whiteToneColor,
              ),
              Icon(
                Icons.share_rounded,
                color: MainColors.whiteToneColor,
              ),
              Icon(
                Icons.favorite_border_outlined,
                color: MainColors.whiteToneColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TaskTemplateWidget extends StatefulWidget {
  TaskTemplateWidget({Key? key}) : super(key: key);

  @override
  State<TaskTemplateWidget> createState() => _TaskTemplateWidgetState();
}

class _TaskTemplateWidgetState extends State<TaskTemplateWidget> {
  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = false;

    return Row(
      children: [
        Checkbox(
            value: checkBoxValue,
            onChanged: (newValue) {
              setState(() {
                checkBoxValue = newValue!;
              });
            })
      ],
    );
  }
}
