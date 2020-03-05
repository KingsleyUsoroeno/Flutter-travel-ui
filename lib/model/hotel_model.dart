class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({this.imageUrl, this.name, this.address, this.price});
}

final List<Hotel> hotels = [
  Hotel(
          imageUrl: "assets/images/mexico_hotel_image.jpg",
          name: "Hotel 1",
          address: "India",
          price: 300),
  Hotel(
          imageUrl: "assets/images/hotel_image_2.jpg",
          name: "Hotel 2",
          address: "st mathews street",
          price: 300),
  Hotel(
          imageUrl: "assets/images/hotel_image_3.jpg",
          name: "Hotel 3",
          address: "Hotel 3 Address",
          price: 300),
  Hotel(
          imageUrl: "assets/images/hotel_image_5.jpg",
          name: "Hotel 4",
          address: "Hotel 4 Address",
          price: 300)
];
