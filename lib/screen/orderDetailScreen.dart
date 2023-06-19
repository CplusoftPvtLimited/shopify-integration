import 'package:flutter/material.dart';

import '../model/orderModel.dart';

class OrderDetailsScreen extends StatelessWidget {
  final Order order;

  OrderDetailsScreen(this.order);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildTextField('SKU', order.sku),
          buildTextField('Material Type', order.materialType),
          buildTextField('Color Option', order.colorOption),
          buildTextField('Select Color', order.selectColor),
          buildTextField('Thread Color', order.threadColor),
          buildTextField('Select Thread Color', order.selectThreadColor),
          buildTextField('Pilot Seat', order.pilotSeat),
          buildTextField(
              'Pilot Seat Foam Thickness', order.pilotSeatFoamThickness),
          buildTextField('Pilot Seat Pocket', order.pilotSeatPocket),
          buildTextField(
              'Pilot Seat Other Options 1', order.pilotSeatOtherOptions1),
          buildTextField(
              'Pilot Seat Other Options 2', order.pilotSeatOtherOptions2),
          buildTextField('Co-Pilot Seat', order.coPilotSeat),
          buildTextField(
              'Co-Pilot Seat Foam Thickness', order.coPilotSeatFoamThickness),
          buildTextField('Co-Pilot Seat Pocket', order.coPilotSeatPocket),
          buildTextField(
              'Co-Pilot Seat Other Options 1', order.coPilotSeatOtherOptions1),
          buildTextField(
              'Co-Pilot Seat Other Options 2', order.coPilotSeatOtherOptions2),
          buildTextField('Rear Seat', order.rearSeat),
          buildTextField('Seat Type', order.seatType),
          buildTextField('Tail Number', order.tailNumber),
          buildTextField('Config ID', order.configId),
          buildTextField('Product URL', order.productUrl),
          buildTextField('Image', order.image),
        ],
      ),
    );
  }

  Widget buildTextField(String label, String value) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        enabled: false,
      ),
      controller: TextEditingController(text: value),
    );
  }
}
