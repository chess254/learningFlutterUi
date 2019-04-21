import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        color: Colors.lightBlue,
        child: Column(
          children: <Widget>[
            ImageAsset(),
            DepartureRow(),
            DepartureRow(),
            DepartureRow(),
            BookButton(),
          ],
        ),
      ),
    );
  }
}

class DepartureRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(

    // );
    return Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(bottom: 5.0),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text("Flight",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 30.0,
                    color: Colors.white,
                  )),
            ),
            Expanded(
              child: Text(
                "From: Nbo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: Text(
                "To: Jhb",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ));
  }
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/img1.png');
    Image image1 = Image(
      image: assetImage,
    );
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: image1,
    );
  }
}

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      width: 200.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrangeAccent,
        child: Text(
          "Book Now!",
          style: TextStyle(fontSize: 30),
        ),
        textColor: Colors.white,
        elevation: 8.0,
        onPressed: () {
          bookFlight(context);
        },
      ),
    );
  }
}

void bookFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text(
      "Booked Successfully!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
      ),
    ),
    titlePadding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    contentPadding: EdgeInsets.all(30.0),
    content: Text("Your flight was booked successfully"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
