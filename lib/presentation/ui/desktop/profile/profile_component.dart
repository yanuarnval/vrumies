import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vrumies/presentation/bloc/profile/gmapswidget/google_maps_widget_bloc.dart';
import 'google_map_widget.dart';

import '../../../../shared/colors_value.dart';

class MyPostContent extends StatelessWidget {
  const MyPostContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My Post Advertisements',
              style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 0.11,
                  fontWeight: FontWeight.w700,
                  color: ColorsValue.green),
            ),
            Container(
              height: 2,
              width: 520,
              color: ColorsValue.green,
            ),
            const Text(
              'SEE ALL',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: ColorsValue.green),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 0.76,
          crossAxisSpacing: 30,
          children: List.generate(
            4,
            (index) => Stack(
              children: [
                Image.asset(
                  'assets/images/mpa_bg.png',
                  fit: BoxFit.fill,
                  height: 310,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 22.0, bottom: 10),
                        child: Text(
                          'TITLE OF POST HERE',
                          style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 3,
                              fontWeight: FontWeight.w700,
                              color: ColorsValue.green),
                        ),
                      ),
                      Image.asset(
                        'assets/images/car.png',
                        width: 250,
                        height: 159,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/people.png',
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Gryan Duminson',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Row(
                                children: List.generate(
                                    5,
                                    (index) => SvgPicture.asset(
                                          'assets/icons/icon_star.svg',
                                          width: 13,
                                          height: 13,
                                        )),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            '13',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: ColorsValue.yellow),
                          ),
                          SvgPicture.asset(
                            'assets/icons/icon_token.svg',
                            width: 15,
                            height: 15,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My Post Request',
              style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 0.11,
                  fontWeight: FontWeight.w700,
                  color: ColorsValue.green),
            ),
            Container(
              height: 2,
              width: 520,
              color: ColorsValue.green,
            ),
            Text(
              'SEE ALL',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: ColorsValue.green),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 0.76,
          crossAxisSpacing: 30,
          children: List.generate(
            4,
            (index) => Stack(
              children: [
                Image.asset(
                  'assets/images/mpa_bg.png',
                  fit: BoxFit.fill,
                  height: 310,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 22.0, bottom: 10),
                        child: Text(
                          'TITLE OF POST HERE',
                          style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 3,
                              fontWeight: FontWeight.w700,
                              color: ColorsValue.green),
                        ),
                      ),
                      Image.asset(
                        'assets/images/car.png',
                        width: 250,
                        height: 159,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/people.png',
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Gryan Duminson',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Row(
                                children: List.generate(
                                    5,
                                    (index) => SvgPicture.asset(
                                          'assets/icons/icon_star.svg',
                                          width: 13,
                                          height: 13,
                                        )),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            '13',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: ColorsValue.yellow),
                          ),
                          SvgPicture.asset(
                            'assets/icons/icon_token.svg',
                            width: 15,
                            height: 15,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class LocationFilter extends StatefulWidget {
  const LocationFilter({Key? key}) : super(key: key);

  @override
  State<LocationFilter> createState() => _LocationFilterState();
}

class _LocationFilterState extends State<LocationFilter> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GoogleMapsWidgetBloc>(
          create: (_) => GoogleMapsWidgetBloc(),
        )
      ],
      child: Column(
        children: [
          const Text(
            'My Location Filter Options',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 34, color: Colors.white),
          ),
          const SizedBox(
            height: 38,
          ),
          _buildMenuFilterOps(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 46.0),
                child: Text(
                  'Choose which Location Filter Posts to use:',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: ColorsValue.green,
                        padding: const EdgeInsets.all(20)),
                    child: const Text(
                      'Near me',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 21,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        side: const BorderSide(
                            color: ColorsValue.green, width: 3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.all(20)),
                    child: const Text(
                      'Online Only Posts',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 21,
                          color: ColorsValue.green),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          side: const BorderSide(color: Colors.grey, width: 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15)),
                      child: const Text(
                        'Show All Posts',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.grey),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: ColorsValue.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 70, vertical: 20)),
                      child: const Text(
                        'OK',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 21,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row _buildMenuFilterOps() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'View Live Map',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: ColorsValue.green),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                _showGmapsDialog(context, true);
              },
              child: Image.asset(
                'assets/images/live_map.png',
                width: 240,
                height: 245,
              ),
            )
          ],
        ),
        Container(
          width: 1,
          color: Colors.white,
          height: 280,
          margin: const EdgeInsets.only(left: 18),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Set My Locations:',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: ColorsValue.green),
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  _showGmapsDialog(context, false);
                },
                child: Image.asset(
                  'assets/images/my_location.png',
                  width: 190,
                  height: 195,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 1,
          color: Colors.white,
          height: 280,
          margin: const EdgeInsets.only(right: 28),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Adjust Distance:',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorsValue.green),
            ),
            _buildEstimateed(),
          ],
        )
      ],
    );
  }

  Container _buildEstimateed() {
    return Container(
      width: 365,
      height: 90,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      margin: const EdgeInsets.only(top: 40),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'ESTIMATED DISTANCE',
                style: TextStyle(
                    fontSize: 13, letterSpacing: 1, color: Colors.black45),
              ),
              Text(
                '38 miles',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.black54),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                '0',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.black54),
              ),
              Expanded(
                child: SliderTheme(
                  data: const SliderThemeData(
                    trackHeight: 1,
                    activeTrackColor: Colors.blue,
                    overlayColor: Colors.transparent,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6.0),
                  ),
                  child: Slider(
                    value: 20,
                    min: 0,
                    onChanged: (value) {},
                    max: 100,
                  ),
                ),
              ),
              const Text(
                '100',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.black54),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> _showGmapsDialog(BuildContext c, bool type) {
    return showDialog<void>(
      context: c,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.85,
            child: (type)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50, right: 20),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              size: 45,
                              color: ColorsValue.green,
                            )),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: const GoogleMapsWidget())
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50, right: 20),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              size: 45,
                              color: ColorsValue.green,
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: const SetMyLocationGmapsWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: ColorsValue.red,minimumSize: const Size(230, 50)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'CANCEL',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 28),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: ColorsValue.green,minimumSize: const Size(230, 50)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'CONFIRM',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 28,color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
          ),
          backgroundColor: Colors.transparent,
        );
      },
    );
  }
}

