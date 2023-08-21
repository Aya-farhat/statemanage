import 'package:flutter/material.dart';

class FastBar extends StatefulWidget {
  final List<String> filters;
  const FastBar({required this.filters});

  @override
  State<FastBar> createState() => _FastBarState();
}

class _FastBarState extends State<FastBar> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    List<String> filters = ['قيد التنفيذ', 'الملغية', 'المكتملة', 'تحت المراجعة' , 'تمت'];
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
          height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
               itemCount: widget.filters.length,
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ElevatedButton(
                    onPressed: () {
                     setState(() {
                  selectedIndex = index;
                });
                    },
                     style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  isSelected ? Colors.red : Colors.grey,
                ),
              ),
                    child: Text(widget.filters[index],style: TextStyle(color: Colors.white),),
                  ),
                );
              })
            ),
          ),
        ),
          );
      
   
    
  }
}