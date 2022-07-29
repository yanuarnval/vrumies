import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vrumies/shared/colors_value.dart';

class ProfilePageMobile extends StatefulWidget {
  const ProfilePageMobile({Key? key}) : super(key: key);

  @override
  State<ProfilePageMobile> createState() => _ProfilePageMobileState();
}

class _ProfilePageMobileState extends State<ProfilePageMobile> {
  final List _profileMenuList = [
    {'img': '/images/mypost.png', 'title': 'My posts'},
    {'img': '/images/transactions.png', 'title': 'My transactions'},
    {'img': '/images/blocked_user.png', 'title': 'Blocked Users'},
    {'img': '/images/wallet.png', 'title': 'Payment Methods'},
    {'img': '/images/nontification.png', 'title': 'Notifications'},
    {'img': '/images/referral-code.png', 'title': 'Vrumies Referral Code'},
    {'img': '/images/calendar.png', 'title': 'Calendar'},
    {'img': '/images/location.png', 'title': 'Location Filter'},
    {'img': '/images/membership_vrumies.png', 'title': 'Membership Settings'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Stack(
        children: [
          const SizedBox(
            height: 800,
          ),
          Image.asset('assets/images/profile_bg_mobile.png'),
          Positioned(
            top: 19,
            right: 24,
            child: SvgPicture.asset(
              'assets/icons/icon_help.svg',
              width: 25,
              height: 25,
            ),
          ),

          Positioned(
            top: 109,
            left: 40,
            right: 40,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 29, sigmaX: 29),
                child: Container(
                  width: 291,
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.1)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            right: 40,
            top: 270,
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 29),
              decoration: BoxDecoration(
                color: ColorsValue.black_search,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Column(
                children: List.generate(
                  _profileMenuList.length,
                  (index) => Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/${_profileMenuList[index]['img']}',
                            width: 17,
                            height: 17,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Text(
                              '${_profileMenuList[index]['title']}',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'assets/icons/icon_right_chevvron.svg',
                            width: 7,
                            height: 7,
                            color: ColorsValue.green,
                          )
                        ],
                      ),
                      Container(
                        height: 1,
                        color: ColorsValue.green,
                        margin: const EdgeInsets.only(top: 9, bottom: 12),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/account.png',
                  width: 66,
                  height: 66,
                ),
                const Text(
                  'Alex Anderson',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: ColorsValue.green),
                ),
                const Text(
                  'Anderson33@gmail.com',
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w300,
                      color: ColorsValue.green),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => SvgPicture.asset(
                      'assets/icons/icon_star.svg',
                      width: 12,
                      height: 12,
                    ),
                  ),
                ),
                Container(
                  width: 78,
                  height: 20,
                  margin: const EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                    child: Text(
                      'About me',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 123,
            right: 52,
            child: SvgPicture.asset(
              'assets/icons/icon_baseline_edit.svg',
              width: 20,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
