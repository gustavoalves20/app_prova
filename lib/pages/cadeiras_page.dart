import 'package:flutter/material.dart';
import 'package:segunda_prova/shared/tema.dart';
import '../models/parametros/parametros_produtos.dart';

class CadeirasPage extends StatefulWidget {
  final ParametrosProdutos produtos;

  const CadeirasPage(this.produtos, {super.key});

  @override
  State<CadeirasPage> createState() => _CadeirasPageState();
}

class _CadeirasPageState extends State<CadeirasPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final TextEditingController _cepController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Tema().corPreta),
        backgroundColor: Tema().corFundoCinza,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Tema().corFundoCinza,
              ),
              child: Image.asset(widget.produtos.imagePath),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.produtos.nome,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                          ),
                          Text('${widget.produtos.avaliacao} | '),
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '${widget.produtos.vendidos} vendidos',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Tema().corAzul,
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        size: 32,
                        color: Tema().corAzul,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
              child: Text(
                'Descrição',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Text(widget.produtos.descricao),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                'Calcular CEP',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: const TextInputType.numberWithOptions(),
                      controller: _cepController,
                      cursorColor: Tema().corAzul,
                      decoration: InputDecoration(
                        constraints: const BoxConstraints(
                          maxHeight: 50,
                        ),
                        labelStyle: const TextStyle(color: Colors.black),
                        labelText: 'CEP',
                        hintText: 'Digite seu CEP',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Tema().corAzul,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(50, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Calcular',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                'Preço',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'R\$ ${widget.produtos.preco}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('À vista ou em 12x no cartão'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: _decrementCounter,
                          icon: const Icon(
                            Icons.remove,
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_counter',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: _incrementCounter,
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Tema().corAzul,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: const Text(
                  'Comprar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
