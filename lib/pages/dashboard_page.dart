import 'package:flutter/material.dart';
import 'package:shoes_app/pages/detail_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: "Hi, "),
                                TextSpan(
                                  text: "Zanya",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Mobile Developer")
                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 2),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color(0xfffdebcf),
                      child: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),


                // --New Collections
                const SizedBox(height: 30),
                const Text(
                  "New Collections",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                Row(
                  children: [
                    _newCollections(200, 200, "assets/images/shoes4.png", 86),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 5),
                          child: _newCollections(
                              250, 100, "assets/images/shoes7.png", 236),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              _newCollections(
                                  200, 95, "assets/images/shoes3.png", 145),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 5,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: const Color(0xffdee2e5),
                                    width: 45,
                                    height: 95,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // --End of New Collections


                // --Choose Category
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Choose Category",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: const Text(
                        "See more",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _chooseCategory(80, const Icon(Icons.abc)),
                    _chooseCategory(60, const Icon(Icons.abc)),
                    _chooseCategory(60, const Icon(Icons.abc)),
                    _chooseCategory(60, const Icon(Icons.abc)),
                    _chooseCategory(60, const Icon(Icons.abc)),
                  ],
                ),
                const SizedBox(height: 10),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _productItem(
                        "assets/images/shoes5.png", "Nike Air Force", 170),
                    _productItem(
                        "assets/images/shoes7.png", "Puma x first", 120),
                  ],
                ),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _productItem(
                        "assets/images/shoes3.png", "Women's Spe", 200),
                    _productItem("assets/images/shoes6.png", "Speed D90", 185),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}

Stack _newCollections(
  final double width,
  final double height,
  final String imgPath,
  final int price,
) {
  return Stack(
    alignment: AlignmentDirectional.bottomStart,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: const Color(0xffdee2e5),
          width: width,
          height: height,
          child: Image.asset(
            imgPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 50,
            height: 50,
            color: const Color.fromARGB(255, 150, 150, 150),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "\$$price",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

ClipRRect _chooseCategory(double width, Icon icon) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      width: width,
      color: const Color(0xffdee2e5),
      child: IconButton(onPressed: () {}, icon: icon),
    ),
  );
}

Stack _productItem(
  final String imgPath,
  final String name,
  final int price,
) {
  return Stack(
    alignment: AlignmentDirectional.topStart,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const DetailPage()));
              },
              child: Column(
                children: [
                  Container(
                    color: const Color(0xfff8f8fa),
                    width: 220,
                    height: 280,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Color(0xfff79b0d),
                              ),
                            ),
                          ),
                          Image.asset(
                            imgPath,
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\$$price",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        ),
      ),
    ],
  );
}

BottomNavigationBar _bottomNavigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: const Color(0xfffdebcf),
    selectedItemColor: const Color(0xfff69c0d),
    unselectedItemColor: Colors.black,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.dashboard),
        label: "Dashboard",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: "My Orders",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.discount),
        label: "Promos",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: "Notifications",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Account",
      ),
    ],
  );
}