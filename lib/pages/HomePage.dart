import 'package:ecommerce_nike/models/shoe_model.dart';
import 'package:ecommerce_nike/pages/about_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../Components/Shoetile.dart';
import 'package:lottie/lottie.dart';

import 'cart_page.dart';
import 'see_all_page.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int assigned_index_of_tab = 0;
  int selected_index = 0;

  List<Shoe> shoes = [
    Shoe(
      name: "Air Jordan 10",
      discription: "For multi purpose",
      price: "10000",
      imagepath: "assets/shoe1.jpg",
    ),
    Shoe(
      name: "Air Jordan 11",
      discription: "Specialised for sports",
      price: "20000",
      imagepath: "assets/shoe2.jpg",
    ),
    Shoe(
      name: "Air Jordan 12",
      discription: "Specialised for nothing for everything",
      price: "30000",
      imagepath: "assets/shoe3.jpg",
    ),
    Shoe(
      name: "Air Jordan 13",
      discription: "Do not purchase",
      price: "40000",
      imagepath: "assets/shoe4.jpg",
    ),
  ];

  List<Shoe> cartShoes = [];

  void addToCart(int index) {
    setState(() {
      cartShoes.add(shoes[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Container(
              height: 330, // Adjust the height as needed
              padding: EdgeInsets.all(16),
              color: Colors.black,// Add padding if needed
              child: Lottie.asset(
                "assets/logo.json",
                fit: BoxFit.contain, // Adjust the BoxFit property
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.home, color: Colors.white),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
              },
            ),
            ListTile(
              title: Text("About", style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.info_outline, color: Colors.white),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => aboutpage()));
              },
            ),
            Spacer(),
            ListTile(
              title: Text("Log out", style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.logout, color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white10,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ), // search bar
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "Everyone flies.. some fly longer than others",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  fontSize: 10,
                ),
              ),
            ), // everyone flies but some flies longer than others
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 15, 0, 0),
                  child: Text(
                    "Hot Picks 🔥",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(200, 25, 2, 0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => seeAllpage()));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                )
              ],
            ), // for hot picks and see all
            const SizedBox(height: 5),
            ListView.builder(
              shrinkWrap: true,
              itemCount: shoes.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                Shoe shoe = shoes[index];
                return ShoeTile(
                  shoe: shoe,
                  index: index,
                  addToCart: addToCart, // Pass addToCart function
                );
              },
            ),
            SizedBox(height: 16),
            SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: GNav(
            color: Colors.white,
            activeColor: Colors.white,
            gap: 8,
            tabBackgroundColor: Colors.white12,
            padding: EdgeInsets.all(16),
            selectedIndex: assigned_index_of_tab,
            onTabChange: (index) {
              setState(() {
                assigned_index_of_tab = index;
              });
              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(shoeList: cartShoes),
                  ),
                );
              }
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: "Cart",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Emd',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
