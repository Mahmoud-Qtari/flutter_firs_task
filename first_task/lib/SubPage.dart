

import 'package:first_task/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CounterView.dart';
import 'counter_cubit.dart';

class SubPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page'),
        automaticallyImplyLeading: false,
      ),

      body: BlocProvider(
        create: (context) => CounterCubit(),
        child: CounterView(),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          navigateToMainPage(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future navigateToMainPage(context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
  }
}
