import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/colors_value.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List msg = [
    {'msg': 'Hello, Rayna!', 'type': 1, 'clock': '08:00 PM', 'today': false},
    {
      'msg': 'What are you doing?',
      'type': 1,
      'clock': '08:00 PM',
      'today': false
    },
    {'msg': 'I’m lying down', 'type': 0, 'clock': '09:00 PM', 'today': false},
    {'msg': 'Let’s hang out!', 'type': 1, 'clock': '09:30 PM', 'today': false},
    {'msg': 'Let’s go!', 'type': 0, 'clock': '09:00 PM', 'today': false},
    {'msg': '', 'type': 1, 'clock': '', 'today': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.28,
          child: Column(
            children: [
              _buildSearch(),
              _buildListCht(),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.49,
          height: MediaQuery.of(context).size.height - 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              _buildChtHeader(),
              _buildChatuser(),
              const Spacer(),
              _buildTxtFieldAndBtn(),
            ],
          ),
        ),
        _buildProfiluser()
      ],
    );
  }

  Widget _buildTxtFieldAndBtn() {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 57,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorsValue.black_search),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 16),
                child: SvgPicture.asset(
                  'assets/icons/icon_camera.svg',
                  width: 27,
                  height: 27,
                ),
              ),
              SvgPicture.asset(
                'assets/icons/icon_folder.svg',
                width: 27,
                height: 27,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 22.0),
                child: SvgPicture.asset(
                  'assets/icons/icon_smile.svg',
                  width: 27,
                  height: 27,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: ColorsValue.black_search,
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(15),
          child: SvgPicture.asset(
            'assets/icons/icon_send.svg',
            width: 27,
            height: 27,
          ),
        )
      ],
    );
  }

  Container _buildProfiluser() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.23,
      height: MediaQuery.of(context).size.height-75,
      decoration: BoxDecoration(
          color: ColorsValue.black_search,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 21.0, top: 25),
                child: SvgPicture.asset('assets/icons/icon_help.svg'),
              ),
            ],
          ),
          SizedBox(
            width: 169,
            height: 169,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/reviewed2.png',
                ),
                Positioned(
                  bottom: 5,
                  right: 19,
                  child: Container(
                    width: 21,
                    height: 21,
                    decoration: BoxDecoration(
                        color: ColorsValue.green, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Rayna Culhane',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 22, color: Colors.white),
          ),
          const SizedBox(
            height: 52,
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              SvgPicture.asset(
                'assets/icons/icon_phone_call.svg',
                width: 22,
                height: 22,
              ),
              const SizedBox(
                width: 21,
              ),
              Text(
                '589 278 9956',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.38)),
              )
            ],
          ),
          const SizedBox(
            height: 37,
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              SvgPicture.asset(
                'assets/icons/icon_email.svg',
                width: 22,
                height: 22,
              ),
              const SizedBox(
                width: 21,
              ),
              Text(
                'rayna67@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.38)),
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              SvgPicture.asset(
                'assets/icons/icon_block.svg',
                width: 22,
                height: 22,
              ),
              const SizedBox(
                width: 21,
              ),
              const Text(
                'Block',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: ColorsValue.red),
              )
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              SvgPicture.asset(
                'assets/icons/icon_like_full.svg',
                width: 22,
                height: 22,
              ),
              const SizedBox(
                width: 21,
              ),
              Text(
                'Report Contact',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: ColorsValue.red),
              ),
            ],

          ),
          const SizedBox(height: 30,)
        ],
      ),
    );
  }

  Widget _buildChatuser() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
      child: _buildTxtChat(),
    );
  }

  Column _buildTxtChat() {
    return Column(
      children: List.generate(
        msg.length,
        (index) => Container(
          margin: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              msg[index]['today'] ? _buildTodaychat() : const SizedBox.shrink(),
              Row(
                children: [
                  msg[index]['type'] == 1
                      ? const SizedBox.shrink()
                      : const Spacer(),
                  msg[index]['today']
                      ? Container(
                          width: 41,
                          height: 41,
                          margin: const EdgeInsets.only(right: 18),
                          child: Image.asset(
                            'assets/images/reviewed2.png',
                          ),
                        )
                      : const SizedBox.shrink(),
                  Container(
                    padding: const EdgeInsets.only(left: 25, right: 20),
                    height: 40,
                    decoration: BoxDecoration(
                      color: msg[index]['type'] == 1
                          ? Colors.white
                          : ColorsValue.black_search,
                      borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(6),
                          topLeft: const Radius.circular(6),
                          bottomRight: msg[index]['type'] == 1
                              ? const Radius.circular(6)
                              : const Radius.circular(0),
                          bottomLeft: msg[index]['type'] == 0
                              ? const Radius.circular(6)
                              : const Radius.circular(0)),
                    ),
                    child: msg[index]['today']
                        ? _buildDot()
                        : _buildTextChat(index),
                  ),
                  msg[index]['type'] == 0
                      ? const SizedBox.shrink()
                      : const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildTextChat(int index) {
    return Row(
      children: [
        Text(
          msg[index]['msg'],
          style: GoogleFonts.poppins(
              color: msg[index]['type'] == 1 ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        msg[index]['type'] == 1
            ? const SizedBox(
                width: 10,
              )
            : const SizedBox(
                width: 40,
              ),
        Text(
          msg[index]['clock'],
          style: TextStyle(
              color: msg[index]['type'] == 1
                  ? Colors.black.withOpacity(0.4)
                  : Colors.white.withOpacity(0.4),
              fontSize: 8,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Row _buildDot() {
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        Container(
          width: 7,
          height: 7,
          decoration: const BoxDecoration(
              color: ColorsValue.gray2, shape: BoxShape.circle),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 11,
          height: 11,
          decoration: const BoxDecoration(
              color: ColorsValue.green, shape: BoxShape.circle),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 7,
          height: 7,
          decoration: const BoxDecoration(
              color: ColorsValue.gray2, shape: BoxShape.circle),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 6,
          height: 5,
          decoration: const BoxDecoration(
              color: ColorsValue.gray2, shape: BoxShape.circle),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  Widget _buildTodaychat() {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.19,
            height: 1,
            color: Colors.white.withOpacity(0.19),
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            'Today',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: ColorsValue.gray2),
          ),
          const SizedBox(
            width: 38,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.19,
            height: 1,
            color: Colors.white.withOpacity(0.19),
          ),
        ],
      ),
    );
  }

  Container _buildChtHeader() {
    return Container(
      width: double.infinity,
      height: 65,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          color: ColorsValue.black_search,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          Image.asset(
            'assets/images/arrow_back_chat.png',
            width: 26,
            height: 15,
          ),
          const SizedBox(
            width: 23,
          ),
          SizedBox(
            width: 41,
            height: 41,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/reviewed2.png',
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                        color: ColorsValue.green, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Rayna Culhane',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 15, color: Colors.white),
          ),
          const Spacer(),
          const Text(
            'REQUEST A SERVICES',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: ColorsValue.green),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 3,
                height: 3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                width: 3,
                height: 3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                width: 3,
                height: 3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 29,
          )
        ],
      ),
    );
  }

  Widget _buildListCht() {
    return Container(
      padding: const EdgeInsets.only(left: 60, right: 30),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: ColorsValue.black_search, width: 4),
        ),
      ),
      child: SizedBox(
        width: 399,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (BuildContext c, int i) {
            return Container(
              padding: const EdgeInsets.only(bottom: 40, top: 20),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: ColorsValue.black_search, width: 3))),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/reviewed2.png',
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                                color: ColorsValue.green,
                                shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Rayna Culhane',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: Colors.white.withOpacity(0.4)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        '5.30 AM',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 7,
                            color: Colors.white.withOpacity(0.4)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                            color: ColorsValue.green, shape: BoxShape.circle),
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: ColorsValue.black_search,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }

  Widget _buildSearch() {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 50),
      width: 340,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            ColorsValue.gradSearch.withOpacity(0.11),
            ColorsValue.black_search.withOpacity(0)
          ])),
          child: TextFormField(
            cursorColor: ColorsValue.green,
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
            decoration: InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 25),
                child: SvgPicture.asset(
                  'assets/icons/icon_search.svg',
                  width: 16,
                  height: 16,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
              hintText: "Search Message here ..",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.2),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
