
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vrumies/shared/colors_value.dart';

import '../home/home_component.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  final List _bookmark = [
    {'img': 'roger1.png', 'name': 'ROGER CURTIS'}
  ];

  @override
  Widget build(BuildContext context) {
    return (_bookmark.isNotEmpty)
        ? _buildGrid(context)
        : _buildEmpetyList(context);
  }

  Row _buildEmpetyList(BuildContext context) {
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

  Row _buildGrid(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.74,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 86.0, vertical: 60),
              child: GridView.count(
                crossAxisCount: 4,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.7,
                mainAxisSpacing: 20,
                children: List.generate(
                  12,
                  (index) => Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: SizedBox(
                          width: 200,
                          height: 320,
                          child: Image.asset(
                            'assets/images/bg_top_vbt2.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 320,
                        child: Image.asset(
                          'assets/images/bg_top_vbt1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Mobile/shop services',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 9,
                                    letterSpacing: 3,
                                    color: ColorsValue.green),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, top: 9, bottom: 9),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 151,
                                  height: 218,
                                  child: Image.asset(
                                    'assets/images/roger1.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 38.0),
                              child: Text(
                                'ROGER CURTIS',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    letterSpacing: 4,
                                    fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 42.0, top: 3, bottom: 7),
                              child: Text(
                                'Full inspection',
                                style: TextStyle(
                                    fontSize: 9,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.w600,
                                    color: ColorsValue.green),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 67),
                              child: Text(
                                '\$80-120',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    color: ColorsValue.green),
                              ),
                            )
                          ],
                        ),
                      ),
                      _buildBookMarkAndStar()
                    ],
                  ),
                ),
              ),
            )),
        const HomeRightSide()
      ],
    );
  }

  Positioned _buildBookMarkAndStar() {
    return Positioned(
      top: 40,
      right: 70,
      left: 0,
      child: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.22)),
              child: SvgPicture.asset(
                'assets/icons/icon_solid_bookmark.svg',
                width: 19,
                height: 19,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: SvgPicture.asset(
                      'assets/icons/icon_star.svg',
                      width: 11,
                      height: 11,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
