import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vrumies/presentation/bloc/cubit/main_screen_mobile_cubit.dart';
import 'package:vrumies/presentation/ui/desktop/profile/profile_page.dart';
import 'package:vrumies/presentation/ui/mobile/home/home_page_mobile.dart';
import 'package:vrumies/presentation/ui/mobile/profile/profile_page_mobile.dart';
import 'package:vrumies/shared/colors_value.dart';

class MainScreenMobile extends StatefulWidget {
  const MainScreenMobile({Key? key}) : super(key: key);

  @override
  State<MainScreenMobile> createState() => _MainScreenMobileState();
}

class _MainScreenMobileState extends State<MainScreenMobile> {
  List<Widget> _pages = [
    HomePageMobile(),
    Container(),
    Container(),
    ProfilePageMobile()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainScreenMobileCubit>(
      create: (_) => MainScreenMobileCubit(),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.black,
        floatingActionButton: SizedBox(
          width: 100,
          height: 100,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/icons/icon_star_fab.svg',
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 35,
                bottom: 43,
                left: 35,
                right: 40,
                child: SvgPicture.asset(
                  'assets/icons/icon_add_fab.svg',
                  color: ColorsValue.blackTextItem,
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(left: 22, right: 22, bottom: 17),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                  child: Container(
                    height: 68,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorsValue.blackTextItem.withOpacity(0.49),
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: BlocBuilder<MainScreenMobileCubit, int>(
                        builder: (context, value) {
                      return Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: SvgPicture.asset(
                                    'assets/icons/icon_home_bottomnav.svg',
                                    width: 24,
                                    height: 24,
                                    color: value == 0
                                        ? ColorsValue.green
                                        : Colors.white,
                                  ),
                                  onPressed: () {
                                    context
                                        .read<MainScreenMobileCubit>()
                                        .changePage(0);
                                  }),
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: value == 0
                                        ? ColorsValue.green
                                        : Colors.white),
                              )
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: SvgPicture.asset(
                                    'assets/icons/icon_msg_bottomnav.svg',
                                    width: 24,
                                    height: 24,
                                    color: value == 1
                                        ? ColorsValue.green
                                        : Colors.white,
                                  ),
                                  onPressed: () {
                                    context
                                        .read<MainScreenMobileCubit>()
                                        .changePage(1);
                                  }),
                              Text(
                                'Message',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: value == 1
                                      ? ColorsValue.green
                                      : Colors.white,
                                ),
                              )
                            ],
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: SvgPicture.asset(
                                    'assets/icons/icon_bookmark_bottomnav.svg',
                                    width: 24,
                                    height: 24,
                                    color: value == 2
                                        ? ColorsValue.green
                                        : Colors.white,
                                  ),
                                  onPressed: () {  context.read<MainScreenMobileCubit>().changePage(2);}),
                              Text(
                                'Bookmark',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: value == 2
                                      ? ColorsValue.green
                                      : Colors.white,
                                ),
                              )
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: SvgPicture.asset(
                                    'assets/icons/icon_profile_bottomnav.svg',
                                    width: 24,
                                    height: 24,
                                    color: value == 3
                                        ? ColorsValue.green
                                        : Colors.white,
                                  ),
                                  onPressed: () {
                                    context.read<MainScreenMobileCubit>().changePage(3);
                                  }),
                              Text(
                                'Profile',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: value == 3
                                      ? ColorsValue.green
                                      : Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            )),
        body:
            BlocBuilder<MainScreenMobileCubit, int>(builder: (context, value) {
          return _pages[value];
        }),
      ),
    );
  }
}
