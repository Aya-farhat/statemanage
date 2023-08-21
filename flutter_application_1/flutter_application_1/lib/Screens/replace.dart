import 'package:flutter/material.dart';

class Replacement extends StatefulWidget {
  const Replacement({super.key});

  @override
  State<Replacement> createState() => _ReplacementState();
}

class _ReplacementState extends State<Replacement> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
                 if (index==1)
                    Text("Hello Every one ...",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue))
                  else if ( index==2 )
                      Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network("https://th.bing.com/th/id/OIG.CO2sHWK_IEYIwzXsC2hX",height: 300,))
                   else if (index==3)
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.orange)
                           )
                    else 
                    Text("No Buttons Selected!"),


                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    index=1;
                    setState(() {
                    });
                  }, child: Text("Show Text")),
                ),
      
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    index =2;
                    setState(() {
                    });
                  }, child: Text("Show Image")),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    index=3;
                    setState(() {
                    });
                  }, child: Text("Show Circle")),
                ),
      
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    index=0;
                    setState(() {
                    });
                    }, child: Text("Reset")),
                ),
            ],
          ),
        ),
      ),
    );
  }
}