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
      title: 'About Me',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

 // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  int _decrease = 0;

  void _decreaseCounter() {
    setState(() {
      _decrease--;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        leading: Icon(
          Icons.people,
          size: 35,
          color: Colors.yellow,
        ),
        leadingWidth: 50.90,
        automaticallyImplyLeading: false,

        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // ch0xff_14_14_14 while the other colors stay the same.
        backgroundColor: Colors.orangeAccent,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,


        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Icon(
        //       Icons.people_alt_rounded,
        //       size: 70,
        //       color: Colors.grey,
        //     ),
        // Image.network(
        //     "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
        //         height: 35,
        //         width: 35,
        // ),
        //   Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text("A B O U T  M E",
        //           style: TextStyle(color: Colors.black)
        //       ),
        //       Text("My Name is Mercy A.A",
        //           style: TextStyle(color: Colors.grey)
        //       ),
        //     ],
        //   ),
        //   Icon(
        //     Icons.video_call,
        //     size: 70,
        //     color: Colors.grey,
        //   ),
        //   Icon(
        //     Icons.call,
        //     size: 70,
        //     color: Colors.black,
        //   ),
        //   Icon(
        //     Icons.search,
        //     size: 70,
        //     color: Colors.white,
        //   ),
        // ],
        // ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "A B O U T  M E",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal),
            ),
            //     Text(
            //       "My Name is Mercy A.A a Software Engineer with Tri-Inspire",
            //       textAlign: TextAlign.left,
            //       style: TextStyle(
            //           color: Colors.white70,
            //           fontSize: 13,
            //           fontWeight: FontWeight.w500,
            //           fontStyle: FontStyle.normal),
            //     ),
          ],
        ),
        // actions: [
        //   Icon(Icons.video_call, color: Colors.white, size: 30,),
        //   Icon(Icons.call, color: Colors.white, size: 30,),
        //   Icon(Icons.search, color: Colors.white, size: 30,),
        // ],
      ),
      body: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        //
        // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
        // action in the IDE, or press "p" in the console), to see the
        // wireframe for each widget.
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text('How many Likes can you give me:'),
          //   '$_decrease',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
          // Text(
          //   '$_decrease',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
          // Text(
          //   '$_counter',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
          // Text(
          //   '$_counter',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Write a summary about yourself', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight:FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('My name is Mercy Aderonke Adetogun popularly known as AMA gotten from the acroymn of my first'
                ' three names and which is also my brand name. A fresh graduate of Ladoke Akintola Unversity of Technology from'
                'the Department of Biochemistry,officially known as a Certified Biochemist. My Hobbies are singing, '
                'dancing ,cooking, reading, discovering new things and many more. I am an Enterpreneur, a software developer, interested'
                'in problem solving,Health Enthusiast. I am so much exicited about this new beginning i mean continuing my software development'
                ' journey.I would make sure i attend my classes,do my assignments up to date,do my own personal development and be dedicated'
                ' and consistent in this journey of becoming that great software developer.', style: TextStyle(color: Colors.white, letterSpacing: 1.5),
            ),
          ),
          SizedBox(
            width: 10,
          ),
      ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decreaseCounter,
            tooltip: 'Dislike',
            child: const Icon(Icons.thumb_down),
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Likes',
            child: const Icon(Icons.thumb_up_rounded),

          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.);
    );
  }
}