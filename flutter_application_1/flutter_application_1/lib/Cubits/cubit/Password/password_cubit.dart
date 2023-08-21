import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'password_state.dart';

class PassCubit extends Cubit<bool> {
  PassCubit() : super(true);
  void Visible() {
    emit(!state);
  }
}
