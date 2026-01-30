import 'package:flutter/material.dart';
import 'package:mop/mop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  void initState() {
    super.initState();
    init();
  }


  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> init() async {
    final res = await Mop.instance.initialize(
        'F+n25sXdp+EwCq2lqYkgSiYg4mQOWiOoXEJq3s/71nfXMUZS9co7NSiJgdEUxGIu', // SDK Key
        'd6e02c2f8db97566', // SDK Secret
        apiServer: 'https://www.finclip.com', // 服务器地址
        apiPrefix: '/api/v1/mop' // 服务器接口请求路由前缀
    );
    print(res);
    if (!mounted) return;
  }

  void _incrementCounter() {
    Mop.instance.openApplet('fc3073959758115077');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
