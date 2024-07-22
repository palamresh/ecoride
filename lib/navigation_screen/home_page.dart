import 'dart:async';

import 'package:ecoride/Drawer/drawer.dart';
import 'package:ecoride/home_screen/select_your_transport.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../notification/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final title = [
    "Office",
    "Coffee Shop",
    "Shopping Center",
    "Shopping Mall",
    "Hospital",
  ];
  final subtitle = [
    "2020 west road mumbai",
    "102 rk world tower",
    "204 ring road",
    "22 hospital chock trikon baug",
    "330 trikon baug juction road",
  ];

  final trallingName = [
    "2.4km",
    "1.7km",
    "2.5km",
    "7.km",
    "3.4km",
  ];
  void whereToGo(
    var h,
  ) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: h * .8,
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel_presentation)),
                    ],
                  ),
                ),
                Text(
                  "Select Address",
                  style:
                      TextStyle(fontSize: h * .02, fontWeight: FontWeight.w600),
                ),
                Divider(),
                SizedBox(
                  height: h * .03,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                          icon: Icon(Icons.location_history),
                          onPressed: () {},
                        ),
                        hintText: "From",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: h * .0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                          icon: Icon(Icons.location_on),
                          onPressed: () {},
                        ),
                        hintText: "To",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        side: BorderSide(color: Colors.green),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectYourTransport()));
                    },
                    child: Text('Confirm Location')),
                Text(
                  "Recent Place",
                  style:
                      TextStyle(fontSize: h * .02, fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: title.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all()),
                            child: ListTile(
                              leading: Icon(
                                Icons.location_on,
                                size: h * .03,
                              ),
                              title: Text(
                                title[index],
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: h * .02,
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(
                                subtitle[index],
                                style: TextStyle(fontSize: h * .02 / 1.1),
                              ),
                              trailing: Text(
                                trallingName[index],
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        });
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.29524, 70.79955),
    zoom: 14.4746,
  );
  List<Marker> _Marker = [];
  final List<Marker> _list = [
    Marker(
        markerId: MarkerId("1"),
        position: LatLng(22.315773, 70.767686),
        infoWindow: InfoWindow(
          title: "My location",
        )),
  ];

  @override
  void initState() {
    _Marker.addAll(_list);
    currentLocation();
    // TODO: implement initState
    super.initState();
  }

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then(
      (value) {},
    )
        .onError((error, stackTrace) {
      print(error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  void currentLocation() async {
    setState(() {});

    getUserCurrentLocation().then((value) async {
      print(value.latitude.toString() + value.longitude.toString());
      _Marker.add(
        Marker(
            markerId: MarkerId('2'),
            position: LatLng(value.latitude, value.longitude),
            infoWindow: InfoWindow(
              title: "My current Location",
            )),
      );
      GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(value.latitude, value.longitude),
        zoom: 14.4746,
      )));
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationPage()));
                    },
                    icon: Icon(Icons.notifications))),
          )
        ],
      ),
      drawer: DrawerScreen(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     setState(() {});

      //     getUserCurrentLocation().then((value) async {
      //       print(value.latitude.toString() + value.longitude.toString());
      //       _Marker.add(
      //         Marker(
      //             markerId: MarkerId('2'),
      //             position: LatLng(value.latitude, value.longitude),
      //             infoWindow: InfoWindow(
      //               title: "My current Location",
      //             )),
      //       );
      //       GoogleMapController controller = await _controller.future;
      //       controller
      //           .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      //         target: LatLng(value.latitude, value.longitude),
      //         zoom: 14.4746,
      //       )));
      //     });
      //   },
      //   child: Icon(Icons.location_history),
      // ),
      body: Stack(
        children: [
          GoogleMap(
            markers: Set<Marker>.of(_Marker),
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: Container(
              height: h * .3 / 1.3,
              width: w / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green.shade100),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Where whould you go?",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: h * .04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(color: Colors.black),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              whereToGo(h);
                            },
                            child: Text(
                              "Single Trip",
                              style: TextStyle(color: Colors.black),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(color: Colors.black),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {},
                            child: Text(
                              "Round Trip",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
