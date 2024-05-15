import 'package:bag_clone/item_screen.dart';
import 'package:bag_clone/type.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'product.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true,
          textTheme: const TextTheme(
              titleLarge: TitleTextStyle, bodyMedium: Body1Style)),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/item_screen': (context) => const ItemsScreen()
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  double _calculateChildAspectRatio(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return screenWidth / screenHeight;
  }

  double _calculateheight(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    if (screenHeight > 1050) {
      // Larger devices, use a wider aspect ratio
      return 300;
    } else {
      // Smaller devices, use a narrower aspect ratio
      return 200;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 237, 237),
      appBar: AppBar(
        scrolledUnderElevation:
            0.0, //for disabling changing of color when scrolling app
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 162, 138, 219),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 3),
              height: 40,
              width: MediaQuery.of(context).size.width / 1.38,
              child: SearchBar(
                //hintText: "Search for vehicles",

                hintStyle: MaterialStateProperty.all(
                  const TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: 12,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('lib/images/avatar.jpg')),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12,
          ),
          Container(
            height: 30.0,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: Types.length,
              itemBuilder: (BuildContext context, int index) {
                Type types = Types[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    child: Center(
                      child: Text(
                        types.text,
                        style: TextStyle(
                          decoration: index == selectedIndex
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          fontWeight: index == selectedIndex
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns in the grid
                        mainAxisSpacing: 30.0, // Spacing between rows
                        crossAxisSpacing: 30.0, // Spacing between columns
                        childAspectRatio: 0.6),
                    itemCount: Products.length, // Total number of items
                    itemBuilder: (BuildContext context, int index) {
                      Product product = Products[index];
                      Color color = product.color;
                      return Hero(
                          tag: 'Image',
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/item_screen',
                                    arguments: {
                                      'product': product,
                                      'color': color,
                                    });
                              },
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        constraints: BoxConstraints(
                                            maxHeight: 150, minHeight: 100),
                                        decoration: BoxDecoration(
                                          color: product.color,
                                          border:
                                              Border.all(color: product.color),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            product.image,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      product.description,
                                      style: ScrollText,
                                    ),
                                    Text(
                                      '\$${product.price}',
                                      style: Body1Style,
                                    ),
                                  ])));
                    },
                  )))
        ],
      ),
    );
  }
}
