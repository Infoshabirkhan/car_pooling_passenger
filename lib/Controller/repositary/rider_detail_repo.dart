import '../../model/rider_details_model.dart';

class RiderDetailRepo{

  static Future<List<RiderDetailModel>>getData() async{

    final map = [


      {
        "name":"John Doe",
        "rating" : "4.5",
        "Location": "Demo location,street demo"
            "Phone No"	"+92-8995323",
        "Gender":"Male",
        "Model":"Alto VXR",
        "Plate No:": "DH-233R",
        "Smoking":"Allowed",
        "AC"	:"Yes",
        "Rs"	: "200"

      },
      {
        "name":"John Doe",
        "rating" : "4.5",
        "Location": "Demo location,street demo"
            "Phone No"	"+92-8995323",
        "Gender":"Male",
        "Model":"Alto VXR",
        "Plate No:": "DH-233R",
        "Smoking":"Allowed",
        "AC"	:"Yes",
        "Rs"	: "200"

      },
      {
        "name":"John Doe",
        "rating" : "4.5",
        "Location": "Demo location,street demo"
            "Phone No"	"+92-8995323",
        "Gender":"Male",
        "Model":"Alto VXR",
        "Plate No:": "DH-233R",
        "Smoking":"Allowed",
        "AC"	:"Yes",
        "Rs"	: "200"

      },
      {
        "name":"John Doe",
        "rating" : "4.5",
        "Location": "Demo location,street demo"
            "Phone No"	"+92-8995323",
        "Gender":"Male",
        "Model":"Alto VXR",
        "Plate No:": "DH-233R",
        "Smoking":"Allowed",
        "AC"	:"Yes",
        "Rs"	: "200"

      },
    ];

    List<RiderDetailModel> list =[];

    for(var detail in map)
      {
        RiderDetailModel model = RiderDetailModel.fromJson(detail);
        list.add(model);

      }

    return list;







  }







}