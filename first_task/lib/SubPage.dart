

import 'package:first_task/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CounterView.dart';
import 'counter_cubit.dart';

class SubPage extends StatelessWidget {

  CounterCubit counterCubit;
  SubPage(CounterCubit counterCubit){
    this.counterCubit=counterCubit;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page'),
      ),

      body: BlocProvider<CounterCubit>.value(
        value: counterCubit,
        child: CounterView(),
      ),

    );
  }
}
