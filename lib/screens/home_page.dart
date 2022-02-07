import 'package:badges/badges.dart';
import 'package:lessontvelwe/constants/app_colors.dart';
import 'package:lessontvelwe/data/hotel_list.dart';
import 'package:lessontvelwe/models/hotel_model.dart';
import 'package:lessontvelwe/screens/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  final String _img = 'https://source.unsplash.com/random/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _homeAppBar(),
          _setWidget(child: _showSearch()),
          _setWidget(child: _showCat()),
          _setWidget(child: _ctg('Nearby resourses')),
          _setWidget(child: _showNearbyList()),
          _setWidget(child: _ctg('More Listings')),
          _setWidget(child: _listTile()),

        ],
      ),
    );
  }

  SliverToBoxAdapter _setWidget({required Widget child}) => SliverToBoxAdapter(
        child: child,
      );

  Container _showNearbyList() => Container(
        height: 200.0,
        // margin: EdgeInsets.only(left: 20.0),
        child: ListView.builder(
            itemCount: HotelData.list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (c, i) {
              HotelModel hotel = HotelData.list[i];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailsPage(
                                hotelModel: hotel,
                              ),),);
                },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: ClipRRect(
                        
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          hotel.imageList[0],
                          height: 200.0,
                          width: 160.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 30.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _setText(hotel.name,
                              color: AppColors.white, size: 20.0),
                          _setText(hotel.location, color: AppColors.white),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 16.0,
                        top: 16.0,
                        child: Chip(
                          backgroundColor: AppColors.grey,
                          label: _setText(
                            hotel.range.toString(),
                            color: AppColors.white,
                          ),
                        ))
                  ],
                ),
              );
            }),
      );

  Container _ctg(String category)=>Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _setText(category, size: 20.0),
          _setText('See more', color: AppColors.green)
        ],
      )
  );

  // Row _ctg(String category) => Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         _setText(category, size: 20.0),
  //         _setText('See more', color: AppColors.green)
  //       ],
  //     );

  SliverAppBar _homeAppBar() => SliverAppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: AppColors.black),
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _setText('Location', color: AppColors.grey),
            Row(
              children: [
                _setText('Tashkent', size: 24.0),
                const Icon(Icons.expand_more, color: AppColors.grey,),
              ],
            ),
          ],
        ),
        actions: [
          Badge(
            position: const BadgePosition(top: 20, end: 21),
            badgeColor: AppColors.green,
            child: IconButton(
              padding: EdgeInsets.only(right: 20.0),
              onPressed: () {},
              icon: const Icon(Icons.notification_add_outlined,),
            ),
          )
        ],
      );
  Container _showSearch()=> Container(
    padding: EdgeInsets.only(left: 5.0, right: 20.0),
        child: Row(
        children: [
          _iconButton(Icons.menu),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  const SizedBox(width: 12.0),
                  _setText('Search hotels, or near you')
                ],
              ),
              height: 42.0,
              decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12.0)),
            ),
          ),
          const SizedBox(width: 12.0),
          Container(
            height: 42,
            width: 42,
            child: const Icon(Icons.tune, color: AppColors.white),
            decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(12.0)),
          ),
        ],
      )
  );
  // Row _showSearch() => Row(
  //       children: [
  //         _iconButton(Icons.menu),
  //         Expanded(
  //           child: Container(
  //             padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //             child: Row(
  //               children: [
  //                 const Icon(Icons.search),
  //                 const SizedBox(width: 12.0),
  //                 _setText('Search hotels')
  //               ],
  //             ),
  //             height: 42.0,
  //             decoration: BoxDecoration(
  //                 color: AppColors.grey.withOpacity(0.4),
  //                 borderRadius: BorderRadius.circular(12.0)),
  //           ),
  //         ),
  //         const SizedBox(width: 12.0),
  //         Container(
  //           height: 42,
  //           width: 42,
  //           child: const Icon(Icons.tune, color: AppColors.white),
  //           decoration: BoxDecoration(
  //               color: AppColors.green,
  //               borderRadius: BorderRadius.circular(12.0)),
  //         ),
  //       ],
  //     );
  Container _showCat() => Container(
    margin: EdgeInsets.symmetric(vertical: 15.0),
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: Wrap(
        spacing: 17.0,
        
        children: List.generate(
          4,
          (index) => _setButton(_categories[index], index),
        ),
      ),
  );
  // Wrap _showCategories() => Wrap(
  //       spacing: 12.0,
        
  //       children: List.generate(
  //         4,
  //         (index) => _setButton(_categories[index], index),
  //       ),
  //     );

  Text _setText(
    String text, {
    Color color = AppColors.black,
    double size = 14.0,
    FontWeight weight = FontWeight.normal,
  }) =>
      Text(
        text,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: weight,
        ),
      );

  IconButton _iconButton(IconData iconData) => IconButton(
        onPressed: () {},
        icon: Icon(
          iconData,
          color: AppColors.black,
        ),
      );

  ElevatedButton _setButton(String label, int index) => ElevatedButton(
      onPressed: () {
        setState(() {
          _currentPage = index;
        });
      },
      style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: _currentPage == index
              ? AppColors.green
              : AppColors.grey.withOpacity(0.2)),
      child: _setText(
        label,
        color: _currentPage == index ? AppColors.white : AppColors.black,
      ));

  final List<String> _categories = ["House", "Homestay", "Hotel", "Villa"];

  Container _listTile()=>Container(
    width: MediaQuery.of(context).size.width,
    height: 430,
    child: ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index){
        HotelModel hotels = HotelData.list[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          margin: EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: DecorationImage(image: NetworkImage(hotels.imageList[0]), fit: BoxFit.cover)
                ),
              ),
              Expanded(
                child: Container(
                  height: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(hotels.name, style: TextStyle(fontSize: 18.0),)),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(hotels.perweek, style: TextStyle(fontSize: 14.0, color: AppColors.green),)),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            _mainIcon(Icons.bedroom_parent_outlined, hotels.bedroom),
                            _mainIcon(Icons.bathroom_outlined, hotels.bathroom),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
      );
      }
    
    ),
  );
    Container _mainIcon(IconData icon, String rooms) {
    return Container(
      // padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
            Icon(
              icon,
              color: AppColors.grey,
            ),
          
          Container(
              margin: EdgeInsets.only(left: 5.0, right: 20.0),
              child: Text(
                rooms,
                style: TextStyle(color: AppColors.grey),
              ))
        ],
      ),
    );
  }
}


listview scroll bo'masligi uchun nima ishlatiladi? NeverScrollableScrollPhysics
package qoshish uchun terminalda nima amalga oshiriladi? flutter pub get package_nomi
stack nima uchun va qanday ishlatiladi?
gridviewda elementni heightini o'zgartirish uchun qaysi propertyni ishlatamiz? mainAxisExtent
childida container ishlatish uchun qaysi sliverdan foydalanamiz?