class MyTransactions extends StatelessWidget {
  const MyTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _transactionContent = [
      {'date': '03/22/2021', 'vbt': 4, 'money': 1},
      {'date': '05/03/2021', 'vbt': 20, 'money': 5},
      {'date': '08/20/2021', 'vbt': 40, 'money': 10}
    ];
    return Column(
      children: [
        _buildTitleTransaction(),
        const SizedBox(
          height: 70,
        ),
        _buildTransactionContent(_transactionContent)
      ],
    );
  }

  Column _buildTransactionContent(List<dynamic> _transactionContent) {
    return Column(
      children: List.generate(
        _transactionContent.length,
        (index) => Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon_token.svg',
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Purchase #${++index}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      '${_transactionContent[--index]['date']}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${_transactionContent[index]['vbt']} VBT',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      '\$${_transactionContent[index]['money']}',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 3,
              color: Colors.white,
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Row _buildTitleTransaction() {
    return Row(
      children: [
        const Text(
          'My Transactions',
          style: TextStyle(
              fontSize: 25,
              letterSpacing: 0.11,
              fontWeight: FontWeight.w700,
              color: ColorsValue.green),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          height: 2,
          width: 600,
          color: ColorsValue.green,
        ),
      ],
    );
  }
}

class BlockedUser extends StatefulWidget {
  const BlockedUser({Key? key}) : super(key: key);

  @override
  State<BlockedUser> createState() => _BlockedUserState();
}

class _BlockedUserState extends State<BlockedUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildBlockTitle(),
        const SizedBox(
          height: 70,
        ),
        Row(
          children: [
            const Spacer(),
            SizedBox(
              width: 340,
              height: 40,
              child: TextField(
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: ColorsValue.borderGray),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    filled: true,
                    hintText: 'Insert Username to Block...',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: ColorsValue.borderGray),
                    fillColor: Colors.white,
                    isDense: true),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: ColorsValue.red,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Text(
                  'BLOCK USER',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ))
          ],
        ),
        Column(
          children: List.generate(
            3,
            (index) => Column(
              children: [
                const SizedBox(
                  height: 33,
                ),
                _buildUserBlockItem(context)
              ],
            ),
          ),
        )
      ],
    );
  }

  Container _buildUserBlockItem(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsValue.black_search),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 40, right: 35),
            child: Image.asset(
              'assets/images/reviewed2.png',
              width: 85,
              height: 85,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Rayna Culhane',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 27,
                    color: Colors.white),
              ),
              const Text(
                'Why did I block this user?',
                style: TextStyle(fontSize: 16, color: ColorsValue.green),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: TextField(
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                  maxLines: 4,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 16),
                    hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.31), fontSize: 12),
                    hintText: 'Insert notes here...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1)),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Unblock User?',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              const SizedBox(
                height: 23,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: ColorsValue.green,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: const Text(
                  'YES, UNBLOCK',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
          const SizedBox(
            width: 50,
          )
        ],
      ),
    );
  }

  Row _buildBlockTitle() {
    return Row(
      children: [
        const Text(
          'Blocked Users',
          style: TextStyle(
              fontSize: 25,
              letterSpacing: 0.11,
              fontWeight: FontWeight.w700,
              color: ColorsValue.green),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          height: 2,
          width: 600,
          color: ColorsValue.green,
        ),
      ],
    );
  }
}
