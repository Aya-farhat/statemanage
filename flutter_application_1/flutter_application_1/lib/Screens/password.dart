import 'package:flutter/material.dart';

class Password extends StatefulWidget {
 
  const Password({super.key , });

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
    bool _obscureText =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 60,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                            labelText: "password",
                            hintStyle:TextStyle(color: Colors.grey),
                            border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            prefixIcon: Icon(Icons.lock),
                           suffixIcon: IconButton(
                                 icon: Icon(
                             _obscureText ? Icons.visibility : Icons.visibility_off,
                                     ),
                             onPressed: () {
                                   setState(() {
                                _obscureText = !_obscureText;
            });
          },
        ),
           
          ),
            ),
        ),
       )) );
  }
}