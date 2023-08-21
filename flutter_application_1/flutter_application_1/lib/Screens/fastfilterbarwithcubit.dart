import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cubits/cubit/FastFilterBar/fastbar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitBar extends StatelessWidget {
  final List<String> filters;
  const CubitBar({required this.filters});

  @override
  Widget build(BuildContext context) {
  return BlocBuilder<FastbarCubit, int>(
      builder: (context, selectedIndex) {
        return Scaffold(
            body: Center(
              child: Container(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filters.length,
                  itemBuilder: (context, index) {
                    final isSelected = index == selectedIndex;
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<FastbarCubit>().selectFilter(index);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            isSelected ? Colors.red : Colors.grey,
                          ),
                        ),
                        child: Text(filters[index],style: TextStyle(color: Colors.white),
                      ),
                    ));
                  },
                ),
              ),
            ),
          );
      },
    );
  }
}