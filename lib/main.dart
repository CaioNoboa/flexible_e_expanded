import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible & Expanded',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Flexible & Expanded'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 100,
            child: Text('Item 1 - pretty big!'),
            color: Colors.red,
          ),
          Flexible(
            // fit
            // fit: FlexFit.loose, // esse é o padrão, o container ocupará apenas o espaço necessário pelos elementos
            fit: FlexFit.tight, // vai expandir o elemento para ocupar todos os espaços em branco

            // flex - se outro elemento tiver FlexFit.tight e ambos os elementos competirem por espaço, podemos decidir prioridades com o flex
            flex: 1, // por padrão é 1
            // Caso existam 2 elementos, um com flex: 1, e o outro com flex: 2, será somado os valores e o primeiro ocupará 1/3 da área disponível e o outro 2/3

            child: Container(
              height: 100,
              child: Text('Item 2'),
              color: Colors.blue,
            ),
          ),
          Expanded( // expanded é o flexible com fit já definido para tight
            flex: 2,
            child: Container(
              height: 100,
              child: Text('Item 3'),
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
