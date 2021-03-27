
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CounterView.dart';
import 'SubPage.dart';
import 'counter_cubit.dart';
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        automaticallyImplyLeading: false,
      ),

      body: BlocProvider(
        create: (context) => CounterCubit(),
        child: CounterView(),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          navigateToSubPage(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future navigateToSubPage(context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }
}
