import 'package:flutter/material.dart';

class ShopStore extends StatefulWidget {
  const ShopStore({Key? key}) : super(key: key);

  @override
  State<ShopStore> createState() => _ShopStoreState();
}

class _ShopStoreState extends State<ShopStore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        appBar: AppBar(
          leading: IconButton(


            onPressed: (){

            },

            icon: Icon(


              Icons.view_headline_sharp,
              color: Colors.black,


            ),

          ),
          backgroundColor: Colors.white,
          title: Image.asset('assets/images/skylinx.png',
          height: 40,
            width: 130,
          ),
           actions: [
             IconButton(


               onPressed: (){

               },

               icon: Icon(


                 Icons.shopping_cart,
                 color: Colors.black,


               ),

             ),
           ],

        ),
        body: Column(
          children:[ Container(
            height: 300,

            child: ListView(

              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(5),

                    child: Image.asset('assets/images/salman.png',fit: BoxFit.cover,
                      width: 290,
                      height: 100,
                    ),

                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(10),

                    child: Image.asset('assets/images/XCM.png',fit: BoxFit.cover,
                      width: 290,
                      height: 100,
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(10),

                    child: Image.asset('assets/images/stock.png',fit: BoxFit.cover,
                      width: 290,
                      height: 100,
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(10),

                    child: Image.asset('assets/images/ecommerce.png',fit: BoxFit.cover,
                      width: 290,
                      height: 100,
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(10),

                    child: Image.asset('assets/images/gm.png',fit: BoxFit.cover,
                      width: 290,
                      height: 100,
                    ),

                  ),
                ),
              ],
            ),
          ),
            Container(
              height: 90,

              child: ListView(

                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(

                      borderRadius: BorderRadius.circular(10),

                      child: Image.asset('assets/images/salman.png',fit: BoxFit.cover,
                        width: 135,
                        height: 5,
                      ),

                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(

                      borderRadius: BorderRadius.circular(10),

                      child: Image.asset('assets/images/XCM.png',fit: BoxFit.cover,
                        width: 135,
                        height: 5,
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(

                      borderRadius: BorderRadius.circular(10),

                      child: Image.asset('assets/images/stock.png',fit: BoxFit.cover,
                        width: 135,
                        height: 5,
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(

                      borderRadius: BorderRadius.circular(10),

                      child: Image.asset('assets/images/ecommerce.png',fit: BoxFit.cover,
                        width: 135,
                        height: 5,
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(

                      borderRadius: BorderRadius.circular(10),

                      child: Image.asset('assets/images/gm.png',fit: BoxFit.cover,
                        width: 135,
                        height: 5,
                      ),

                    ),
                  ),
                ],

              ),
            ),
            SizedBox(height: 2,),
            Center(
              child: Text(
                'Featured',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 2,),
            Container(
               height: 200,
              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://images.priceoye.pk/apple-iphone-12-pro-max-pakistan-priceoye-jqig7.jpg',
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone 14',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),




                  ),
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-card-40-iphone13-202209?wid=340&hei=264&fmt=p-jpg&qlt=95&.v=1661958176452',
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone 13',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-card-40-iphonese-202203?wid=340&hei=264&fmt=p-jpg&qlt=95&.v=1646415838921',
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone SE',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-card-40-iphone12-202209?wid=340&hei=264&fmt=jpeg&qlt=95&.v=1661958189616',
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone 11',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(

                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://www.phonenews.com.pk/wp-content/uploads/2022/03/iphone-11-pro-select-2019-family-667x700.jpg',
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone 11',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://images.unsplash.com/photo-1609692814902-882dd8e267e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGFwcGxlJTIwcHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'iphone 12',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/FP6P3?wid=200&hei=200&fmt=jpeg&qlt=95&.v=1675957550273',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone X',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/53CPDSAEVVK5BGKY2QBYEAK76Y.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone X',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/53CPDSAEVVK5BGKY2QBYEAK76Y.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone X',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/53CPDSAEVVK5BGKY2QBYEAK76Y.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Iphone X',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
             ),



          ],

        ),



      ),
    );
  }
}
