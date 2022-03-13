


 class Item{

  String? name;
  int? price;
  String? url;



  Item.fromJson(Map<String,dynamic> data){
    name = data['name'];
    price = data['price'];
    url = data['url'];

  }

  Map<String,dynamic> toJson(){
    return {
      'name':name,
      'price':price,
      'url':url
    };

  }


 }
