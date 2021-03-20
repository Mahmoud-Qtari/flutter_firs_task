import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'CounterBlocDelegate.dart';
import 'Home.dart';

/*
* create tabController
* create tabs
* create content for each tab
* */
main() {
  Bloc.observer = counterBlocDelegate();
  runApp(myApp());
}

class myApp extends StatelessWidget{
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
                Tab(icon: Icon(Icons.arrow_forward),),
                Tab(icon:Icon(Icons.arrow_back)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Home(),
              Home()
            ],
          ),
        ),
      ) ,
    ));
  }

}