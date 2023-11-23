import 'package:flutter/material.dart';
import 'result.dart';
class Perguntas extends StatefulWidget {


  const Perguntas({Key? key}) : super(key: key);

  @override
  _PerguntasState createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  List<Map<String, dynamic>> quiz = [
    {
      "Pergunta": "Três principais componentes de um motor?",
      "Respostas": [
        "filtro de ar, a vela de ignição, carburador.",
        "pára-choque, o volante e os pneus.",
        "pistão, a biela e o virabrequim.",
      ],
      "Alternativa_correta": 3
    },
   

 {
      "Pergunta": "Que ano foi construído o primeiro motor a combustão, a gasolina modernos ",
      "Respostas": [
        "1859",
        "1901",
        "1925",
      ],
      "Alternativa_correta": 1
    },


 {
      "Pergunta": "Qual é o principal propósito dos pneus de um veículo  ",
      "Respostas": [
        "Fornecer tração para fazer drift ",
        "Fornecer tração e aderência",
        "Aumentar a eficiência de combustível",
      ],
      "Alternativa_correta": 1
    },







    


    {
      "Pergunta": "Qual é o recorde mundial de velocidade em terra para um carro?",
      "Respostas": [
        "200 mph",
        "400 mph",
        "500 mph",
      ],
      "Alternativa_correta": 2
    },





 {
      "Pergunta": "Qual marca de automóvel é famosa por seu logotipo com um cavalo empinado",
      "Respostas": [
        "Porsche",
        "Ferrari ",
        "Bugatti ",
      ],
      "Alternativa_correta": 2
    },

 {
      "Pergunta": "Qual é o motor de um carro conhecido por estar na parte traseira do veículo?",
      "Respostas": [
        "Motor V6",
        "Motor V6 ",
        "Motor boxer ",
      ],
      "Alternativa_correta": 1
    },



 {
      "Pergunta": "Em que país está localizada a pista de Nürburgring?",
      "Respostas": [
        "Alemanha",
        "Espanha ",
        "Itália ",
      ],
      "Alternativa_correta": 1
    },


 {
      "Pergunta": "Qual é o nome da tecnologia que permite que os carros se conduzam de forma autônoma",
      "Respostas": [
        "Piloto automático",
        "Assistência ao motorista ",
        "Condução autônoma ",
      ],
      "Alternativa_correta": 1
    },




  ];

  int perguntaNumero = 1;
  int acerto = 0;


  void verificarResposta(int respostaNumero) {
    setState(() {
      if (quiz[perguntaNumero - 1]["Alternativa_correta"] == respostaNumero) {
        print("Acertou");
        acerto++;
      } 
      print("Acertos: $acerto");

      if (perguntaNumero < quiz.length) {
        perguntaNumero++;
  
      } 
      else {
        print("Finalizou");
        Navigator.pushNamed(context, "Resultado",arguments: Argumentos(acerto));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x75F06291),
          title: Center(
            child: Text("Mindrópolis Quiz"),
          ),
        ),
        body: Container(
          color: Color(0x75F06291),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Pergunta  $perguntaNumero de ${quiz.length}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "images/segunda.png",
                          width: 250,
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Perguntas:\n",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "arial",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    quiz[perguntaNumero - 1]['Pergunta'],
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        verificarResposta(0);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]['Respostas'][0],
                        style: TextStyle(
                          fontSize: 18,
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        verificarResposta(1);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]['Respostas'][1],
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        verificarResposta(2);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]['Respostas'][2],
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
        ),
      ),
    );
  }
}
