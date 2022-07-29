import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vrumies/presentation/ui/mobile/main_screen_mobile.dart';

import '../../../bloc/login/login_bloc.dart';
import '../../../bloc/login/login_event.dart';
import '../../../bloc/login/login_state.dart';
import '../../desktop/home/home_page.dart';

class SignorUpMobile extends StatelessWidget {
  const SignorUpMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginBloc>(
        create: (_) => LoginBloc(),
        child: BlocListener<LoginBloc, LoginAuthState>(
          listener: (context, state) {
            if (state is SuccesLoadLoginAuthState) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext c) => const MainScreenMobile()));
            }
          },
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/mobile_bg.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/vrumies_logo.png',
                      width: 160,
                      height: 100,
                    ),
                    Container(
                      width: 1,
                      height: 200,
                      color: Colors.white,
                    ),
                    const Text(
                      'Welcome to Vrumies!',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'An advertisement platform for the\nautomotive industry.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    BlocBuilder<LoginBloc, LoginAuthState>(
                        builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          context.read<LoginBloc>().add(Login());
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white, width: 4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/icons_google.svg',
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 17,
                              ),
                              const Text(
                                'Sign Up/In with Google',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Click here to switch to desktop version',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
