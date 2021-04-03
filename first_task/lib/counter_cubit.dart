
import 'package:bloc/bloc.dart';
import 'CounterView.dart';
//this counter use for initial state for each screen
int counter =0  ;
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(counter);
  void increment() {
    emit(counter + 1);
    counter++;
  }

  void decrement() {
    emit(counter - 1);
    counter--;
  }
}
