import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/widgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'FoodPlaza',
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30,
          onPressed: () {},
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {},
              child: Text(
                "Cart (${currentUser.cart.length})",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 0.8)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor),
                  ),
                  hintText: 'Search Food or Restaurants',
                  prefixIcon: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.clear,
                    size: 30,
                  )),
            ),
          ),
          RecentOrders()
        ],
      ),
    );
  }
}
