import 'package:lessontvelwe/models/hotel_model.dart';
import 'package:lessontvelwe/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lessontvelwe/screens/home_page.dart';

class DetailsPage extends StatefulWidget {
  final HotelModel hotelModel;
  const DetailsPage({Key? key, required this.hotelModel}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late HotelModel _hotel;

  @override
  void initState() {
    super.initState();
    _hotel = widget.hotelModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                _mainInfo(context),
                _forDescription(context),
                _owner(),
                _secondDescription(context),
                _grid(),
                _forMap(context)
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
              height: 70,
              child: ListTile(
                title: Text("Price",
                    style: TextStyle(fontSize: 14.0, color: AppColors.grey)),
                subtitle: Text(
                  _hotel.perweek,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: AppColors.black),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Confirm",
                    style: TextStyle(color: AppColors.white),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    
                  ),
                ),
              )),
        ],
      ),
    ));
  }

  SliverPadding _forMap(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(15.0),
      sliver: SliverToBoxAdapter(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Image.network(
            _hotel.mapimg,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _secondDescription(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(left: 20.0, top: 20.0),
        width: MediaQuery.of(context).size.width,
        child: Text(
          "Description",
          style: TextStyle(
              color: AppColors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  SliverPadding _grid() {
    return SliverPadding(
      padding: const EdgeInsets.all(15.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          // mainAxisSpacing: 10,r
          crossAxisSpacing: 10,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(_hotel.imageList[index + 2]))),
              child: index == 3
                  ? Container(
                      alignment: Alignment.center,
                      child: Text(
                        "+5",
                        style:
                            TextStyle(color: AppColors.white, fontSize: 18.0),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: AppColors.black.withOpacity(0.6),
                      ),
                    )
                  : SizedBox(),
            );
          },
          childCount: 4,
        ),
      ),
    );
  }

  SliverToBoxAdapter _owner() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(_hotel.owner.img),
          ),
          title: Text(
            _hotel.owner.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(_hotel.owner.phone),
          trailing: Container(
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.phone_outlined,
                    color: AppColors.white,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.message_outlined,
                    color: AppColors.white,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _forDescription(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 20.0),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Description",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                child: Text(
              _hotel.description,
              style: TextStyle(color: AppColors.grey),
            )),
          )
        ]),
      ),
    );
  }

  SliverToBoxAdapter _mainInfo(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      margin: EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          image: DecorationImage(
              image: NetworkImage(
                _hotel.imageList[0],
              ),
              fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 5,
                  blurRadius: 6,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: AppColors.white.withOpacity(0.5),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.white,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  child: Icon(
                    Icons.bookmark_outline,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 130,
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      _hotel.name,
                      style: TextStyle(color: AppColors.white, fontSize: 30.0),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(_hotel.location,
                        style: TextStyle(
                            color: AppColors.white.withOpacity(0.7),
                            fontSize: 18.0))),
                Container(
                  child: Row(
                    children: [
                      _mainIcon(Icons.bedroom_parent_outlined, _hotel.bedroom),
                      _mainIcon(Icons.bathroom_outlined, _hotel.bathroom),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  //for main info Container
  Container _mainIcon(IconData icon, String rooms) {
    return Container(
      // padding: EdgeInsets.only(left: 20.0, top: 10.0),
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            child: Icon(
              icon,
              color: AppColors.white,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: AppColors.white.withOpacity(0.5),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10.0, right: 20.0),
              child: Text(
                rooms,
                style: TextStyle(color: AppColors.white),
              ))
        ],
      ),
    );
  }
}
