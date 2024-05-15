import 'package:bag_clone/CustomRadiobutton.dart';
import 'package:bag_clone/product.dart';
import 'package:flutter/material.dart';
import 'style.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  Color _selectedColor = Colors.grey;
  int itemAmount = 0;
  void _increment() {
    setState(() {
      itemAmount++;
    });
  }

  void _decrement() {
    setState(() {
      if (itemAmount > 0) itemAmount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Product products = arguments['product'] as Product;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back)),
            Text('User'),
            IconButton(
                onPressed: () {
                  () {};
                },
                icon: Icon(Icons.logout))
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .04),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        products.title,
                        style: ItemTitleText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .04),
                    child: Container(
                      child: Text(
                        products.description,
                        style: ItemText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .04),
                    child: Container(
                      child: Text(
                        "Price",
                        style: ItemText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .04),
                    child: Container(
                      child: Text(
                        "\$${products.price}",
                        style: ItemTitleText,
                      ),
                    ),
                  ),
                ],
              )),
              Container(
                constraints: BoxConstraints(maxWidth: 150, minHeight: 100),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Image.asset(
                    products.image,
                  ),
                ),
              )
            ],
          ),
          Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 4)),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black, // Shadow color
                    offset: Offset(0, 2), // Offset of the shadow
                    blurRadius: 4.0, // Blur radius of the shadow
                    spreadRadius: 1.0, // Spread radius of the shadow
                  ),
                ],
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Row(children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                            ),
                            Text("Color"),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(
                                  right: MediaQuery.of(context).size.width / 4 -
                                      10),
                              child: Text(
                                'Size',
                              ),
                            )
                          ]),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              CustomRadioButton(
                                color: Colors.blue,
                                selectedColor: _selectedColor,
                                onChanged: (selectedColor) {
                                  setState(() {
                                    _selectedColor = selectedColor;
                                  });
                                },
                              ),
                              CustomRadioButton(
                                color: Colors.red,
                                selectedColor: _selectedColor,
                                onChanged: (selectedColor) {
                                  setState(() {
                                    _selectedColor = selectedColor;
                                  });
                                },
                              ),
                              CustomRadioButton(
                                color: Colors.grey,
                                selectedColor: _selectedColor,
                                onChanged: (selectedColor) {
                                  setState(() {
                                    _selectedColor = selectedColor;
                                  });
                                },
                              ),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width / 4),
                                child: Text(
                                  '${products.size}',
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        20, MediaQuery.of(context).size.height / 16, 10, 10),
                    child: Container(
                      child: Text(
                          'lorem ipsum lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                    child: Row(
                      children: [
                        FloatingActionButton.small(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Icon(Icons.remove),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: Center(child: Text('${itemAmount}')),
                        ),
                        FloatingActionButton.small(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                        Expanded(child: SizedBox()),
                        FloatingActionButton.small(
                          backgroundColor: Colors.white,
                          elevation: 4.0,
                          onPressed: () {},
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: FloatingActionButton.small(
                          backgroundColor: Colors.white,
                          elevation: 4.0,
                          onPressed: () {},
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.08),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width / 1.75,
                          height: 40,
                          child: Center(
                            child: Text(
                              "Buy now",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
