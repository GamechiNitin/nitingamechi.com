import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'nav_state.dart';

class NavCubit extends Cubit<NavState> {
  final int? startindex;
  NavCubit({this.startindex}) : super(NavState(currentIndex: startindex ?? 0));

  int currentIndex = 0;

  void updateIndex(int val) {
    currentIndex = val;
    emit(NavState(currentIndex: currentIndex));
  }
}
