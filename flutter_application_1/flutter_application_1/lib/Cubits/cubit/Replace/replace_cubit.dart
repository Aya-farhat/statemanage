import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'replace_state.dart';

class ReplaceCubit extends Cubit<ReplaceState> {
  ReplaceCubit() : super(ReplaceInitial());
  void showtext(){
    emit(ShowText());
  }
  void showimage(){
    emit(ShowImage());
  }
  void showcircle(){
    emit(ShowCircle());
  }
  void reset(){
    emit(ReplaceInitial());
  }
}
