class Item{
  String? title;
  String? category;
  String? thumb_url;
  String? location;
  double? price;

  Item(this.title, this.category, this.thumb_url, this.location, this.price);


  // local data we can replace it by data from api or database

static List<Item> recommended =[
  Item("modern house for ranting", "House",
      "https://images.pexels.com/photos/164558/pexels-photo-164558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "Georgia,USA", 2500),
  Item("big house", "House",
      "https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "LiverBool,london", 1500),
  Item("famous villa", "Villa",
      "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "LiverBool,london", 3500),
  Item("villa el bendary", "Villa",
      "https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "LiverBool,london", 3000),
];


  static List<Item> suggestion =[
    Item("modern house for ranting", "House",
        "https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "Georgia,USA", 2500),
    Item("big house", "House",
        "https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "LiverBool,london", 1500),
    Item("villa", "Villa",
        "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "chelsea,london", 3500),
    Item("villa el mhrosa", "Villa",
        "https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "Everton,london", 3000),
    Item("modern house for ranting", "House",
        "https://images.pexels.com/photos/164558/pexels-photo-164558.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "Georgia,USA", 2500),
    Item("big house", "House",
        "https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "LiverBool,london", 1500),
  ];

}