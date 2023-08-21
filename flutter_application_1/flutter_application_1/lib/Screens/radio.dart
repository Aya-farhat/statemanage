import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cubits/cubit/Radio/radio_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Container(
      child: ListView(
        children: [
                      for (int i = 1; i <= 20; i++)
                   BlocBuilder<RadioCubit,String?>(builder:
                    (context, state){
                       return RadioListTile(
                    title: Text('Option $i'),
                    value: 'Option $i',
                    groupValue: state,
                    onChanged: (station)
                    {
                      context.read<RadioCubit>().SwitchStation(station!);
                    }
                    );
                    }
                   )

        ],
      )
     )
      );
  }
}