import 'dart:convert';

class Order {
  String sku;
  String materialType;
  String colorOption;
  String selectColor;
  String threadColor;
  String selectThreadColor;
  String pilotSeat;
  String pilotSeatFoamThickness;
  String pilotSeatPocket;
  String pilotSeatOtherOptions1;
  String pilotSeatOtherOptions2;
  String coPilotSeat;
  String coPilotSeatFoamThickness;
  String coPilotSeatPocket;
  String coPilotSeatOtherOptions1;
  String coPilotSeatOtherOptions2;
  String rearSeat;
  String seatType;
  String tailNumber;
  String configId;
  String productUrl;
  String image;

  Order({
    required this.sku,
    required this.materialType,
    required this.colorOption,
    required this.selectColor,
    required this.threadColor,
    required this.selectThreadColor,
    required this.pilotSeat,
    required this.pilotSeatFoamThickness,
    required this.pilotSeatPocket,
    required this.pilotSeatOtherOptions1,
    required this.pilotSeatOtherOptions2,
    required this.coPilotSeat,
    required this.coPilotSeatFoamThickness,
    required this.coPilotSeatPocket,
    required this.coPilotSeatOtherOptions1,
    required this.coPilotSeatOtherOptions2,
    required this.rearSeat,
    required this.seatType,
    required this.tailNumber,
    required this.configId,
    required this.productUrl,
    required this.image,
  });
}

class ProductTypeParser {
  Order parseOrderProperties(List<dynamic> properties) {
    late String sku;
    late String materialType;
    late String colorOption;
    late String selectColor;
    late String threadColor;
    late String selectThreadColor;
    late String pilotSeat;
    late String pilotSeatFoamThickness;
    late String pilotSeatPocket;
    late String pilotSeatOtherOptions1;
    late String pilotSeatOtherOptions2;
    late String coPilotSeat;
    late String coPilotSeatFoamThickness;
    late String coPilotSeatPocket;
    late String coPilotSeatOtherOptions1;
    late String coPilotSeatOtherOptions2;
    late String rearSeat;
    late String seatType;
    late String tailNumber;
    late String configId;
    late String productUrl;
    late String image;

    for (final property in properties) {
      final name = property['name'];
      final value = property['value'];

      if (name == 'SKU') {
        sku = value;
      } else if (name == ' Materials - Material Type') {
        materialType = value;
      } else if (name == ' Materials - Color Option') {
        colorOption = value;
      } else if (name == ' Materials - Select Color') {
        selectColor = value;
      } else if (name == ' Materials - Thread Color') {
        threadColor = value;
      } else if (name == ' Materials - Select Thread Color') {
        selectThreadColor = value;
      } else if (name == 'Seats - Pilot +(Custom Threading)') {
        pilotSeat = value;
      } else if (name == 'Seats - Foam Thickness (Pilot Seat)') {
        pilotSeatFoamThickness = value;
      } else if (name == 'Seats - Pocket (Pilot Seat)') {
        pilotSeatPocket = value;
      } else if (name == 'Seats - Other Options (Pilot Seat)_1_7_0') {
        pilotSeatOtherOptions1 = value;
      } else if (name == 'Seats - Other Options (Pilot Seat)_1_7_1') {
        pilotSeatOtherOptions2 = value;
      } else if (name == 'Seats - Co-Pilot +(Custom Threading)') {
        coPilotSeat = value;
      } else if (name == 'Seats - Foam Thickness (Co-Pilot Seat)') {
        coPilotSeatFoamThickness = value;
      } else if (name == 'Seats - Pocket (Co-Pilot Seat)') {
        coPilotSeatPocket = value;
      } else if (name == 'Seats - Other Options (Co-Pilot Seat)_1_15_0') {
        coPilotSeatOtherOptions1 = value;
      } else if (name == 'Seats - Other Options (Co-Pilot Seat)_1_15_1') {
        coPilotSeatOtherOptions2 = value;
      } else if (name == 'Seats - Rear Seat') {
        rearSeat = value;
      } else if (name == 'Seats - Select Your Seat Type: +(Custom Threading)') {
        seatType = value;
      } else if (name == 'Aircraft Info - Tail Number') {
        tailNumber = value;
      } else if (name == '_configId') {
        configId = value;
      } else if (name == '_productUrl') {
        productUrl = value;
      } else if (name == '_image') {
        image = value;
      }
    }

    return Order(
      sku: sku,
      materialType: materialType,
      colorOption: colorOption,
      selectColor: selectColor,
      threadColor: threadColor,
      selectThreadColor: selectThreadColor,
      pilotSeat: pilotSeat,
      pilotSeatFoamThickness: pilotSeatFoamThickness,
      pilotSeatPocket: pilotSeatPocket,
      pilotSeatOtherOptions1: pilotSeatOtherOptions1,
      pilotSeatOtherOptions2: pilotSeatOtherOptions2,
      coPilotSeat: coPilotSeat,
      coPilotSeatFoamThickness: coPilotSeatFoamThickness,
      coPilotSeatPocket: coPilotSeatPocket,
      coPilotSeatOtherOptions1: coPilotSeatOtherOptions1,
      coPilotSeatOtherOptions2: coPilotSeatOtherOptions2,
      rearSeat: rearSeat,
      seatType: seatType,
      tailNumber: tailNumber,
      configId: configId,
      productUrl: productUrl,
      image: image,
    );
  }
}
