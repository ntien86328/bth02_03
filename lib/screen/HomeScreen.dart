import 'package:flutter/material.dart';

import 'checkOut.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  int selectedIndex = 0;

  late bool showDialog = false;
  String contentAlert = '';

  HomeScreen({this.selectedIndex = 0});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color rf_textColor = Color(0xFF00ab66);
  var color_primary = Color(0xFF00ab66);
  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color_primary,
        title: Text(
          'Kells',
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.selectedIndex,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: rf_textColor,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store_outlined,
              size: 22,
            ),
            label: 'Store',
            activeIcon: Icon(Icons.store, color: rf_textColor, size: 22),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined,
                  size: 22), //rf_search.iconImage(),
              label: 'My Cart',
              activeIcon: Icon(
                Icons.shopping_bag,
                color: rf_textColor,
                size: 22,
              ) // rf_search.iconImage(iconColor: rf_textColor),
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline,
                  size: 22), //rf_search.iconImage(),
              label: 'Favoutites',
              activeIcon: Icon(
                Icons.favorite,
                color: rf_textColor,
                size: 22,
              ) // rf_search.iconImage(iconColor: rf_textColor),
              ),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.person_outline, size: 22), //rf_search.iconImage(),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person,
                color: rf_textColor,
                size: 22,
              ) // rf_search.iconImage(iconColor: rf_textColor),
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_rounded,
                  size: 22), //rf_search.iconImage(),
              label: 'More',
              activeIcon: Icon(
                Icons.more_horiz,
                color: rf_textColor,
                size: 22,
              ) // rf_search.iconImage(iconColor: rf_textColor),
              ),
        ],
      ),
      body: StoreScreen(),
    );
  }
}

class StoreScreen extends StatefulWidget {
  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<Map<String, dynamic>> items = [
    {
      'title': 'Household',
      'urlImg': 'https://cdn-icons-png.flaticon.com/512/72/72153.png'
    },
    {
      'title': 'Grocery',
      'urlImg': 'https://cdn-icons-png.flaticon.com/512/3724/3724720.png'
    },
    {
      'title': 'Liquor',
      'urlImg': 'https://cdn-icons-png.flaticon.com/512/920/920623.png'
    },
    {
      'title': 'Chillect',
      'urlImg':
          'https://png.pngtree.com/png-vector/20190628/ourlarge/pngtree-cheese-icon-for-your-project-png-image_1520565.jpg'
    }
  ];
  List<Map<String, dynamic>> nexus = [
    {
      'title': 'Ginger',
      'amount': 'Rs 690.00',
      'imgUrl':
          'https://cdn.tgdd.vn/2021/12/CookDish/3-cach-lot-vo-gung-nhanh-chong-chi-voi-3-buoc-don-gian-avt-1200x676.jpg',
    },
    {
      'title': 'Garlic Premium',
      'amount': 'Rs 380.00',
      'imgUrl':
          'https://traphaco.com.vn/upload/images/Tin%20t%E1%BB%A9c/2017/Cay%20thuoc%20quy/toi2.jpg',
    },
    {
      'title': 'Red Onions',
      'amount': 'Rs 260.00',
      'imgUrl':
          'https://vietbest.vn/components/com_djclassifieds/images/item/0/36_hanh-tim-vinh-chau-soc-trang-vietbest.jpg',
    }
  ];
  List<Map<String, dynamic>> keels = [
    {
      'title': 'Carot',
      'amount': 'Rs 490.00',
      'imgUrl':
          'https://product.hstatic.net/200000271661/product/ca_rot_vi_thuoc_chua_2_f08a9353829c4723a468f1a0cb29bb65.jpg',
    },
    {
      'title': 'Mango -Bud',
      'amount': 'Rs 210.00',
      'imgUrl': 'https://www.hsp.vn/wp-content/uploads/2020/04/qua-xoai.jpg',
    },
    {
      'title': 'Grapes - Green',
      'amount': 'Rs 1,120.00',
      'imgUrl':
          'https://product.hstatic.net/1000282430/product/nho-xanh6000200557738_c40c59da9872452593b1426992e9ff91.jpg',
    }
  ];
  var color_primary = Color(0xFF00ab66);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All >',
                      style: TextStyle(fontSize: 16, color: color_primary),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: ClipOval(
                              child: Image(
                                image: NetworkImage(
                                  items[index]['urlImg'],
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            items[index]['title'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nexus Member Deals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All >',
                      style: TextStyle(fontSize: 16, color: color_primary),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 254,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: nexus.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image(
                              image: NetworkImage(
                                nexus[index]['imgUrl'],
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nexus[index]['title'],
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Text(
                              nexus[index]['amount'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Keels Deals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All >',
                      style: TextStyle(fontSize: 16, color: color_primary),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 254,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: keels.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image(
                              image: NetworkImage(
                                keels[index]['imgUrl'],
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nexus[index]['title'],
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Text(
                              nexus[index]['amount'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => checkOutScreen()));
                },
                child: Text(
                  'Checkout',
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
