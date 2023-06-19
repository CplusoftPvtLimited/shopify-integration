import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shoify_parser_app/screen/orderDetailScreen.dart';

import 'model/orderModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final orderData = '''
    {
      "properties": [
        {
          "name": "SKU",
          "value": ""
        },
        {
          "name": " Materials - Material Type",
          "value": "Leather"
        },
        {
          "name": " Materials - Color Option",
          "value": "Single Tone"
        },
        {
          "name": " Materials - Select Color",
          "value": "Black"
        },
        {
          "name": " Materials - Thread Color",
          "value": "Custom Thread Colors  (Approx \$30/seat)"
        },
        {
          "name": " Materials - Select Thread Color",
          "value": "Red"
        },
        {
          "name": "Seats - Pilot +(Custom Threading)",
          "value": "Add Pilot Seat - (\$1365.00) (1,365)"
        },
        {
          "name": "Seats - Foam Thickness (Pilot Seat)",
          "value": "Thick"
        },
        {
          "name": "Seats - Pocket (Pilot Seat)",
          "value": "Portable Clip-On Pocket - Large (Black Leather) - (\$175.00) (175)"
        },
        {
          "name": "Seats - Other Options (Pilot Seat)_1_7_0",
          "value": "Seat Belt Loops - (\$90.00) (90)"
        },
        {
          "name": "Seats - Other Options (Pilot Seat)_1_7_1",
          "value": "Head Rest - (\$290.00) (290)"
        },
        {
          "name": "Seats - Co-Pilot +(Custom Threading)",
          "value": "Add Co-Pilot Seat - (\$1365.00) (1,365)"
        },
        {
          "name": "Seats - Foam Thickness (Co-Pilot Seat)",
          "value": "Thick"
        },
        {
          "name": "Seats - Pocket (Co-Pilot Seat)",
          "value": "Portable Clip-On Pocket - Large (Black Leather) - (\$175.00) (175)"
        },
        {
          "name": "Seats - Other Options (Co-Pilot Seat)_1_15_0",
          "value": "Seat Belt Loops - (\$90.00) (90)"
        },
        {
          "name": "Seats - Other Options (Co-Pilot Seat)_1_15_1",
          "value": "Head Rest - (\$290.00) (290)"
        },
        {
          "name": "Seats - Rear Seat",
          "value": "Add Rear Seat"
        },
        {
          "name": "Seats - Select Your Seat Type: +(Custom Threading)",
          "value": "Attlee Dodge Jump Seats - (Set of Two) - (\$1175.00) (1,175)"
        },
        {
          "name": "Aircraft Info - Tail Number",
          "value": "TTCAB"
        },
        {
          "name": "_configId",
          "value": "2asflkaskldfjj"
        },
        {
          "name": "_productUrl",
          "value": "https://sportaircraftseats.com/products/cessna-172-aircraft-seat-upholstery"
        },
        {
          "name": "_image",
          "value": "someImageURL"
        }
      ]
    }
  ''';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final orderDataDecoded = json.decode(orderData);
    final List<dynamic> properties = orderDataDecoded['properties'];

    final parser = ProductTypeParser();
    final order = parser.parseOrderProperties(properties);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrderDetailsScreen(order),
    );
  }
}
