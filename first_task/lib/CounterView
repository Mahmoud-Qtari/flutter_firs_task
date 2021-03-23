import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_cubit.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    //CounterCubit countCubit = BlocProvider.of<CounterCubit>(context);
    return(Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.remove), onPressed: (){
              //print(stateCount);
              context.read<CounterCubit>().decrement();
            }),
            //execute when state changes
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                //print(state);
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
