import 'package:flutter/material.dart';

class Argumentos {
  int acerto = 0;
  Argumentos(this.acerto);
}

class result extends StatelessWidget {
  static const routeName = "Resultado";

  result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos?;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x75F06291),
        title: Center(child: Text("Mindrópolis Quiz")),
      ),
      body: Container(
        color: Color(0x75F06291),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "resultados\n",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "arial",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset("images/result.png"),
              Text(
                "Você acertou:\n ${argumentos?.acerto ?? 0} de 10",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "arial",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "quiz");
                  },
                  child: Text(
                    "Jogar novamente",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(30, 255, 188, 211),
                    padding: EdgeInsets.fromLTRB(15, 15, 10, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
