import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vrumies/ui/home/home_page.dart';

import '../../shared/colors_value.dart';

class ReviewedHomeComponent extends StatefulWidget {
  const ReviewedHomeComponent({Key? key}) : super(key: key);

  @override
  State<ReviewedHomeComponent> createState() => _ReviewedHomeComponentState();
}

class _ReviewedHomeComponentState extends State<ReviewedHomeComponent> {
  List _imagesReviewed = [
    {'img': 'reviewed1.png', 'name': 'Jordyn  Stanton'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed4.png', 'name': 'Aspe Press'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
    {'img': 'reviewed1.png', 'name': 'Jordyn  Stanton'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed4.png', 'name': 'Aspe Press'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
    {'img': 'reviewed1.png', 'name': 'Jordyn  Stanton'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed4.png', 'name': 'Aspe Press'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.74,
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0, bottom: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (rect) => const LinearGradient(
                                  colors: [
                                ColorsValue.green,
                                ColorsValue.black,
                              ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)
                              .createShader(rect),
                          child: Text(
                            'Highest Reviewed Sellers     ',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          "assets/images/line_gradDiamond.png",
                          width: 230,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext c) => const HomePage()));
                    },
                    child: const Text(
                      'BACK',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ColorsValue.green),
                    ),
                  ),
                  const SizedBox(
                    width: 74,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 86.0),
                child: GridView.count(
                    crossAxisCount: 6,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 0.8,
                    children: List.generate(
                      18,
                      (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/${_imagesReviewed[index]['img']}',
                            width: 95,
                            height: 95,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '221 reviews',
                            style: TextStyle(
                                color: ColorsValue.green,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              '${_imagesReviewed[index]['name']}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              5,
                              (index) => SvgPicture.asset(
                                'assets/icons/icon_star.svg',
                                width: 13,
                                height: 13,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
        const HomeRightSide()
      ],
    );
  }
}

class TopVbtHomeComponent extends StatefulWidget {
  const TopVbtHomeComponent({Key? key}) : super(key: key);

  @override
  State<TopVbtHomeComponent> createState() => _TopVbtHomeComponentState();
}

class _TopVbtHomeComponentState extends State<TopVbtHomeComponent> {
  List _topVbtPost = [12, 15, 9, 15, 12, 15, 9, 15, 12, 15, 9, 15];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.74,
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0, bottom: 74),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (rect) => const LinearGradient(
                                  colors: [
                                ColorsValue.green,
                                ColorsValue.black,
                              ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)
                              .createShader(rect),
                          child: Text(
                            'Top VBT Posts     ',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          "assets/images/line_gradDiamond.png",
                          width: 230,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext c) => const HomePage()));
                    },
                    child: const Text(
                      'BACK',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ColorsValue.green),
                    ),
                  ),
                  const SizedBox(
                    width: 74,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 86.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.72,
                  children: List.generate(
                    12,
                    (index) => Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: SizedBox(
                            width: 200,
                            height: 340,
                            child: Image.asset(
                              'assets/images/bg_top_vbt2.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 340,
                          child: Image.asset(
                            'assets/images/bg_top_vbt1.png',
                          ),
                        ),
                        Positioned(
                          top: 20,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  index % 2 == 0
                                      ? 'Autopart selling'.toUpperCase()
                                      : 'Mobile/shop services'.toUpperCase(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: ColorsValue.green),
                                ),
                                SizedBox(
                                  width: 151,
                                  height: 228,
                                  child: index % 2 == 0
                                      ? Image.asset('assets/images/roger1.png')
                                      : Image.asset('assets/images/roger2.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Text(
                                    index % 2 != 0
                                        ? 'AHMAD GEORGE'
                                        : 'ROGER CURTIS',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        letterSpacing: 4,
                                        fontSize: 10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 26.0, top: 4, bottom: 9),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: List.generate(
                                          index % 2 == 0 ? 4 : 5,
                                          (index) => Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child: SvgPicture.asset(
                                                  'assets/icons/icon_star.svg',
                                                  width: 13,
                                                  height: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      index % 2 == 0
                                          ? SizedBox(
                                              width: 13,
                                              height: 13,
                                              child: Image.asset(
                                                  'assets/images/half_star.png'),
                                            )
                                          : const SizedBox.shrink()
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 46),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/icon_token.svg',
                                        width: 13,
                                        height: 13,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        _topVbtPost[index].toString(),
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsValue.yellow),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const HomeRightSide()
      ],
    );
  }
}

class HomeRightSide extends StatelessWidget {
  const HomeRightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width * 0.26,
          child: TableCalendar(
            focusedDay: DateTime.utc(2019, 5, 21),
            firstDay: DateTime.utc(2019, 5, 1),
            lastDay: DateTime.utc(2030, 3, 14),
            rowHeight: 50,
            selectedDayPredicate: (day) =>
                isSameDay(day, DateTime.utc(2019, 5, 21)),
            headerStyle: HeaderStyle(
                titleCentered: true,
                leftChevronMargin: const EdgeInsets.only(left: 100),
                rightChevronMargin: const EdgeInsets.only(right: 100),
                leftChevronIcon:
                    SvgPicture.asset('assets/icons/icon_left_chevron.svg'),
                rightChevronIcon:
                    SvgPicture.asset('assets/icons/icon_right_chevvron.svg'),
                titleTextStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: ColorsValue.gray),
                formatButtonShowsNext: false,
                formatButtonVisible: false,
                headerMargin: const EdgeInsets.only(bottom: 30)),
            daysOfWeekHeight: 40,
            daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700),
                weekendStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700)),
            calendarStyle: const CalendarStyle(
              selectedTextStyle: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              selectedDecoration: BoxDecoration(
                  shape: BoxShape.circle, color: ColorsValue.black_search),
              defaultTextStyle: TextStyle(
                  color: ColorsValue.green,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
              outsideTextStyle: TextStyle(
                  color: ColorsValue.outside,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
              disabledTextStyle:
                  TextStyle(fontSize: 11, color: ColorsValue.outside),
              weekendTextStyle: TextStyle(
                  color: ColorsValue.green,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 40,
          margin: const EdgeInsets.only(right: 58, top: 30, bottom: 30),
          decoration: BoxDecoration(
              color: ColorsValue.black_search,
              borderRadius: BorderRadius.circular(7)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/icon_add_white.svg',
                width: 15,
                height: 15,
              ),
              const SizedBox(
                width: 18,
              ),
              const Text(
                'ADD EVENT',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        SizedBox(
          height: 480,
          width: 370,
          child: Stack(
            children: [
              Positioned(
                right: 30,
                child: SizedBox(
                  width: 335,
                  height: 410,
                  child: Image.asset(
                    'assets/images/bg_discount.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    width: 250,
                    height: 30,
                    child: Image.asset('assets/images/text_discount1.png',
                        fit: BoxFit.fill),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, bottom: 37),
                    child: SizedBox(
                      width: 235,
                      height: 25,
                      child: Image.asset(
                        'assets/images/text_discount2.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 346,
                    padding:
                        const EdgeInsets.only(left: 30, right: 70, bottom: 35),
                    child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 70),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(200, 68),
                            primary: ColorsValue.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Text(
                              'GET DISCOUNT NOW',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            SizedBox(
                                width: 26,
                                height: 15,
                                child: Image.asset(
                                    'assets/images/arrow_discount.png'))
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
