import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fastbar_state.dart';

class FastbarCubit extends Cubit<int> {
  FastbarCubit() : super(-1);
  void selectFilter(int index) {
    emit(index);
  }

}
