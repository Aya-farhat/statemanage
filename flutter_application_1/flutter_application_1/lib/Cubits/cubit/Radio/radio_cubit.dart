import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<String?> {
  RadioCubit() : super('');
  void  SwitchStation(String station)
  {
    emit(station);
  }

}
