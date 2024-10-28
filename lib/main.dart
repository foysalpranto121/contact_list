import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MY Contact List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrNmaes=['Pranto','Rimi','Hasib','nayem','Rakib','Yeasmin','Rahim','Yusuf','Shubro','Jack'];

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: ListView.separated(itemBuilder: (context,index){

        return ListTile(

          leading: Text('${index+1}'),
          title: Text(arrNmaes[index]),
          subtitle:Text('number') ,
          trailing: Icon(Icons.add),



        );
      },
        itemCount: arrNmaes.length,
        //itemExtent: 100 ,
        padding: EdgeInsets.all(22),
        separatorBuilder: (context,index){
        return Divider(height: 100,thickness: 1,);






        },





      )
    );
  }
}
