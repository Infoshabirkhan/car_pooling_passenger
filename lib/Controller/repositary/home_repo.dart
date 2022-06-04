

import '../../Model/home_models.dart';

class HomeRepo{



  static Future<List<HomeModel>>  getData()async{
    final map = [
      {

        "destination" : "lahore",
        "rupees": 	"200",
        "location":	"Demo location, street demo",
        "booked_seats": "2",
        "Date_time" : "12 Sep - 12:23 PM"

      },

      {

        "destination" : "lahore",
        "rupees": 	"300",
        "location":	"Demo location, street demo",
        "booked_seats": "2",
        "Date_time" : "12 Sep - 12:23 PM"
      },

      {


        "destination" : "Karachi",
        "rupees": 	"300",
        "location":	"Demo location, street demo",
        "booked_seats": "2",
        "Date_time" : "12 Sep - 12:23 PM"



      }
    ];



    List<HomeModel> list = [];


    for (var item in map){

      HomeModel homeModel = HomeModel.fromMap(item);
      list.add(homeModel);
    }


    return list;







  }




}




