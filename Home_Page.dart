import 'package:flutter/material.dart';

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          
          ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x75F06291),
          title: Center(child: Text("Mindrópolis Quiz"),),
        ),
        body: Container(
          color: Color(0x75F06291), 
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Image.asset("images/logo.png"),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "quiz");
                  },
                  child: Text(
                    "Inicializar",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(30, 255, 188, 211),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
