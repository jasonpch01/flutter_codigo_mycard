import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class initPage extends StatefulWidget {

  @override
  State<initPage> createState() => _initPageState();
}

class _initPageState extends State<initPage> {
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("states"),
      ),
      body: Column(
        children: [
          Text(
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
            ),
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
          ),
          Slider(
            max: 100,
            value: sliderValue,
             onChanged: (double value){
              value = value;
              sliderValue = value;
              print(value);
              setState(() {});
             }
             )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: initPage(),
    );
  }
}

//Stateless vs Stateful

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<int> number = [10, 20, 30, 40, 50, 60, 70];

  int counter = 0;
 
  List<String> images = [
    "https://images.pexels.com/photos/17551618/pexels-photo-17551618/free-photo-of-amor-verano-jardin-hoja.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/15663496/pexels-photo-15663496/free-photo-of-casas-casa-vehiculo-puerta.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17481616/pexels-photo-17481616/free-photo-of-amor-romantico-hoja-regalo.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17346212/pexels-photo-17346212/free-photo-of-pajaro-animal-bailando-zoo.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/16251652/pexels-photo-16251652/free-photo-of-luces-noche-edificios-faro.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14918480/pexels-photo-14918480.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text(
            //  number[counter].toString(),
            //  style: const TextStyle(
            //    fontSize: 40.0,
            //  ),
            //),
            Image.network(images[counter]),
            ElevatedButton(
              onPressed: () {
                int maxValueNumber = images.length - 1;

                int Value = number[counter];

                if(counter < maxValueNumber){
                  counter = counter + 1;

                  setState(() {});

                  print(number.length);
                }
              },
              child: const Text("mas 10"),
            ),
            ElevatedButton(
              onPressed: () {
                if (counter != 0) {
                  counter = counter - 1;

                  setState(() {});

                  print(counter);
                }
              },
              child: const Text("Menos 10"),
            ),
          ],
        ),
      ),
    );
  }
}
