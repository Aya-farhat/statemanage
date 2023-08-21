import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cubits/cubit/Replace/replace_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Replace extends StatelessWidget {
  const Replace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          BlocBuilder<ReplaceCubit,ReplaceState>(builder:(context , State) {
            if (State is ShowText) {
            return Text("Hello Every one ...",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue));
            } else if ( State is ShowImage)
            {
             return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://th.bing.com/th/id/OIG.CO2sHWK_IEYIwzXsC2hX",height: 300,));
              
            } else if (State is ShowCircle)
            {
              return Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.orange)
              );
            
            }
            else 
            {
              return Text("No Button Clicked!");
            }

          }
          
          
          
          ),

              
              
              

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  context.read<ReplaceCubit>().showtext();
                }, child: Text("Show Text")),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  context.read<ReplaceCubit>().showimage();
                }, child: Text("Show Image")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  context.read<ReplaceCubit>().showcircle();
                }, child: Text("Show Circle")),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  context.read<ReplaceCubit>().reset();
                }, child: Text("Reset")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}