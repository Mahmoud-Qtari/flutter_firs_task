/*import 'package:first_task/CounterBlocDelegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CounterBloc.dart';
import 'Home.dart';
main() {
  Bloc.observer = counterBlocDelegate();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      home: BlocProvider<counterBloc>(
        create: (context) => counterBloc(0),
        child: Home(),
      ),
    ));
  }
}*/
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CounterBloc.dart';
import 'CounterBlocDelegate.dart';
import 'Home.dart';

/*
* create tabController
* create tabs
* create content for each tab
* */

main() {
  Bloc.observer = counterBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      home:DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Counter Tabs'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.arrow_downward_sharp),),
                Tab(icon:Icon(Icons.arrow_downward_sharp)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              BlocProvider<counterBloc>(
                create: (context) => counterBloc(),
                child: Home(),
              ),
              BlocProvider<counterBloc>(
                create: (context) => counterBloc(),
                child: Home(),
              ),
            ],
          ),
        ),
      ) ,
    ));
  }

}