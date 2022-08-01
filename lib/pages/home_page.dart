import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallat_app/util/my_button.dart';
import 'package:wallat_app/util/my_card.dart';
import 'package:wallat_app/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on_rounded,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 32,
                    color: Colors.pink[200],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 32,
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My ',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Crards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),

                    //plus button
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //card
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 243.053,
                      cardNumber: 23546554,
                      expiryMonth: 8,
                      expiryYear: 2023,
                      Color: Colors.blue[300],
                    ),
                    MyCard(
                      balance: 243.053,
                      cardNumber: 23546554,
                      expiryMonth: 6,
                      expiryYear: 2025,
                      Color: Colors.yellow[300],
                    ),
                    MyCard(
                      balance: 243.053,
                      cardNumber: 23546554,
                      expiryMonth: 5,
                      expiryYear: 2028,
                      Color: Colors.pinkAccent[300],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //dot dott next
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),

              SizedBox(
                height: 40,
              ),

              //3 buttons => send+ play+ bill
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //send button
                    MyButton(
                      iconImagePath: 'lib/Icons/send-money.png',
                      buttonText: 'Send',
                    ),
                    //play button
                    MyButton(
                      iconImagePath: 'lib/Icons/credit-card.png',
                      buttonText: 'Pay',
                    ),

                    //bills butoon
                    MyButton(
                      iconImagePath: 'lib/Icons/Bill.png',
                      buttonText: 'Bills',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),

              //colum=> status+ transaction
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    //statics
                    MyListTile(
                        iconImagePath: 'lib/Icons/satatics.png',
                        tileTitle: 'Statistics',
                        tileSubTitle: 'Payment And Money'),

                    //transactions
                    MyListTile(
                        iconImagePath: 'lib/Icons/transactions.png',
                        tileTitle: 'Transactions',
                        tileSubTitle: 'Transaction History'),
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
