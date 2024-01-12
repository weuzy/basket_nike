import 'package:basketnike/data.dart';
import 'package:basketnike/my_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> buildCategories() {
    return Data.generateCategories().map((e) => Container(
      padding: const EdgeInsets.only(left: 15, bottom: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                               e.id == 1 ? Colors.white : MyColors.myBlack),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(e.id == 1 ? MyColors.myOrange : Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: MyColors.myBlack,
                  child: Image.asset(e.image),
                ), 
              ),
              const SizedBox(width: 10,),
              Text(e.title, style: const TextStyle(fontSize: 14),)
            ],
          ),
        ),
      
      ),
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("assets/ic_menu.png"),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Image.asset("assets/ic_search.png"),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset("assets/img_banner.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                            text: "Nouveauté",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16)),
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                            text: "Nike Air\nMax 90",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 28)),
                      ),
                      const SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                MyColors.myBlack),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                        child: Text(
                          "Acheter".toUpperCase(),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: buildCategories(),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                text: "Nouveauté pour Homme",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
          ),
          const SizedBox(height: 10,),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.all(5),
            children: Data.generateProducts().map((e) => Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(14.0)
              ),
              elevation: 0,
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(e.image, height: 90, width: 90),
                      const SizedBox(height: 5,),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: e.type,
                          style: const TextStyle(
                            color: MyColors.myOrange,
                            fontSize: 16.0
                          )
                        ),
                      ),
                      const SizedBox(height: 5,),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: e.title,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0
                          )
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: "${e.price} F CFA",
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ))),
                            child:  const Icon(Icons.add, color: Colors.white,),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )).toList(),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 4.0,
        child: Container(
          margin: const EdgeInsets.all(15),
          child: const Icon(Icons.home_outlined, color: Colors.white,),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 30,),
            IconButton(
              onPressed: (){}, 
              icon: Image.asset("assets/ic_shop.png")
            ),
            IconButton(
              onPressed: (){}, 
              icon: Image.asset("assets/ic_wishlist.png")
            ),
            IconButton(
              onPressed: (){}, 
              icon: Image.asset("assets/ic_notif.png")
            ),
            const SizedBox(width: 2,),
          ],
        )
      ),
    );
  }
}
