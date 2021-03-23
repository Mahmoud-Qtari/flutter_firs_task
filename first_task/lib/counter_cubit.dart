
import 'package:bloc/bloc.dart';

int counter=0 ;
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(counter);

  int increment() {
    emit(state + 1);
    counter++;
  }

  void decrement() {
    emit(state - 1);
    counter--;
  }
}
