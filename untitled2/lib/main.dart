import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int count = 0;
  void Decrement() {
    setState(() {
      count --;

    });

    print(count);

  }

  void Increment() {
    setState(() {
      count ++;
    });

    print(count);
    print('Increment');
  }
bool get isEmpty => count <= 0;
  bool get isFull=> count >= 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https://trumpwallpapers.com/wp-content/uploads/Ice-Cream-Wallpaper-04-2000x1287-1.jpg'),
                fit: BoxFit.fitHeight

            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              isFull?'Lotado': 'Pode Entrar!',
              style: TextStyle(fontSize: 50, color: isFull ? Colors.red : Colors.black),
            ),
            Text(count.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: isEmpty? null: Decrement, style: TextButton.styleFrom(backgroundColor: isEmpty? Colors.black.withOpacity(0.4) :Colors.black, padding: const EdgeInsets.all(21)),
                    child: Text('saiu')),
                TextButton(
                  onPressed: isFull? null: Increment,
                  style: TextButton.styleFrom(backgroundColor: isFull? Colors.black.withOpacity(0.4) :Colors.black, padding: const EdgeInsets.all(21),
                  ),
                  child: Text('Entrou'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


