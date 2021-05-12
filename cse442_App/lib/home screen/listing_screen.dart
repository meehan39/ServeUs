import 'package:cse442_App/user%20model/user_listings_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/** Screen When Listing Tile Is Tapped ****************************************/
class ListingScreen extends StatelessWidget {
  final UserListingsModel listing;
  ListingScreen({this.listing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service App"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            //Listing Title
            Center(
              child: Container(
                child: Text(
                  listing.jobType,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                width: 350,
                decoration: new BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  gradient: new LinearGradient(
                      colors: [Colors.lightBlue, Colors.blueAccent],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft),
                ),
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
              ),
            ),
            // Listing Description
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Container(
                  child: Text(
                    "Description: " + listing.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  width: 350,
                  decoration: new BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(3),
                    gradient: new LinearGradient(
                        colors: [Colors.lightBlue, Colors.blueAccent],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                ),
              ),
            ),
            Text(
              listing.language,
              style: TextStyle(fontSize: 16),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(listing.createdAt.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
/**--------------------------------------------------------------------------**/
