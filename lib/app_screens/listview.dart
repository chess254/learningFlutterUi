import 'package:flutter/material.dart';

List<String> getListElements() {
  var elements = List<String>.generate(100, (counter) => "Iteme # $counter");
  return elements;
}

Widget getList() {
  var listElements = getListElements();
  var listView = ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Icon(Icons.airline_seat_flat),
        title: Text(listElements[index]),
        subtitle: Text(listElements[index]),
        trailing: Icon(Icons.airplanemode_active),
        // onTap: () {},
        onLongPress: () {
          displayDialog(context, listElements[index]);
        },
      );
    },
  );

  return listView;
}

void displayDialog(BuildContext context, String index) {
  var alertDialog = AlertDialog(
      title: Text("longpresser"), content: Text("you longpressed $index"));

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
