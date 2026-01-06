import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pp_mobile/oneset.dart'; // Import OnesetPage
import 'package:pp_mobile/gamis.dart'; // Import GamisPage
import 'package:pp_mobile/midi.dart'; // Import MidiPage
import 'package:pp_mobile/tunik.dart'; // Import TunikPage

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _searchController = TextEditingController();

  List<String> imagePaths = [
    'assests/images/oneset1.jpg',
    'assests/images/gamis1.jpg',
    'assests/images/midi1.jpg',
    'assests/images/tunik1.jpg', // Link to Tunik image
  ];

  List<String> productNames = [
    'NAY ONESET RAYON All Size Jumbo - Nyaman & Adem Setelan Baju Celana Casual Harian',
    'Nay Gamis Amara Blossom Silky Queen Premium Dress Lebaran Motif Mewah Muslim',
    'LILLY MIDI DRESS Katun Bordir Premium Elegan untuk Casual & Formal',
    'NAY TUNIK Polos Polo Linen Elegan, Nyaman & Modis',
  ];

  // Function to filter products based on the search query
  List<int> getFilteredProducts(String query) {
    if (query.isEmpty) {
      return List.generate(productNames.length, (index) => index);
    } else {
      return List.generate(productNames.length, (index) {
        if (productNames[index].toLowerCase().contains(query.toLowerCase())) {
          return index;
        } else {
          return -1;
        }
      }).where((index) => index != -1).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assests/images/logo.PNG', width: 150),
            SizedBox(width: 5),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Homepage'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            Divider(),
            ExpansionTile(
              title: Text('Kategori'),
              children: [
                ListTile(
                  title: Text('Oneset'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onesetpage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Gamis'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GamisPage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Midi'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MidiPage()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Tunik'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TunikPage()),
                    );
                  },
                ),
              ],
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search bar above carousel
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: TextField(
                controller: _searchController,
                onChanged: (query) {
                  setState(() {}); // Update the grid when search text changes
                },
                decoration: InputDecoration(
                  hintText: 'mencari produk',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),

            // Slider Promosi
            CarouselSlider(
              options: CarouselOptions(
                height: 180,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items:
                  [
                    'assests/images/promosi1.png',
                    'assests/images/promosi2.png',
                    'assests/images/promosi3.png',
                  ].map((item) {
                    return Builder(
                      builder: (context) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
            ),

            SizedBox(height: 10),

            // Grid Produk
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 12),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount: getFilteredProducts(_searchController.text).length,
              itemBuilder: (context, index) {
                int productIndex = getFilteredProducts(
                  _searchController.text,
                )[index];

                // Redirect based on image selection
                return GestureDetector(
                  onTap: () {
                    if (productIndex == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onesetpage()),
                      );
                    } else if (productIndex == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GamisPage()),
                      );
                    } else if (productIndex == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MidiPage()),
                      );
                    } else if (productIndex == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TunikPage(),
                        ), // Navigate to TunikPage for the 4th photo
                      );
                    }
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        imagePaths[productIndex],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
