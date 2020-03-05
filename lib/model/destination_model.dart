import 'package:flutter_travel_ui/model/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
      imageUrl: "assets/images/mexico_hotel_image.jpg",
      name: "St.Mark's \n Basilica",
      type: "SightSeeing Tour",
      startTimes: ["9:00Am", "11.00AM"],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: "assets/images/cloudy_image.jpg",
      name: "St.Mark\'s Basilica",
      type: "SightSeeing Tour",
      startTimes: ["9:00Am", "11.00AM"],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: "assets/images/ocean_image.jpg",
      name: "New york",
      type: "Empire State Building",
      startTimes: ["9:00Am", "11.00AM"],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: "assets/images/destination_us.jpg",
      name: "Brazil",
      type: "Football Tour",
      startTimes: ["9:00Am", "11.00AM"],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: "assets/images/destination_china.jpg",
      name: "St.Mark\'s Basilica",
      type: "SightSeeing Tour",
      startTimes: ["9:00Am", "11.00AM"],
      rating: 5,
      price: 30),
];

final List<Destination> destinations = [
  Destination(
      imageUrl: "assets/images/destination_italy.jpg",
      city: "new Delhi",
      country: "India",
      description: "Visit new delhi to experience the rich culture of india",
      activities: activities),
  Destination(
      imageUrl: "assets/images/ocean_image.jpg",
      city: "new york",
      country: "United States of America",
      description: "Visit new york to experience the developer community there",
      activities: activities),
  Destination(
      imageUrl: "assets/images/ocean_image.jpg",
      city: "lagos",
      country: "Nigeria",
      description: "Escape these city and country at all cost",
      activities: activities),
  Destination(
      imageUrl: "assets/images/destination_china.jpg",
      city: "Sao paulo",
      country: "Brazil",
      description: "Visit Sao paulo to watch the world cup live in person",
      activities: activities),
];
