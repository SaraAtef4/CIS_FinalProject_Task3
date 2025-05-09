import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/icon_container.dart';
import 'package:task3/image_choise.dart';
import 'package:task3/product_list_tile.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int selectedIndex = 0;
  bool isFav = false;

  List<String> images = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
    'assets/image4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: InkWell(
          child: IconContainer(
            icon: Icons.arrow_back,
            bgColor: Colors.grey.withOpacity(0),
            hasBorder: true,
            iconColor: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              isFav = !isFav;
              setState(() {});
            },
            child: IconContainer(
              icon: isFav ? Icons.favorite : Icons.favorite_border,
              bgColor: Colors.white,
              iconColor: isFav ? Colors.red : Colors.black,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(height: 70),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: ImageChoise(
                          imagePath: images[0],
                          isSelected: selectedIndex == 0,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: ImageChoise(
                          imagePath: images[1],
                          isSelected: selectedIndex == 1,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: ImageChoise(
                          imagePath: images[2],
                          isSelected: selectedIndex == 2,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 3;
                          });
                        },
                        child: ImageChoise(
                          imagePath: images[3],
                          isSelected: selectedIndex == 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Color(0xfff6eaec),
                  ),
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 200),
                    child: Image.asset(
                      images[selectedIndex],
                      fit: BoxFit.cover,
                      key: ValueKey<String>(images[selectedIndex]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Beats Solo4 ',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: CupertinoColors.systemYellow),

                          Text('4.9'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Text(
                  ' Wireless Headphones - On-Ear Wireless Headphones - Matte Black',
                ),
                SizedBox(height: 15),
                ProductListTile(
                  icon: Icons.sticky_note_2_outlined,

                  iconColor: Color(0xffe64560),
                  bgColor: Color(0xfff6eaec),
                  title: "Product Specifications",
                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
                ),
                Divider(height: 40,color: Colors.grey.shade300
                  ,),
                ProductListTile(
                  icon: Icons.color_lens_outlined,
                  iconColor: Color(0xffe64560),
                  bgColor: Color(0xfff6eaec),
                  title: "Colors",
                  trailing: SizedBox(
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('\$199',style: TextStyle(
                        fontSize: 25
                    ),),
                    Spacer(),
                    InkWell(
                      child: Container(
                        width: 200,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffe44560),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Add To Cart',style: TextStyle(color: Colors.white,fontSize: 18),),
                            Icon(Icons.arrow_forward_ios,color: Colors.white)
                          ],
                        ),
                      ),
                    )
                  ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
