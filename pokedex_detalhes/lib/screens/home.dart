import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE3350D),
        title: Text(
          'Charmander #004',
        ),
        leading: Image.asset("assets/images/logo.png"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset("assets/images/charmander.png"),
            Text(
                "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda."),
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xFF31A7D7),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //1° Coluna
                    Column(
                      children: [
                        Text(
                          "Altura",
                          style: titleStyle,
                        ),
                        Text(
                          "0.6 m",
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Tipo",
                          style: titleStyle,
                        ),
                        Chip(
                          label: Text("Fogo"),
                          backgroundColor: Color(0xFFF17F2E),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    //2° Coluna
                    Column(
                      children: [
                        Text(
                          "Peso",
                          style: titleStyle,
                        ),
                        Text("8.5 kg"),
                        SizedBox(
                          height: 40,
                        ),
                        Text("Habilidade", style: titleStyle),
                        Text("Chama"),
                      ],
                    )
                  ]),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Fraquezas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text("Água"),
                  backgroundColor: Color(0xFF688FF3),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Chip(
                  label: Text("Terra"),
                  backgroundColor: Color(0xFFF6DE3E),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Chip(
                  label: Text("Rocha"),
                  backgroundColor: Color(0xFFF6DE3E),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
