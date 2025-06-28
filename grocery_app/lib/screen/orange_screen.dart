import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/button.dart';

class OrangeScreen extends StatelessWidget {
  const OrangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/orange.png", height: 150)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Fresh Orange",
                        style: TextStyle(
                          color: Color.fromRGBO(48, 80, 130, 1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(48, 80, 130, 1.0),
                      ),
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                    Text(
                      '1kg',
                      style: TextStyle(
                        color: Color.fromRGBO(48, 80, 130, 1.0),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(48, 80, 130, 1.0),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fresh and juicy oranges',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Product Description",
                      style: TextStyle(
                        color: Color.fromRGBO(48, 80, 130, 1.0),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Product Reviews",
                      style: TextStyle(
                        color: Color.fromRGBO(48, 80, 130, 1.0),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/girl.png"),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Victor Perez"),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '25th June 2025',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Similar Products',
                      style: TextStyle(
                        color: Color.fromRGBO(48, 80, 130, 1.0),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
