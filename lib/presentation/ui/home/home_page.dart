import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vrumies/presentation/ui/profile/profile_page.dart';
import 'package:vrumies/shared/colors_value.dart';
import 'package:vrumies/presentation/ui/home/home_component.dart';

import '../bookmark/bookmark_page.dart';
import '../message/message_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List navbarList = ['Home', 'Message', 'Bookmark', 'Profile'];
  int navSelected = 0;
  int _menuSelected = 1;
  List exploreCategories = [
    {'title': 'Mobile/Shop\nServices', 'icon': 'mobile_services.png'},
    {'title': 'Auto part\nselling', 'icon': 'autopart.png'},
    {'title': 'Insurance\nProduct', 'icon': 'insurance_product.png'},
    {'title': 'Car/motorcycle/\nRV selling', 'icon': 'motocar_selling.png'},
    {'title': 'Commercial\nEquipment&Service', 'icon': 'ecommerce_money.png'},
  ];
  List _imagesReviewed = [
    {'img': 'reviewed1.png', 'name': 'Jordyn  Stanton'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed4.png', 'name': 'Aspe Press'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
  ];
  List _topVbtPost = [12, 15, 9, 15];
  final CarouselController _controller = CarouselController();
  int _selectedIndex = 0;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<Widget> page = [
      _buildHome(context),
      const MessagePage(),
      const BookmarkPage(),
      const ProfilePage(),
      const TopVbtHomeComponent(),
      const ReviewedHomeComponent()
    ];
    return Scaffold(
      backgroundColor: ColorsValue.black,
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: _selectedIndex == 1
            ? const NeverScrollableScrollPhysics()
            : const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            _buildheader(context),
            IndexedStack(
              children: page,
              index: _selectedIndex,
            )
          ],
        ),
      ),
    );
  }

  Row _buildHome(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildLeftSide(context), const HomeRightSide()],
    );
  }

  Container _buildLeftSide(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              right: BorderSide(color: ColorsValue.black_search, width: 4))),
      width: MediaQuery.of(context).size.width * 0.74,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWelcome(),
          _exploreCatTitle(),
          const SizedBox(
            height: 30,
          ),
          _buildSlider(),
          _buildTopVbtPost(),
          _buildTopVbtList(),
          _buildReviewd(context),
          const SizedBox(
            height: 35,
          ),
          _buildReviewedList(),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }

  Row _buildReviewedList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        6,
        (index) => Column(
          children: [
            Image.asset(
              'assets/images/${_imagesReviewed[index]['img']}',
              width: 100,
              height: 100,
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
      ),
    );
  }

  Padding _buildReviewd(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 68.0, top: 70),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(colors: [
                    ColorsValue.green,
                    ColorsValue.black,
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight)
                      .createShader(rect),
                  child: Text(
                    'Highest Reviewed Sellers     ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset("assets/images/line_gradDiamond.png")
              ],
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 5;
                });
              },
              child: const Text(
                'See all',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: ColorsValue.green),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _buildTopVbtList() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          4,
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
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Text(
                          index % 2 != 0 ? 'AHMAD GEORGE' : 'ROGER CURTIS',
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
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
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
    );
  }

  Padding _buildTopVbtPost() {
    return Padding(
      padding: const EdgeInsets.only(left: 68.0, top: 70),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (rect) => const LinearGradient(colors: [
                    ColorsValue.green,
                    ColorsValue.black,
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight)
                      .createShader(rect),
                  child: Text(
                    'Top VBT Posts     ',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset("assets/images/line_gradDiamond.png")
              ],
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                });
              },
              child: const Text(
                'See all',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: ColorsValue.green),
              ),
            )
          ],
        ),
      ),
    );
  }

  Stack _buildSlider() {
    return Stack(
      children: [
        _buildSliderItem(),
        Positioned(
          left: 20,
          child: InkWell(
            onTap: () {
              if (_menuSelected - 1 >= 0) {
                setState(() {
                  _menuSelected--;
                });
                _controller.previousPage();
              } else {
                _controller.previousPage();
                setState(() {
                  _menuSelected = exploreCategories.length;
                  _menuSelected--;
                });
              }
            },
            child: Container(
              width: 184,
              height: 202,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  ColorsValue.black,
                  ColorsValue.black,
                  Colors.transparent.withOpacity(0.6),
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              ),
              child: SizedBox(
                width: 47,
                height: 47,
                child: Image.asset(
                  'assets/images/arrow_left.png',
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: InkWell(
            onTap: () {
              if (_menuSelected + 1 < exploreCategories.length) {
                setState(() {
                  _menuSelected++;
                });
                _controller.nextPage();
              } else {
                setState(() {
                  _menuSelected = 0;
                });
                _controller.nextPage();
              }
            },
            child: Container(
              width: 164,
              height: 202,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  ColorsValue.black.withOpacity(0.6),
                  Colors.transparent.withOpacity(0.9),
                  ColorsValue.black,
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              ),
              child: SizedBox(
                width: 47,
                height: 47,
                child: Image.asset(
                  'assets/images/arrow_right.png',
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                exploreCategories.length,
                (index) => AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  child: Container(
                    width: index == _menuSelected ? 21 : 6,
                    height: 6,
                    margin: const EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      color: index == _menuSelected
                          ? ColorsValue.green
                          : Colors.white.withOpacity(0.16),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  SizedBox _buildSliderItem() {
    return SizedBox(
      width: 1000,
      height: 260,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: CarouselSlider.builder(
          itemCount: exploreCategories.length,
          carouselController: _controller,
          itemBuilder: (BuildContext c, int i, int y) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 50),
                  child: Image.asset(
                    'assets/images/explore_rectangle.png',
                    width: i == _menuSelected ? 200 : 154,
                    height: i == _menuSelected ? 254 : 159,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: i == _menuSelected ? 0 : 30,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/${exploreCategories[i]['icon']}',
                        width: i == _menuSelected ? 130 : 60,
                        height: i == _menuSelected ? 135 : 60,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        exploreCategories[i]['title'],
                        style: TextStyle(
                          fontSize: i == _menuSelected ? 14 : 11,
                          fontWeight: i == _menuSelected
                              ? FontWeight.w700
                              : FontWeight.w500,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            );
          },
          options: CarouselOptions(
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.2,
              initialPage: 1,
              scrollPhysics: const NeverScrollableScrollPhysics()),
        ),
      ),
    );
  }

  Padding _exploreCatTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 68.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (rect) => const LinearGradient(colors: [
              ColorsValue.green,
              ColorsValue.black,
            ], begin: Alignment.centerLeft, end: Alignment.centerRight)
                .createShader(rect),
            child: Text(
              'Explore Categories     ',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset("assets/images/line_gradDiamond.png")
        ],
      ),
    );
  }

  Stack _buildWelcome() {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40, top: 16),
          child: Image.asset(
            'assets/images/home_header.png',
            width: 1100,
            height: 330,
          ),
        ),
        Positioned(
          left: 240,
          top: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Welcome to Vrumies, ',
                  style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Alex!',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: ColorsValue.green),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Find something you need right now.',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }

  Row _buildheader(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 26,
        ),
        Image.asset(
          'assets/images/vrumies_logo.png',
          width: 123,
          height: 60,
        ),
        const SizedBox(
          width: 45,
        ),
        _buildNavbarMenuList(),
        _buildSearchBox(context),
        const SizedBox(
          width: 24,
        ),
        Container(
          width: 57,
          height: 45,
          decoration: BoxDecoration(
              border: Border.all(color: ColorsValue.green, width: 3),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/icon_add.svg',
              width: 23,
              height: 23,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 27),
          child: Text(
            '100',
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorsValue.yellow),
          ),
        ),
        SvgPicture.asset(
          'assets/icons/icon_token.svg',
          width: 25,
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 27.0, right: 25),
          child: SvgPicture.asset(
            'assets/icons/icon_bell.svg',
            width: 23,
            height: 26,
          ),
        ),
        Image.asset(
          'assets/images/account.png',
          width: 45,
          height: 45,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: const [
            Text(
              'Alex Anderson',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              'Anderson33@gmail.com',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }

  SizedBox _buildSearchBox(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.167,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: ColorsValue.black_search,
          child: TextFormField(
            cursorColor: ColorsValue.green,
            style: const TextStyle(
                color: ColorsValue.green,
                fontSize: 13,
                fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 25),
                child: SvgPicture.asset(
                  'assets/icons/icon_search.svg',
                  width: 16,
                  height: 16,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.2),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }

  Row _buildNavbarMenuList() {
    return Row(
      children: List.generate(
        navbarList.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 60.0),
          child: InkWell(
            onTap: () {
              setState(() {
                navSelected = index;
                _selectedIndex = index;
              });
            },
            child: Column(
              children: [
                navSelected == index
                    ? Container(
                        width: 31,
                        height: 2,
                        decoration: BoxDecoration(
                            color: ColorsValue.green,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: const [
                              BoxShadow(
                                  color: ColorsValue.green, blurRadius: 7),
                              BoxShadow(color: ColorsValue.green, blurRadius: 6)
                            ]),
                      )
                    : const SizedBox.shrink(),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  navbarList[index],
                  style: TextStyle(
                      color: navSelected == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: 7),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
