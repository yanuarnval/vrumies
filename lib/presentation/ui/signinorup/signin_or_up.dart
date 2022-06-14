import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vrumies/presentation/bloc/login/login_bloc.dart';
import 'package:vrumies/presentation/bloc/login/login_event.dart';
import 'package:vrumies/presentation/bloc/login/login_state.dart';
import 'package:vrumies/presentation/ui/home/home_page.dart';

class SignOrUp extends StatefulWidget {
  const SignOrUp({Key? key}) : super(key: key);

  @override
  State<SignOrUp> createState() => _SignOrUpState();
}

class _SignOrUpState extends State<SignOrUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<LoginBloc>(
          create: (_)=>LoginBloc(),
          child: BlocListener<LoginBloc,LoginAuthState>(
            listener: (context,state){
              if(state is SuccesLoadLoginAuthState){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext c)=>const HomePage()));
              }
            },
            child: Stack(
              children: [
                _buildBackground(context),
                _buildCenterContent(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                  child: Image.asset('assets/images/vrumies_logo.png',width: 160,height: 100,),
                )
              ],
            ),
          ),
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

  Positioned _buildCenterContent(BuildContext context) {
    return Positioned.fill(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to Vrumies!',
            style: TextStyle(
                fontSize: 55, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.54,
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          _buildSignOrUpWithGoogle(context),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }

  InkWell _buildSignOrUpwithFacebook(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext c )=>const HomePage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 71,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white, width: 4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/icon_facebook.svg',
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 27,
            ),
            const Text(
              'Sign Up/In with Facebook',
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  Row _buildOrLine(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.15,
          color: Colors.white,
        ),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 33.0),
          child: Text(
            'OR',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.15,
          color: Colors.white,
        ),
      ],
    );
  }

  BlocBuilder _buildSignOrUpWithGoogle(BuildContext context) {
    return BlocBuilder<LoginBloc,LoginAuthState>(
      builder: (context,state) {
        return InkWell(
            onTap: (){
              context.read<LoginBloc>().add(Login());
            },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.45,
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
                  width: 27,
                ),
                const Text(
                  'Sign Up/In with Google',
                  style: TextStyle(
                      color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
