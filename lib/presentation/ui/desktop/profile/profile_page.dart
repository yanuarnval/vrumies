

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vrumies/presentation/bloc/cubit/profil_ui_cubit.dart';

import 'package:vrumies/shared/colors_value.dart';

import '../profile/profile_component.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List _profileMenuList = [
    {'img': '/images/mypost.png', 'title': 'My posts'},
    {'img': '/images/transactions.png', 'title': 'My transactions'},
    {'img': '/images/blocked_user.png', 'title': 'Blocked Users'},
    {'img': '/images/wallet.png', 'title': 'Payment\nMethods'},
    {'img': '/images/referral-code.png', 'title': 'Vrumies Referral\nCode'},
    {'img': '/images/location.png', 'title': 'Location\nFilter'},
    {'img': '/images/membership_vrumies.png', 'title': 'Membership\nSettings'},
  ];

  final List _profilMenuContentList = [
    const MyPostContent(),
    const MyTransactions(),
    const BlockedUser(),
    const SizedBox(),
    const SizedBox(),
    const LocationFilter(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_buildImageBg(context), _buildContent()],
    );
  }

  Padding _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 32),
      child: BlocProvider<ProfilUiCubit>(
        create: (_) => ProfilUiCubit(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfile(),
            const SizedBox(
              width: 30,
            ),
            BlocBuilder<ProfilUiCubit, int>(builder: (context, selected) {
              return Column(
                children: [
                  _buildProfilMenu(),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 1086,
                    padding: const EdgeInsets.only(
                        top: 30, bottom: 80, right: 70, left: 70),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.52),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: _profilMenuContentList[selected],
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Stack _buildImageBg(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/profile_bg.png',
          width: MediaQuery.of(context).size.width,
          height: 800,
          fit: BoxFit.fill,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
        ),
      ],
    );
  }

  Container _buildProfile() {
    return Container(
      width: 360,
      height: 780,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.52),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0, left: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 67,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(85),
              child: SizedBox(
                width: 140,
                height: 140,
                child: Stack(
                  children: [
                    Image.asset('assets/images/account.png'),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: 140,
                        height: 140,
                        padding: const EdgeInsets.all(50),
                        color: Colors.black.withOpacity(0.78),
                        child: SvgPicture.asset(
                          'assets/icons/icon_camera.svg',
                          color: Colors.white,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 12),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/name_account.png',
                    width: 224,
                    height: 24,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/icons/icon_baseline_edit.svg',
                    width: 16,
                    height: 16,
                  )
                ],
              ),
            ),
            const Text(
              'Anderson33@gmail.com',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 63),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => SvgPicture.asset(
                    'assets/icons/icon_star.svg',
                    width: 37,
                    height: 37,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'About me',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: ColorsValue.green),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis eu volutpat odio facilisis mauris sit amet massa vitae tortor condimentum lacinia quis vel eros donec ac odio',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Container _buildProfilMenu() {
    return Container(
      width: 1086,
      padding: const EdgeInsets.only(top: 80, bottom: 80, right: 74, left: 74),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.52),
        borderRadius: BorderRadius.circular(16),
      ),
      child: BlocBuilder<ProfilUiCubit, int>(builder: (context, selected) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              _profileMenuList.length,
              (index) => InkWell(
                    onTap: () {
                      context.read<ProfilUiCubit>().changeUiMenu(index);
                    },
                    child: Container(
                      width: 117,
                      height: 117,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                            color: (index == selected)
                                ? ColorsValue.green
                                : Colors.white.withOpacity(0.5),
                            width: (index == selected) ? 3 : 2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets${_profileMenuList[index]['img']}',
                            width: 45,
                            height: 45,
                            color: (index == selected)
                                ? ColorsValue.green
                                : ColorsValue.green.withOpacity(0.5),
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          Text(
                            '${_profileMenuList[index]['title']}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: (index == selected)
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.5)),
                          )
                        ],
                      ),
                    ),
                  )),
        );
      }),
    );
  }
}
