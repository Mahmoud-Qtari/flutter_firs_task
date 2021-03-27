import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_cubit.dart';
import 'package:bloc/bloc.dart';
class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}
int count = counter;
class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return(Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.remove), onPressed: (){
              context.read<CounterCubit>().decrement();
              
            }),
            //execute when state changes
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text('$state', style: textTheme.headline2);
              },
            ),
            IconButton(icon: Icon(Icons.add), onPressed: (){
              //print(stateCount);
              context.read<CounterCubit>().increment();
            })
          ],
        ),
      ),
    ));

  }
}
