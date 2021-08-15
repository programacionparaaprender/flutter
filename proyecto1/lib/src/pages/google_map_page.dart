import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class GoogleMapPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GoogleMapPage> {
  GoogleMapController mapController;
  BitmapDescriptor customIcon1;
  Set<Marker> markers = new Set<Marker>();

  Set<Polygon> polygons = new Set<Polygon>();
  List<LatLng> puntos = new List<LatLng>(); 

  final LatLng _center = const LatLng(45.521563, -122.677433);

  

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: Container(
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            markers: markers,
            polygons: polygons,
            onTap:  (pos) {

                print(pos);
                var marcadorid = (markers.length + 1).toString();
                Marker f = Marker(
                  markerId: MarkerId(marcadorid),
                  //icon: customIcon1, 
                  position: LatLng(pos.latitude, pos.longitude),//LatLng(45.521563, -122.677433),
                  onTap: (){});

                  setState(() {
                    polygons.clear();
                    puntos.add(pos);
                  markers.add(f);

                  });

                Polygon p = Polygon(
                  polygonId: PolygonId('1'),
                  points: puntos,//LatLng(45.521563, -122.677433),
                  strokeWidth: 2,
                  strokeColor: Colors.red
                );
                     setState(() {
                    polygons.add(p);
                  });           
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Text("Limpiar"),
          onPressed: () {
           
            setState(() {
              puntos.clear();
              polygons.clear();
                   markers.clear();
                  });
            print("FLOATINGACTIONBUTTON GEDRÜCKT!");
            /* showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ChangeNotifierProvider.value(
                      value: MapsService(), child: HelpCallAlertDialog());
                }); */
          },
        ),
      ),


      
    );
  }
} 