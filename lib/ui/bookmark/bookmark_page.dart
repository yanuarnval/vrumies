import 'package:flutter/material.dart';
import 'package:vrumies/shared/colors_value.dart';
import 'package:vrumies/ui/home/home_component.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.74,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/bookmark_none.png',
                  width: 500,
                  height: 500,
                ),
                const Text(
                  'You don’t have any bookmark',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 37,
                      color: ColorsValue.green),
                ),
                const Text(
                  'Once you make a new bookmark it will appear here.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Colors.white),
                ),
              ],
            )),
        const HomeRightSide(),
      ],
    );
  }
}
