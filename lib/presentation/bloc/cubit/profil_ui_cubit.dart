import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilUiCubit extends Cubit<int> {
  ProfilUiCubit() : super(0);

  void changeUiMenu(int num) => emit(num);
}
