class Data{
  int id = 0;
  String name = "";
  String coverImage = "";
  String startDate = "";
  String startTime = "";
  String information = "";

 Data({
  required this.id,
  required this.name,
  required this.coverImage,
  required this.startDate,
  required this.startTime,
  required this.information,

 });

  static Data fromJson(Map<String,dynamic> json){
    return Data(
      id: json['id'] as int,
      name: json['name'] as String,
      coverImage: json['cover_image'] as String,
      startDate: json['start_date'] as String,
      startTime: json['start_time'] as String,
      information: json['information'] as String,

    );

  }

  String getImage(){
    return "https://d20zx9sjn15rrf.cloudfront.net/assets/" + this.coverImage;
  }
  String getfecha()
  {
    return  this.startDate +","+ this.startTime;
  }
}