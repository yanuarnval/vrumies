import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../shared/colors_value.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  List exploreCategories = [
    {'title': 'Mobile/Shop\nServices', 'icon': 'mobile_services.png'},
    {'title': 'Auto part\nselling', 'icon': 'autopart.png'},
    {'title': 'Insurance\nProduct', 'icon': 'insurance_product.png'},
    {'title': 'Car/motorcycle/\nRV selling', 'icon': 'motocar_selling.png'},
    {'title': 'Commercial\nEquipment&Service', 'icon': 'ecommerce_money.png'},
  ];

  final List _imagesReviewed = [
    {'img': 'reviewed1.png', 'name': 'Jordyn  Stanton'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed4.png', 'name': 'Aspe Press'},
    {'img': 'reviewed3.png', 'name': 'Kianna Bergson'},
    {'img': 'reviewed2.png', 'name': 'Adison Gouse'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderMobile(),
            _buildwelcomeMobile(),
            _buildSearchMobile(),
            _buildExplore(),
            _build_listExplore(),
            _buildTopVbt(),
            _buildTopVbtList(),
            _buildHightReviewed(),
            _buildHightReviewedListMob(),
            _buildPopularAutoMob(),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 130),
              child: SizedBox(
                height: 145,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext c, int i) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 19.0),
                      child: Stack(
                        children: [
                          _builldImgPopMob(i),
                          _buildLinieargradPopMob(),
                          _buildPopMobDesc(),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0, left: 13),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                i % 2 == 0
                                    ? Image.asset(
                                        'assets/images/popauto_people1.png',
                                        width: 24,
                                        height: 24,
                                      )
                                    : Image.asset(
                                        'assets/images/reviewed2.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        i % 2 == 0
                                            ? 'Marcel Darius'
                                            : 'Allison Schleifer',
                                        style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.2,
                                            color: Colors.white),
                                      ),
                                      const Text(
                                        'MARCH 29, 2022',
                                        style: TextStyle(
                                            fontSize: 4,
                                            letterSpacing: 0.2,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned _buildPopMobDesc() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(
            10,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            width: 176,
            height: 49,
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              children: [
                const Text(
                  'Cell Phone Use\nWhile Driving',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 10,
                      color: Colors.white),
                ),
                Container(
                  width: 1,
                  height: 22,
                  margin: const EdgeInsets.only(left: 15),
                  color: ColorsValue.blackBorder,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/like_finger.svg',
                        width: 13,
                        height: 12,
                      ),
                      const Text(
                        '182',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: ColorsValue.green,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/icon_dislike.svg',
                      width: 13,
                      height: 12,
                    ),
                    const Text(
                      '12',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                        color: ColorsValue.red,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Positioned _buildLinieargradPopMob() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        'assets/images/pop_auto_lingrad.png',
        height: 90,
      ),
    );
  }

  Widget _builldImgPopMob(int i) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: i % 2 == 0
          ? Image.asset(
              'assets/images/popular_automotive1.png',
              width: 176,
              height: 145,
              fit: BoxFit.cover,
            )
          : Image.asset(
              'assets/images/popular_automotive2.png',
              width: 176,
              height: 145,
              fit: BoxFit.cover,
            ),
    );
  }

  Row _buildPopularAutoMob() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (rect) => const LinearGradient(colors: [
                ColorsValue.green,
                ColorsValue.black,
              ], begin: Alignment.centerLeft, end: Alignment.centerRight)
                  .createShader(rect),
              child: Text(
                'Popular Automotive Blogs   ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              width: 26,
              height: 4,
              decoration: BoxDecoration(
                color: ColorsValue.green,
                borderRadius: BorderRadius.circular(
                  13,
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Text(
            'See All',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: ColorsValue.green),
          ),
        )
      ],
    );
  }

  Padding _buildHightReviewedListMob() {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0, bottom: 58),
      child: SizedBox(
        height: 136,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (BuildContext c, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 34.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                            color: ColorsValue.blackTextItem,
                            shape: BoxShape.circle),
                      ),
                      Image.asset(
                        'assets/images/${_imagesReviewed[index]['img']}',
                        width: 75,
                        height: 75,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '221 reviews',
                    style: TextStyle(
                        color: ColorsValue.green,
                        fontSize: 9,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${_imagesReviewed[index]['name']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  Row(
                    children: List.generate(
                      5,
                      (index) => SvgPicture.asset(
                        'assets/icons/icon_star.svg',
                        width: 10,
                        height: 10,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Row _buildHightReviewed() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              width: 26,
              height: 4,
              decoration: BoxDecoration(
                color: ColorsValue.green,
                borderRadius: BorderRadius.circular(
                  13,
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Text(
            'See All',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: ColorsValue.green),
          ),
        )
      ],
    );
  }

  Padding _buildTopVbtList() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 18.0,
        bottom: 30,
      ),
      child: SizedBox(
        height: 164,
        child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext c, int i) {
            return _buildItemTopVbtMob(i);
          },
        ),
      ),
    );
  }

  Padding _buildItemTopVbtMob(int i) {
    return Padding(
      padding: const EdgeInsets.only(right: 13.0),
      child: Stack(
        children: [
          _imageTopVbtBg(i),
          _tobVbtContainerBlur(i),
        ],
      ),
    );
  }

  ClipRRect _imageTopVbtBg(int i) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.asset(
        (i % 2 == 0)
            ? 'assets/images/talan_curtis.png'
            : 'assets/images/roger1.png',
        width: 128,
        height: 164,
        fit: BoxFit.fill,
      ),
    );
  }

  Positioned _tobVbtContainerBlur(int i) {
    return Positioned(
      top: 108,
      bottom: 6,
      left: 7,
      right: 7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: SizedBox(
            width: 100,
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _buildCircleImg(i),
                    _builtText(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(
                          4,
                          (index) => SvgPicture.asset(
                            'assets/icons/icon_star.svg',
                            width: 7,
                            height: 7,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 2.0),
                            child: Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 6,
                                  fontWeight: FontWeight.w600,
                                  color: ColorsValue.yellow),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/icon_token.svg',
                            width: 8,
                            height: 8,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _builtText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Title of Post Here',
          style: TextStyle(
            fontSize: 5,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w700,
            color: ColorsValue.green,
          ),
        ),
        Text(
          'Talan Curtis',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 8,
            color: Colors.white,
          ),
        ),
        Text(
          'Mobile/Shop Service',
          style: TextStyle(
            fontSize: 4,
            fontWeight: FontWeight.w600,
            color: ColorsValue.blackTextItem,
          ),
        )
      ],
    );
  }

  Padding _buildCircleImg(int i) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0, left: 7, right: 6, bottom: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          width: 26,
          height: 26,
          child: i % 2 == 0
              ? Image.asset(
                  'assets/images/talan_curtis.png',
                  fit: BoxFit.cover,
                  width: 26,
                  height: 26,
                )
              : Image.asset(
                  'assets/images/roger1.png',
                  fit: BoxFit.cover,
                  width: 26,
                  height: 26,
                ),
        ),
      ),
    );
  }

  Padding _build_listExplore() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        height: 112,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: exploreCategories.length,
          itemBuilder: (BuildContext c, int i) {
            return Container(
              width: 112,
              height: 109,
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorsValue.green,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/${exploreCategories[i]['icon']}',
                    width: 62,
                    height: 62,
                  ),
                  Text(
                    exploreCategories[i]['title'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 8,
                        color: Colors.white),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Row _buildTopVbt() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              width: 26,
              height: 4,
              decoration: BoxDecoration(
                color: ColorsValue.green,
                borderRadius: BorderRadius.circular(
                  13,
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Text(
            'See All',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: ColorsValue.green),
          ),
        )
      ],
    );
  }

  Widget _buildExplore() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                width: 26,
                height: 4,
                decoration: BoxDecoration(
                  color: ColorsValue.green,
                  borderRadius: BorderRadius.circular(
                    13,
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Text(
              'See All',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: ColorsValue.green),
            ),
          )
        ],
      ),
    );
  }

  Container _buildSearchMobile() {
    return Container(
      margin: const EdgeInsets.only(top: 36, right: 25),
      decoration: BoxDecoration(
        border: Border.all(color: ColorsValue.blackBorder, width: 3),
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextField(
        style: const TextStyle(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: SvgPicture.asset(
              'assets/icons/icon_search_mobile.svg',
              width: 13,
              height: 14,
            ),
          ),
          hintText: 'search',
          hintStyle: const TextStyle(
              color: ColorsValue.blackBorder,
              fontSize: 12,
              fontWeight: FontWeight.w400),
          suffixIconConstraints: const BoxConstraints(),
        ),
      ),
    );
  }

  Widget _buildwelcomeMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'Welcome, ',
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
            children: <TextSpan>[
              TextSpan(
                text: 'Alex!',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: ColorsValue.green),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          'Find something you need right now.',
          style: TextStyle(
              fontWeight: FontWeight.w300, fontSize: 11, color: Colors.white),
        )
      ],
    );
  }

  Padding _buildHeaderMobile() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 19),
      child: Row(
        children: [
          Image.asset(
            'assets/images/account.png',
            width: 40,
            height: 40,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset(
              'assets/images/live_map.png',
              width: 36,
              height: 39,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: SvgPicture.asset(
              'assets/icons/icon_token.svg',
              width: 26,
              height: 26,
            ),
          )
        ],
      ),
    );
  }
}
