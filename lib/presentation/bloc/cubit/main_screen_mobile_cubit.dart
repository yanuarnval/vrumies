import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreenMobileCubit extends Cubit<int> {
  MainScreenMobileCubit() : super(0);

  void changePage(int value)=>emit(value);
}
