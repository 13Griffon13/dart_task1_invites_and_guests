

class Guest{
  final String name;
  final bool withFriend;

  Guest(String name, bool? withFriend):
    this.name = name,
    this.withFriend = withFriend?? false;

  factory Guest.fromFormattedString(String string){
    var subString = string.split("+");
    var name = subString.first;
    var withFriend = !(subString.last==subString.first);
    return Guest(name, withFriend);
  }
  
  factory Guest.fromJson(Map<String, dynamic> map){
    String name = map["name"] as String;
    bool? withFriend = map["withFriend"] as bool?;
    return Guest(name,withFriend);
  }
  
}