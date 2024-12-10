part of 'nav_cubit.dart';

@immutable
class NavState {
  final int currentIndex;
  final int? animateTabIndex;
  const NavState({this.currentIndex = 0, this.animateTabIndex});
}
