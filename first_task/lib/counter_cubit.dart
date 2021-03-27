
import 'package:bloc/bloc.dart';

//this counter use for initial state for each screen
int counter=0 ;
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(counter);

  void increment() {
    emit(state + 1);
    counter++;
  }

  void decrement() {
    emit(state - 1);
    counter--;
  }
}
