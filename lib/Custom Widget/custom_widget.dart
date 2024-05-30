import 'package:flutter/material.dart';

class CustomerModelClass {
  final String Text1;
  final String Text2;
  final icon;
  final String name;
  final String nametxt;
  final String address;
  final String addressloc;
  final String status;
  final String statustxt;
  final String action;
  final String actiontxt;
  CustomerModelClass(
      {required this.Text1,
      required this.Text2,
      required this.icon,
      required this.name,
      required this.nametxt,
      required this.address,
      required this.addressloc,
      required this.status,
      required this.statustxt,
      required this.action,
      required this.actiontxt});
}

List<CustomerModelClass> Customerlist = [
  CustomerModelClass(
    Text1: "Code",
    Text2: "1072",
    icon: Icons.keyboard_arrow_down,
    name: "Name",
    nametxt: "AZHAR Uddin",
    address: "Address",
    addressloc: "Korangi karachi",
    status: "Status",
    statustxt: "Active",
    action: "Action",
    actiontxt: "View more",
  ),
  CustomerModelClass(
    Text1: "Code",
    Text2: "1072",
    icon: Icons.keyboard_arrow_down,
    name: "Name",
    nametxt: "AZHAR Uddin",
    address: "Address",
    addressloc: "Korangi karachi",
    status: "Status",
    statustxt: "Active",
    action: "Action",
    actiontxt: "View more",
  ),
];

// Secondary Detail
class SecondaryDetailModelClass {
  final String contperson;
  final String personname;
  final icon;
  final String email;
  final String emailtext;
  final String phone;
  final String phoneno;
  final String designation;
  final String designationtext;
  final String actiontext;
  final String removetext;
  SecondaryDetailModelClass(
      {required this.contperson,
      required this.personname,
      required this.icon,
      required this.email,
      required this.emailtext,
      required this.phone,
      required this.phoneno,
      required this.designation,
      required this.designationtext,
      required this.actiontext,
      required this.removetext});
}

List<SecondaryDetailModelClass> secondarylist = [
  SecondaryDetailModelClass(
      contperson: "Contact Person",
      personname: "AZHAR UDDIN",
      icon: Icons.keyboard_arrow_down,
      email: "Email",
      emailtext: "azharud27@gmail.com",
      phone: "Phone Number",
      phoneno: "03057179972",
      designation: "Designation",
      designationtext: "Flutter Developer",
      actiontext: "Action",
      removetext: "Remove")
];

// Shipment Screen

class ShipmentModelClass {
  final String shipmentno;
  final String number;
  final IconData icon;
  final String shipmenttext;
  final String shipmentdata;
  final String sender;
  final String sendername;
  final String receiver;
  final String receivername;
  final String destination;
  final String destinationcity;
  final String country;
  final String countryloc;
  final String pieces;
  final String piecesno;
  final String dimweight;
  final String dimnumber;
  final String declaredvalue;
  final String declarednumber;
  final String codtext;
  final String codnumber;
  final String status;
  final String booked;
  final String action;
  final String viewmore;
  ShipmentModelClass(
      {required this.shipmentno,
      required this.number,
      required this.icon,
      required this.shipmenttext,
      required this.shipmentdata,
      required this.sender,
      required this.sendername,
      required this.receiver,
      required this.receivername,
      required this.destination,
      required this.destinationcity,
      required this.country,
      required this.countryloc,
      required this.pieces,
      required this.piecesno,
      required this.dimweight,
      required this.dimnumber,
      required this.declaredvalue,
      required this.declarednumber,
      required this.codtext,
      required this.codnumber,
      required this.status,
      required this.booked,
      required this.action,
      required this.viewmore});
}

List<ShipmentModelClass> shipmentlist = [
  ShipmentModelClass(
      shipmentno: "Shipment No",
      number: "108042211",
      icon: Icons.keyboard_arrow_down,
      shipmenttext: "Shipment Date",
      shipmentdata: "10/6/2023",
      sender: "Sender Name",
      sendername: "AZHAR",
      receiver: "Receiver Name ",
      receivername: "FARHAN",
      destination: "Destination City",
      destinationcity: "Karachi",
      country: "Country",
      countryloc: "Pakistan",
      pieces: "Pieces",
      piecesno: "1",
      dimweight: "DIM Weight",
      dimnumber: "1",
      declaredvalue: "Declared Value",
      declarednumber: "1",
      codtext: "COD",
      codnumber: "4,500",
      status: "Status",
      booked: "Booked",
      action: "Action",
      viewmore: "View more")
];

class TrackingDetailsModelClass {
  final String date;
  final String status;
  final String datefirst;
  final String datesecond;
  final String datethree;
  final String datefourth;
  final String booktext;
  final String pickuptext;
  final String arrivedtext;
  final String manifdtext;
  TrackingDetailsModelClass(
      {required this.date,
      required this.status,
      required this.datefirst,
      required this.datesecond,
      required this.datethree,
      required this.datefourth,
      required this.booktext,
      required this.pickuptext,
      required this.arrivedtext,
      required this.manifdtext});
}

List<TrackingDetailsModelClass> trackinglist = [
  TrackingDetailsModelClass(
      date: "Date",
      status: "Status",
      datefirst: "23-09-06 18-22-08",
      datesecond: "23-09-06 18-22-08",
      datethree: "23-09-06 18-22-08",
      datefourth: "23-09-06 18-22-08",
      booktext: "Shipment is Booked",
      pickuptext: "Shipment is Pickup ",
      arrivedtext: "Shipment is Arrived",
      manifdtext: "Shipment is Manifested")
];
