import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _selectedColor = Colors.white; // Cor inicial dos quadrados

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clínica Ágil'),

      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text(
                'Selecione uma cor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(
                Icons.format_color_fill,
                color: Colors.pink,
                shadows: [Shadow(color: Colors.black)],
              ),
              title: const Text('Rosa'),
              onTap: () {
                setState(() {
                  _selectedColor = Colors.pink;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                  Icons.format_color_fill,
              color: Colors.black,
              shadows: [Shadow(color: Colors.white)],),
              title: const Text('Preto'),
              onTap: () {
                setState(() {
                  _selectedColor = Colors.black;
                });
                Navigator.pop(context);
              }
            ),
            ListTile(
              leading: const Icon(
                  Icons.format_color_fill,
                color: Colors.red,
                shadows: [Shadow(color: Colors.white)],),


              title: const Text('Vermelho'),
              onTap: () {
                setState(() {
                  _selectedColor = Colors.red;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.format_color_fill,
                color: Colors.blue,
              ),
              title: const Text('Azul'),
              onTap: () {
                setState(() {
                  _selectedColor = Colors.blue;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 40,
            mainAxisSpacing: 40,
          ),
          itemCount: 6, // Número total de quadrados
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: _selectedColor,
              child: const Center(
                child: Text(
                  'Clínica Ágil',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
