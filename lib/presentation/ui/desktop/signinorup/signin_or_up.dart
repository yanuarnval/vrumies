import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vrumies/presentation/bloc/login/login_bloc.dart';
import 'package:vrumies/presentation/bloc/login/login_event.dart';
import 'package:vrumies/presentation/bloc/login/login_state.dart';

import '../../mobile/signorup/signorUpMobile.dart';
import '../home/home_page.dart';

class SignOrUp extends StatefulWidget {
  const SignOrUp({Key? key}) : super(key: key);

  @override
  State<SignOrUp> createState() => _SignOrUpState();
}

class _SignOrUpState extends State<SignOrUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _windowMode(context),
    );
  }

  BlocProvider _windowMode(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => LoginBloc(),
      child: BlocListener<LoginBloc, LoginAuthState>(
        listener: (context, state) {
          if (state is SuccesLoadLoginAuthState) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext c) => const HomePage()));
          }
        },
        child: Stack(
          children: [
            _buildBackground(context),
            _buildCenterContentDesktop(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Image.asset(
                'assets/images/vrumies_logo.png',
                width: 160,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildBackground(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/sign_left.png',
          width: MediaQuery.of(context).size.width * 0.4,
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height,
        ),
        Image.asset(
          'assets/images/sign_right.png',
          width: MediaQuery.of(context).size.width * 0.6,
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height,
        )
      ],
    );
  }

  Widget _buildCenterContentDesktop() {
    return Positioned.fill(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to Vrumies!',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'An advertisement platform for the automotive industry.',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 43,
          ),
          _buildButtonLoginDesktop(),
          const SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext c) => const SignorUpMobile(),
                ),
              );
            },
            child: const Text(
              'Click here to switch to mobile version',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  BlocBuilder<LoginBloc, LoginAuthState> _buildButtonLoginDesktop() {
    return BlocBuilder<LoginBloc, LoginAuthState>(builder: (context, state) {
      return InkWell(
        onTap: () {
          context.read<LoginBloc>().add(Login());
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
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
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      );
    });
  }
}
