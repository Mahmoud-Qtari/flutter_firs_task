
import 'package:bloc/bloc.dart';
import 'package:first_task/CountEvents.dart';
import 'package:flutter/material.dart';

int counter = 0;
//convert event to state
class counterBloc extends Bloc<CounterEvent,int>{

  counterBloc() : super(counter);
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch(event){

      case CounterEvent.increment:
        yield state +1;
        counter++;
        break;

      case CounterEvent.decrement:
        yield state -1;
        counter--;
        break;
    }

  }
}