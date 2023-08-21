import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cubits/cubit/Password/password_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordCubit extends StatelessWidget {
  const PasswordCubit({super.key});
  @override
  Widget build(BuildContext context) {
return BlocBuilder<PassCubit,bool>(
      builder: (context, obscureText) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                            labelText: "password",
                            hintStyle:TextStyle(color: Colors.grey),
                            border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            prefixIcon: Icon(Icons.lock),
                           suffixIcon: IconButton(
                            icon: Icon(
                obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                context.read<PassCubit>().Visible();
              },
                                 ),
                   )
                   )
                   )
                   )
                   )
                   );
      }
                   );
  }
  }
