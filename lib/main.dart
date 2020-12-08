import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 245, 254, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400],
                        blurRadius: 50.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.menu_rounded),
                            Icon(Icons.more_vert),
                          ],
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/logo.jpg'),
                              )),
                        ),
                        Text(
                          'Vibhanshu Garg',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(85, 92, 147, 1)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'UI/UX Designer',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '\$8900',
                                    style: TextStyle(
                                        color: Color.fromRGBO(85, 92, 147, 1),
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Income',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '\$5500',
                                    style: TextStyle(
                                        color: Color.fromRGBO(85, 92, 147, 1),
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Expenses',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '\$899',
                                    style: TextStyle(
                                        color: Color.fromRGBO(85, 92, 147, 1),
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Loan',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Overview',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(85, 92, 147, 1)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            Icon(
                              Icons.notifications_outlined,
                              color: Color.fromRGBO(85, 92, 147, 1),
                              size: 30,
                            ),
                            Positioned(
                              left: 17,
                              top: 6,
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.red
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Dec 11, 2020",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              OverviewCard(
                icon: Icon(
                  Icons.arrow_upward,
                  size: 40,
                ),
                headerText: 'Sent',
                price: '\$150',
              ),
              SizedBox(height: 20,),
              OverviewCard(
                icon: Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),
                headerText: 'Recieved',
                price: '\$170',
              ),
              SizedBox(height: 20,),
              OverviewCard(
                icon: Icon(
                  Icons.money_outlined,
                  size: 40,
                ),
                headerText: 'Loan',
                price: '\$400',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OverviewCard extends StatelessWidget {
  Icon icon;
  String headerText;
  String price;
  OverviewCard({this.icon, this.headerText, this.price});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 50.0,
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(229, 232, 249, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: icon,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        headerText,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Sending payments',
                        style: TextStyle(
                            fontSize: 17
                        ),
                      ),
                      Text(
                        'to clients',
                        style: TextStyle(
                            fontSize: 17
                        ),
                      ),
                    ],

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                price,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
