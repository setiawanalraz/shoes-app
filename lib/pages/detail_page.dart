import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Color(0xfff79b0d),
                      ),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Nike Air Force",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "Price: "),
                        TextSpan(
                          text: "\$170",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Card(
                    elevation: 5,
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset("assets/images/shoes5.png"),
                    ),
                  ),
                ),

                // --Choose Color
                const SizedBox(height: 30),
                const Text(
                  "Color",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _chooseColor(Colors.red),
                    _chooseColor(Colors.green),
                    _chooseColor(Colors.blue),
                    _chooseColor(Colors.yellow),
                    _chooseColor(Colors.black),
                  ],
                ),
                // --End of Choose Color

                // --Choose Size
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Size",
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
                        "Size guide",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _chooseSize(5),
                    _chooseSize(5.5),
                    _chooseSize(6),
                    _chooseSize(6.5),
                    _chooseSize(7),
                  ],
                ),
                // --End of Choose Size

                const SizedBox(height: 30),
                const Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Total", style: TextStyle(
                    fontSize: 20,
                  ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (_counter != 1) {
                              _decrementCounter();
                            }
                          },
                          child: const Text(
                            "-",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Text(
                          _counter.toString(),
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _incrementCounter();
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_checkout),
                      label: const Text("Add to cart"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xfff69c0d),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

ClipRRect _chooseColor(Color color) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      color: color,
      width: 50,
      height: 50,
    ),
  );
}

ClipRRect _chooseSize(double size) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      color: const Color(0xfff8f7fa),
      width: 50,
      height: 50,
      child: Center(
        child: Text(
          size.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
