import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CountEvents.dart';
import 'CounterBloc.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    counterBloc countBloc = BlocProvider.of<counterBloc>(context);
    return(Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.remove), onPressed: (){
               countBloc.add(CounterEvent.decrement);
            }),
            //execute when state changes
            BlocBuilder<counterBloc,int>(
                builder:(context,state){
                  return Text('$state');
                  print('$state');
                }
            ),
            IconButton(icon: Icon(Icons.add), onPressed: (){
              countBloc.add(CounterEvent.increment);
            })
          ],
        ),
      ),
    ));
  }

}