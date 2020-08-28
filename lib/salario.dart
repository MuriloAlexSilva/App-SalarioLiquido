import 'package:flutter/material.dart';

class Salario extends StatefulWidget {
  @override
  _SalarioState createState() => _SalarioState();
}

class _SalarioState extends State<Salario> {
  final TextEditingController _salarioBruto = TextEditingController();

  _calcularClick() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo de Salário Líquido"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                child: TextField(
                  controller: _salarioBruto,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration:
                      InputDecoration(hintText: "Digite o seu salário bruto"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: _calcularClick(),
                child: Text("Calcular"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
