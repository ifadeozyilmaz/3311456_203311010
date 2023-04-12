import 'package:flutter/material.dart';
import 'package:traveler/model/places_model.dart';
import 'package:traveler/widgets/bottomBar_widgets.dart';
import 'package:traveler/widgets/hotel_widgets.dart';
import 'package:traveler/widgets/country_widgets.dart';
import 'package:traveler/widgets/city_widgets.dart';
import 'package:traveler/widgets/room_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                          Icons.sort_rounded, color: Colors.black38, size: 35),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                          Icons.settings, color: Colors.black38, size: 35),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
               const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Let's Find a Perfect Place!",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    ),
                    prefixIcon: Icon(
                      Icons.search, size: 30, color: Colors.black38),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Chip(
                        backgroundColor: Colors.grey[100],
                        elevation: 0.2,
                        label: Text(places[index].name,
                            style:const TextStyle(color: Colors.blueGrey)),
                      );
                    }, separatorBuilder: (context, index) =>
                const Padding(padding: EdgeInsets.only(right: 10)),
                    itemCount: places.length),
              ),
              TabBar(
                  controller: _tabController,
                  labelColor: Colors.blueGrey[600],
                  unselectedLabelColor: Colors.blueGrey[500],
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.grey,
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  tabs: const [
                    Tab(text: "Country"),
                    Tab(text: "City"),
                    Tab(text: "Hotel"),
                    Tab(text: "Room"),
                  ]
              ),
              const SizedBox(height: 10),
              Center(
                child: [
                        CountryWidget(),
                        CityWidget(),
                        HotelsWidget(),
                        RoomWidget(),
                ] [_tabController.index],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

