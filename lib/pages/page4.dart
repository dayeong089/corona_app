import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<String> country_list = [];
List<String> total_list=[];
List<String> return_list=["", "", "", "", "", "", ""];
List<int> index=[0];
//
List<String> chart_date1 = ["","","","","","",""];

double chart_start = 0;
double chart_end = 0;
double chart_start2 = 0;
double chart_end2 = 0;
List<int> chart_total = [0,0,0,0,0,0,0];
List<int> chart_daily = [0,0,0,0,0,0,0];
List<double> chart_total2 = [0.0,0.0,0.0,0.0,0.0,0.0,0.0];
List<double> chart_daily2 = [0,0,0,0,0,0,0];
int char_num = 0;
int data = 0;

int len = 0;
int switch_date = 0;
String date1 = "";
String date2 = "";
String date3 = "";
String date4 = "";
String date5 = "";
String date6 = "";
String date7 = "";

double y0 = 0;
double y1 = 0;
double y2 = 0;
double y3 = 0;
double y4 = 0;
double y5 = 0;
double y6 = 0;
double y7 = 0;
double y8 = 0;
double y9 = 0;
double y10 = 0;
double y11 = 0;
double y12 = 0;
double y13 = 0;
double y14 = 0;
double y15 = 0;
double y16 = 0;
double y17 = 0;
double y18 = 0;
double y19 = 0;
double y20 = 0;
double y21 = 0;
double y22 = 0;
double y23 = 0;
double y24 = 0;
double y25 = 0;
double y26 = 0;
double y27 = 0;

double x0 = 0;
double x1 = 0;
double x2 = 0;
double x3 = 0;
double x4 = 0;
double x5 = 0;
double x6 = 0;
double x7 = 0;
double x8 = 0;
double x9 = 0;
double x10 = 0;
double x11 = 0;
double x12 = 0;
double x13 = 0;
double x14 = 0;
double x15 = 0;
double x16 = 0;
double x17 = 0;
double x18 = 0;
double x19 = 0;
double x20 = 0;
double x21 = 0;
double x22 = 0;
double x23 = 0;
double x24 = 0;
double x25 = 0;
double x26 = 0;
double x27 = 0;

class Page4CounterProvider with ChangeNotifier{
  int _counter;

  Page4CounterProvider(this._counter);
  void changeTable1()
  {
    return_list[0] = country_list[0];
    return_list[1] = country_list[1];
    return_list[2] = country_list[2];
    return_list[3] = country_list[3];
    return_list[4] = country_list[4];
    return_list[5] = country_list[5];
    return_list[6] = country_list[6];
    notifyListeners();
  }

  void changeTable2()
  {
    return_list[0] = total_list[0];
    return_list[1] = total_list[1];
    return_list[2] = total_list[2];
    return_list[3] = total_list[3];
    return_list[4] = total_list[4];
    return_list[5] = total_list[5];
    return_list[6] = total_list[6];
    notifyListeners();
  }

  void clearTable()
  {
    return_list[0] = "";
    return_list[1] = "";
    return_list[2] = "";
    return_list[3] = "";
    return_list[4] = "";
    return_list[5] = "";
    return_list[6] = "";
    notifyListeners();
  }

  void chart1()
  {
    char_num = 6;
    date1 = chart_date1[6].substring(5);
    date2 = chart_date1[5].substring(5);
    date3 = chart_date1[4].substring(5);
    date4 = chart_date1[3].substring(5);
    date5 = chart_date1[2].substring(5);
    date6 = chart_date1[1].substring(5);
    date7 = chart_date1[0].substring(5);
    //
    double max = chart_total2[0];
    for(int i=0; i<7; i++)
    {
      if(chart_total2[i] > max)
      {
        max = chart_total2[i];
      }
    }

    double min = chart_total2[6];
    for(int i=0; i<7; i++)
    {
      if(chart_total2[i] < min)
      {
        min = chart_total2[i];
      }
    }

    chart_start = min-5;
    chart_end = max+5;

    chart_start2 = 0;
    chart_end2 = 6;

    y0 = chart_total2[0];
    y1 = chart_total2[1];
    y2 = chart_total2[2];
    y3 = chart_total2[3];
    y4 = chart_total2[4];
    y5 = chart_total2[5];
    y6 = chart_total2[6];

    x0 = 6;
    x1 = 5;
    x2 = 4;
    x3 = 3;
    x4 = 2;
    x5 = 1;
    x6 = 0;

    y7 = chart_total2[6];
    y8 = chart_total2[6];
    y9 = chart_total2[6];
    y10 = chart_total2[6];
    y11 = chart_total2[6];
    y12 = chart_total2[6];
    y13 = chart_total2[6];
    y14 = chart_total2[6];
    y15 = chart_total2[6];
    y16 = chart_total2[6];
    y17 = chart_total2[6];
    y18 = chart_total2[6];
    y19 = chart_total2[6];
    y20 = chart_total2[6];
    y21 = chart_total2[6];
    y22 = chart_total2[6];
    y23 = chart_total2[6];
    y24 = chart_total2[6];
    y25 = chart_total2[6];
    y26 = chart_total2[6];
    y27 = chart_total2[6];

    x7 = 0;
    x8 = 0;
    x9 = 0;
    x10 = 0;
    x11 = 0;
    x12 = 0;
    x13 = 0;
    x14 = 0;
    x15 = 0;
    x16 = 0;
    x17 = 0;
    x18 = 0;
    x19 = 0;
    x20 = 0;
    x21 = 0;
    x22 = 0;
    x23 = 0;
    x24 = 0;
    x25 = 0;
    x26 = 0;
    x27 = 0;

    notifyListeners();
  }

  void chart2()
  {
    char_num = 6;

    double max = chart_daily2[0];
    for(int i=0; i<7; i++)
    {
      if(chart_daily2[i] > max)
      {
        max = chart_daily2[i];
      }
    }

    double min = chart_daily2[6];
    for(int i=0; i<7; i++)
    {
      if(chart_daily2[i] < min)
      {
        min = chart_daily2[i];
      }
    }

    chart_start = min-1;
    chart_end = max+1;

    chart_start2 = 0;
    chart_end2 = 6;

    date1 = chart_date1[6].substring(5);
    date2 = chart_date1[5].substring(5);
    date3 = chart_date1[4].substring(5);
    date4 = chart_date1[3].substring(5);
    date5 = chart_date1[2].substring(5);
    date6 = chart_date1[1].substring(5);
    date7 = chart_date1[0].substring(5);

    y0 = chart_daily2[0];
    y1 = chart_daily2[1];
    y2 = chart_daily2[2];
    y3 = chart_daily2[3];
    y4 = chart_daily2[4];
    y5 = chart_daily2[5];
    y6 = chart_daily2[6];

    x0 = 6;
    x1 = 5;
    x2 = 4;
    x3 = 3;
    x4 = 2;
    x5 = 1;
    x6 = 0;

    y7 = chart_daily2[6];
    y8 = chart_daily2[6];
    y9 = chart_daily2[6];
    y10 = chart_daily2[6];
    y11 = chart_daily2[6];
    y12 = chart_daily2[6];
    y13 = chart_daily2[6];
    y14 = chart_daily2[6];
    y15 = chart_daily2[6];
    y16 = chart_daily2[6];
    y17 = chart_daily2[6];
    y18 = chart_daily2[6];
    y19 = chart_daily2[6];
    y20 = chart_daily2[6];
    y21 = chart_daily2[6];
    y22 = chart_daily2[6];
    y23 = chart_daily2[6];
    y24 = chart_daily2[6];
    y25 = chart_daily2[6];
    y26 = chart_daily2[6];
    y27 = chart_daily2[6];

    x7 = 0;
    x8 = 0;
    x9 = 0;
    x10 = 0;
    x11 = 0;
    x12 = 0;
    x13 = 0;
    x14 = 0;
    x15 = 0;
    x16 = 0;
    x17 = 0;
    x18 = 0;
    x19 = 0;
    x20 = 0;
    x21 = 0;
    x22 = 0;
    x23 = 0;
    x24 = 0;
    x25 = 0;
    x26 = 0;
    x27 = 0;

    notifyListeners();
  }

  void chart3()
  {
    double max = chart_total2[0];
    for(int i=0; i<28; i++)
    {
      if(chart_total2[i] > max)
      {
        max = chart_total2[i];
      }
    }

    double min = chart_total2[6];
    for(int i=0; i<28; i++)
    {
      if(chart_total2[i] < min)
      {
        min = chart_total2[i];
      }
    }

    chart_start = min-3;
    chart_end = max+3;

    char_num = 6;

    chart_start2 = 100;
    chart_end2 = 127;

    date1 = chart_date1[27].substring(5);
    date2 = chart_date1[21].substring(5);
    date3 = chart_date1[14].substring(5);
    date4 = chart_date1[7].substring(5);
    date5 = chart_date1[0].substring(5);

    x27 = 100;
    x26 = 101;
    x25 = 102;
    x24 = 103;
    x23 = 104;
    x22 = 105;
    x21 = 106;
    x20 = 107;
    x19 = 108;
    x18 = 109;
    x17 = 110;
    x16 = 111;
    x15 = 112;
    x14 = 113;
    x13 = 114;
    x12 = 115;
    x11 = 116;
    x10 = 117;
    x9 = 118;
    x8 = 119;
    x7 = 120;
    x6 = 121;
    x5 = 122;
    x4 = 123;
    x3 = 124;
    x2 = 125;
    x1 = 126;
    x0 = 127;

    y0 = chart_total2[0];
    y1 = chart_total2[1];
    y2 = chart_total2[2];
    y3 = chart_total2[3];
    y4 = chart_total2[4];
    y5 = chart_total2[5];
    y6 = chart_total2[6];
    y7 = chart_total2[7];
    y8 = chart_total2[8];
    y9 = chart_total2[9];
    y10 = chart_total2[10];
    y11 = chart_total2[11];
    y12 = chart_total2[12];
    y13 = chart_total2[13];
    y14 = chart_total2[14];
    y15 = chart_total2[15];
    y16 = chart_total2[16];
    y17 = chart_total2[17];
    y18 = chart_total2[18];
    y19 = chart_total2[19];
    y20 = chart_total2[20];
    y21 = chart_total2[21];
    y22 = chart_total2[22];
    y23 = chart_total2[23];
    y24 = chart_total2[24];
    y25 = chart_total2[25];
    y26 = chart_total2[26];
    y27 = chart_total2[27];

    notifyListeners();
  }

  void chart4()
  {
    double max = chart_daily2[0];
    for(int i=0; i<28; i++)
    {
      if(chart_daily2[i] > max)
      {
        max = chart_daily2[i];
      }
    }

    double min = chart_daily2[27];
    for(int i=0; i<27; i++)
    {
      if(chart_daily2[i] < min)
      {
        min = chart_daily2[i];
      }
    }

    chart_start = min-1;
    chart_end = max+1;

    chart_start2 = 100;
    chart_end2 = 127;

    date1 = chart_date1[27].substring(5);
    date2 = chart_date1[21].substring(5);
    date3 = chart_date1[14].substring(5);
    date4 = chart_date1[7].substring(5);
    date5 = chart_date1[0].substring(5);

    x27 = 100;
    x26 = 101;
    x25 = 102;
    x24 = 103;
    x23 = 104;
    x22 = 105;
    x21 = 106;
    x20 = 107;
    x19 = 108;
    x18 = 109;
    x17 = 110;
    x16 = 111;
    x15 = 112;
    x14 = 113;
    x13 = 114;
    x12 = 115;
    x11 = 116;
    x10 = 117;
    x9 = 118;
    x8 = 119;
    x7 = 120;
    x6 = 121;
    x5 = 122;
    x4 = 123;
    x3 = 124;
    x2 = 125;
    x1 = 126;
    x0 = 127;

    y0 = chart_daily2[0];
    y1 = chart_daily2[1];
    y2 = chart_daily2[2];
    y3 = chart_daily2[3];
    y4 = chart_daily2[4];
    y5 = chart_daily2[5];
    y6 = chart_daily2[6];
    y7 = chart_daily2[7];
    y8 = chart_daily2[8];
    y9 = chart_daily2[9];
    y10 = chart_daily2[10];
    y11 = chart_daily2[11];
    y12 = chart_daily2[12];
    y13 = chart_daily2[13];
    y14 = chart_daily2[14];
    y15 = chart_daily2[15];
    y16 = chart_daily2[16];
    y17 = chart_daily2[17];
    y18 = chart_daily2[18];
    y19 = chart_daily2[19];
    y20 = chart_daily2[20];
    y21 = chart_daily2[21];
    y22 = chart_daily2[22];
    y23 = chart_daily2[23];
    y24 = chart_daily2[24];
    y25 = chart_daily2[25];
    y26 = chart_daily2[26];
    y27 = chart_daily2[27];

    notifyListeners();
  }

  void clear_chart()
  {
    chart_start = 0;
    chart_end = 0;
    chart_start2 = 0;
    chart_end2 = 0;
    date1 = "";
    y0 = 0;
    y1 = 0;
    y2 = 0;
    y3 = 0;
    y4 = 0;
    y5 = 0;
    y6 = 0;
    y7 = 0;
    y8 = 0;
    y9 = 0;
    y10 = 0;
    y11 = 0;
    y12 = 0;
    y13 = 0;
    y14 = 0;
    y15 = 0;
    y16 = 0;
    y17 = 0;
    y18 = 0;
    y19 = 0;
    y20 = 0;
    y21 = 0;
    y22 = 0;
    y23 = 0;
    y24 = 0;
    y25 = 0;
    y26 = 0;
    y27 = 0;

    x0 = 0;
    x1 = 0;
    x2 = 0;
    x3 = 0;
    x4 = 0;
    x5 = 0;
    x6 = 0;
    x7 = 0;
    x8 = 0;
    x9 = 0;
    x10 = 0;
    x11 = 0;
    x12 = 0;
    x13 = 0;
    x14 = 0;
    x15 = 0;
    x16 = 0;
    x17 = 0;
    x18 = 0;
    x19 = 0;
    x20 = 0;
    x21 = 0;
    x22 = 0;
    x23 = 0;
    x24 = 0;
    x25 = 0;
    x26 = 0;
    x27 = 0;
    notifyListeners();
  }
}

Future<Album> fetchAlbum() async {
  String url = "https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/vaccinations/vaccinations.json";
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final String date;
  final String total_vaccinations;
  final String people_vaccinated;
  final String people_fully_vaccinated;
  final String daily_vaccinations;
  final List<String> data;
  final List<String> country;
  final List<String> totalvaccine;
  final List<String> fullyvaccine;
  final List<String> dailyvaccine;
  final int list_length;

  Album({@required this.date, @required this.list_length, @required this.total_vaccinations, @required this.people_vaccinated, @required this.people_fully_vaccinated, @required this.data, @required this.daily_vaccinations, @required this.country, @required this.totalvaccine, @required this.fullyvaccine, @required this.dailyvaccine});

  factory Album.fromJson(List<dynamic> json) {
    int length = json.length;
    len = length; // global
    //
    List<String> country2 = [];
    List<String> total_list2 = [];
    //
    List<int> totalvaccine2 = [];
    List<int> totalvaccine3 = []; // include 0
    List<String> fullyvaccine2 = [];
    List<String> dailyvaccine2 = [];
    List<String> listcountry = []; // for table
    //
    List<int> charttotal = [0];
    List<int> chartdaily = [0];
    List<double> charttotal2 = [0];
    List<double> chartdaily2 = [0];
    //
    int korea = 0;
    for (int i = 0; i < length; i++) {
      if (json[i]['country'].toString() == "South Korea") {
        korea = i;
        break;
      }
    }
    List<dynamic> korea_len = json[korea]['data'];
    int length2 = korea_len.length;

    //
    for (int i = 0; i < length; i++) {
      if (i == 0) {
        country2 = [json[i]['country'].toString()];
        listcountry = [json[i]['country'].toString()];
      }
      else {
        country2.add(json[i]['country'].toString());
        listcountry.add(json[i]['country'].toString());
      }
    }

    //
    String parsed_date = json[korea]['data'][length2 - 1]['date'].toString();

    //
    List<dynamic> this_list;
    int this_length;
    int this_total;
    String this_country;
    int this_index;

    //
    int total_vacc = 0;
    for (int i = 0; i < length; i++) {
      this_list = json[i]['data'];
      this_length = this_list.length;
      this_country = country2[i];
      this_index = this_length - 1;
      for (int j = this_length - 1; j >= 0; j--) {
        if (json[i]['data'][j]['date'] == parsed_date) {
          this_index = j;
        }
      }
      this_total = json[i]['data'][this_index]['total_vaccinations'];
      int check = 0;
      if (this_total == null) {
        this_total = json[i]['data'][this_index]['people_vaccinated'];
        if (this_total == null) {
          this_total = json[i]['data'][this_index]['people_fully_vaccinated'];
          if (this_total == null) {
            this_total = 0;
            check++;
            if (i == 0) {
              totalvaccine2 = [0];
            }
            else {
              totalvaccine2.add(0);
            }
            this_country = this_country + "      " + "null";
          }
        }
        else {
          this_country = this_country + "      " + this_total.toString();
        }
      }
      if (this_total != 0) {
        this_country = this_country + "      " + this_total.toString();
        check++;
        if (i == 0) {
          totalvaccine2 = [this_total];
        }
        else {
          totalvaccine2.add(this_total);
        }
      }
      if (check == 0) {
        if (i == 0) {
          totalvaccine2 = [0];
        }
        else {
          totalvaccine2.add(0);
        }
      }
      country2[i] = this_country;
      total_vacc += this_total;
    }

    //
    index = [0];
    for (int i = 1; i < length; i++) {
      index.add(i);
    }

    //
    int fully_vacc = 0;
    for (int i = 0; i < length; i++) {
      this_list = json[i]['data'];
      this_length = this_list.length;
      this_country = country2[i];
      this_index = this_length - 1;
      for (int j = this_length - 1; j >= 0; j--) {
        if (json[i]['data'][j]['date'] == parsed_date) {
          this_index = j;
        }
      }
      this_total = json[i]['data'][this_index]['people_fully_vaccinated'];
      int check = 0;
      if (this_total == null) {
        if (this_index - 1 >= 0) {
          this_total =
          json[i]['data'][this_index - 1]['people_fully_vaccinated'];
          if (this_total == null) {
            this_total = 0;
            check++;
            if (i == 0) {
              fullyvaccine2 = ["null"];
            }
            else {
              fullyvaccine2.add("null");
            }
            this_country = this_country + "      " + "null";
          }
        }
        else {
          this_total = 0;
          check++;
          if (i == 0) {
            fullyvaccine2 = ["null"];
          }
          else {
            fullyvaccine2.add("null");
          }
          this_country = this_country + "      " + "null";
        }
      }
      if (this_total != 0) {
        this_country = this_country + "      " + this_total.toString();
        check++;
        if (i == 0) {
          fullyvaccine2 = [this_total.toString()];
        }
        else {
          fullyvaccine2.add(this_total.toString());
        }
      }
      if (check == 0) {
        if (i == 0) {
          fullyvaccine2 = ["null"];
        }
        else {
          fullyvaccine2.add("null");
        }
      }
      country2[i] = this_country;
      fully_vacc += this_total;
    }

    //
    int daily_vacc = 0;
    for (int i = 0; i < length; i++) {
      this_list = json[i]['data'];
      this_length = this_list.length;
      this_country = country2[i];
      this_index = this_length - 1;
      for (int j = this_length - 1; j >= 0; j--) {
        if (json[i]['data'][j]['date'] == parsed_date) {
          this_index = j;
        }
      }
      this_total = json[i]['data'][this_index]['daily_vaccinations'];
      int check = 0;
      if (this_total == null) {
        if (this_index - 1 >= 0) {
          this_total = json[i]['data'][this_index - 1]['daily_vaccinations'];
          if (this_total == null) {
            this_total = 0;
            check++;
            if (i == 0) {
              dailyvaccine2 = ["null"];
            }
            else {
              dailyvaccine2.add("null");
            }
            this_country = this_country + "   " + "null";
          }
        }
        else {
          this_total = 0;
          check++;
          if (i == 0) {
            dailyvaccine2 = ["null"];
          }
          else {
            dailyvaccine2.add("null");
          }
          this_country = this_country + "   " + "null";
        }
      }
      if (this_total != 0) {
        this_country = this_country + "   " + this_total.toString();
        check++;
        if (i == 0) {
          dailyvaccine2 = [this_total.toString()];
        }
        else {
          dailyvaccine2.add(this_total.toString());
        }
      }
      if (check == 0) {
        if (i == 0) {
          dailyvaccine2 = ["null"];
        }
        else {
          dailyvaccine2.add("null");
        }
      }
      country2[i] = this_country;
      daily_vacc += this_total;
    }


    country_list = [country2[0]];

    for (int i = 1; i < country2.length; i++) {
      country_list.add(country2[i]);
    }

    //
    totalvaccine3 = [totalvaccine2[0]];
    for (int i = 1; i < length; i++) {
      totalvaccine3.add(totalvaccine2[i]);
    }


    int max = 0;
    for (int i = length - 1; i > 0; i--) {
      max = 0;
      for (int j = 1; j <= i; j++) {
        if (totalvaccine2[j] < totalvaccine2[max]) {
          max = j;
        }
      }

      int tmp = index[max];
      index[max] = index[i];
      index[i] = tmp;

      int tmp2 = totalvaccine2[max];
      totalvaccine2[max] = totalvaccine2[i];
      totalvaccine2[i] = tmp2;
    }

    for (int i = 0; i < length; i++) {
      if (i == 0) {
        total_list2 = [json[index[i]]['country'].toString()];
      }
      else {
        total_list2.add(json[index[i]]['country'].toString());
      }
    }

    for (int i = 0; i < length; i++) {
      this_country = total_list2[i];
      String ifnull = "";
      if (totalvaccine3[index[i]] == 0) {
        ifnull = "null";
      }
      else {
        ifnull = totalvaccine3[index[i]].toString();
      }
      this_country =
          this_country + "     " + ifnull + "     " + fullyvaccine2[index[i]] +
              "     " + dailyvaccine2[index[i]];
      total_list2[i] = this_country;
    }

    total_list = [total_list2[0]];
    for (int i = 1; i < length; i++) {
      total_list.add(total_list2[i]);
    }

    country2 = []; // for table
    totalvaccine2 = [];
    totalvaccine3 = []; // include 0
    fullyvaccine2 = [];
    dailyvaccine2 = [];
    listcountry = [];

    //
    chart_date1 = [parsed_date];
    for (int i = length2 - 2; i >= 0; i--) {
      chart_date1.add(json[korea]['data'][i]['date'].toString());
    }

    for(int i=0; i<28; i++)
      {
        chart_total.add(0);
        chart_total2.add(0);
        charttotal.add(0);
        charttotal2.add(0);
      }

    for (int i = 0; i < length; i++){
      int mylength = json[i]['data'].length;
      for(int j=0; j<mylength; j++)
        {
          for(int k=0; k<28; k++)
            {
              int now = 0;
              int now2 = 0;
              if(json[i]['data'][j]['date'].toString() == chart_date1[k])
                {
                  now = charttotal[k];
                  now2 = json[i]['data'][j]['total_vaccinations'];
                  if (now2 == null) {
                    now2 = json[i]['data'][j]['people_vaccinated'];
                    if (now2 == null) {
                      now2 = json[i]['data'][j]['people_fully_vaccinated'];
                      if (now2 == null) {
                        now2 = 0;
                      }
                    }
                  }
                  now += now2;
                  charttotal[k] = now;
                }
            }
        }
    }

    for(int i=0; i<28; i++)
      {
        chart_total[i] = charttotal[i];
        chart_total2[i] = charttotal[i]/100000000;
        // print(chart_total2[i].toString());
      }

    //
    for(int i=0; i<28; i++)
    {
      chart_daily.add(0);
      chart_daily2.add(0);
      chartdaily.add(0);
      chartdaily2.add(0);
    }

    for (int i = 0; i < length; i++){
      int mylength = json[i]['data'].length;
      for(int j=0; j<mylength; j++)
      {
        for(int k=0; k<28; k++)
        {
          int now = 0;
          int now2 = 0;
          if(json[i]['data'][j]['date'].toString() == chart_date1[k])
          {
            now = chartdaily[k];
            now2 = json[i]['data'][j]['daily_vaccinations'];
            if (now2 == null) {
              if(mylength-1 >= 0)
                {
                  now2 = json[i]['data'][mylength-1]['daily_vaccinations'];
                  if(now2 == null){
                    if(mylength-2 >= 0)
                    {
                      now2 = json[i]['data'][mylength-2]['daily_vaccinations'];
                      if(now2 == null)
                      {
                        now2 = 0;
                      }
                    }
                  }
                }
            }
            if(now2 == null)
              {
                now2 = 0;
              }
            now += now2;
            chartdaily[k] = now;
          }
        }
      }
    }

    for(int i=0; i<28; i++)
    {
      chart_daily[i] = chartdaily[i];
      chart_daily2[i] = chartdaily[i]/10000000;
      // print(chart_daily2[i].toString());
    }

    return Album(
      date:json[korea]['data'][length2-1]['date'].toString(),
      total_vaccinations: total_vacc.toString(),
      people_fully_vaccinated: fully_vacc.toString(),
      daily_vaccinations: daily_vacc.toString(),
      country:country2,
      fullyvaccine: fullyvaccine2,
      dailyvaccine: dailyvaccine2,
      list_length:length,
    );
  }
}

class Page4 extends StatelessWidget{
  final Map<String, String> arguments;
  Page4(this.arguments);
  Future<Album> futureAlbum = fetchAlbum();
  int check1 = 0;

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color : Colors.grey,
        width : 2.0,
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(10.0) //
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    Page4CounterProvider counter = Provider.of<Page4CounterProvider>(context);
    return Scaffold(
      body: Center(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : <Widget>[
                Container(
                  width:380,
                  decoration : boxDecoration(),
                  child : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Expanded(child: Text('\t\tTotal Vacc', textAlign: TextAlign.left)),
                          Expanded(child: Text('Parsed latest date\t\t', textAlign: TextAlign.right)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          FutureBuilder<Album>(
                            future: futureAlbum,
                            builder: (context, snapshot) {
                              if(snapshot.hasData) {
                                return Expanded(child: Text('\t\t'+snapshot.data.total_vaccinations+ ' people', textAlign: TextAlign.left));
                              } else if (snapshot.hasError) {
                                return Text("${snapshot.error}");
                              }
                              return CircularProgressIndicator();
                            },
                          ),
                          FutureBuilder<Album>(
                            future: futureAlbum,
                            builder: (context, snapshot) {
                              if(snapshot.hasData) {
                                return Expanded(child: Text(snapshot.data.date+'\t\t', textAlign: TextAlign.right));
                              } else if (snapshot.hasError) {
                                return Text("${snapshot.error}");
                              }
                              return CircularProgressIndicator();
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Expanded(child: Text('\t\tTotal fully Vacc.', textAlign: TextAlign.left)),
                          Expanded(child: Text('Daily Vacc.\t\t', textAlign: TextAlign.right)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          FutureBuilder<Album>(
                            future: futureAlbum,
                            builder: (context, snapshot) {
                              if(snapshot.hasData) {
                                return Expanded(child: Text('\t\t'+snapshot.data.people_fully_vaccinated+' people', textAlign: TextAlign.left));
                              } else if (snapshot.hasError) {
                                return Text("${snapshot.error}");
                              }
                              return CircularProgressIndicator();
                            },
                          ),
                          FutureBuilder<Album>(
                            future: futureAlbum,
                            builder: (context, snapshot) {
                              if(snapshot.hasData) {
                                return Expanded(child: Text(snapshot.data.daily_vaccinations+' people'+'\t\t', textAlign: TextAlign.right));
                              } else if (snapshot.hasError) {
                                return Text("${snapshot.error}");
                              }
                              return CircularProgressIndicator();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
              Text(
                '\n',
                style : TextStyle(fontSize: 5,),
              ),
              Container(
                  width:380,
                  height:250,
                  decoration : boxDecoration(),
                  child : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        TextButton(
                            child:Text("Graph1\t\t\t\t\t\t"),
                            onPressed: (){
                              counter.chart1();
                            }
                        ),
                        TextButton(
                            child:Text("Graph2\t\t\t\t\t\t"),
                            onPressed: (){
                              counter.chart2();
                            }
                        ),
                        TextButton(
                            child:Text("Graph3\t\t\t\t\t\t"),
                            onPressed: (){
                              counter.chart3();
                            }
                        ),
                        TextButton(
                            child:Text("Graph4"),
                            onPressed: (){
                              counter.chart4();
                            }
                        ),
                      ],
                    ),
                      Divider(
                          color: Colors.grey,
                              thickness:2,
                      ),
                      Container(
                          height:180,
                          width:330,
                          child: LineChart(mainChart())
                      ),
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                //   child: LineChart(mainChart(),),
                // )
                   ],
                  ),
              ),
              Text(
                '\n',
                style : TextStyle(fontSize: 5,),
              ),
              Container(
                width:380,
                height:250,
                decoration : boxDecoration(),
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        TextButton(
                            child:Text("Country_name\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"),
                            onPressed: (){
                              counter.changeTable1();
                            }
                        ),
                        TextButton(
                            child:Text("Total_vacc"),
                            onPressed: (){
                              counter.changeTable2();
                            }
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness:2,
                    ),
                    Text("Country               total                   fully                    daily"),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(1),
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(return_list[index],
                                style: TextStyle(fontSize: 12),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Text(chart_data1.length.toString()),
              // Text(chart_total[0].toString()),
              // Text(chart_total[1].toString()),
              // Text(chart_total[2].toString()),
              // Text(chart_total[3].toString()),
              // Text(chart_total[4].toString()),
              // //
              // Text(chart_total2[0].toString()),
              // Text(chart_total2[1].toString()),
              // Text(chart_total2[2].toString()),
              // Text(chart_total2[3].toString()),
              // Text(chart_total2[4].toString()),
              // Text(chart_start.toString()),
              // Text(chart_end.toString()),
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            counter.clearTable();
            counter.clear_chart();
            Navigator.pushNamed(
                context,
                '/page2',
                arguments: {
                  "user-msg1": arguments["user-msg1"],"user-msg2":"Vaccine Page",
                });
          },
        child: Icon(Icons.list),
      ),
    );
  }
}

List<Color> gradientColors = [
  const Color(0xff23b6e6),
  const Color(0xff02d39a),
];

LineChartData mainChart() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: Color(0xff37434d),
          strokeWidth: 0.1,
        );
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: Color(0xff37434d),
          strokeWidth: 0.5,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        textStyle: const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 13),
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return date1;
            case 1:
              return date2;
            case 2:
              return date3;
            case 3:
              return date4;
            case 4:
              return date5;
            case 5:
              return date6;
            case 6:
              return date7;
            case 100:
              return date1;
            case 107:
              return date2;
            case 114:
              return date3;
            case 121:
              return date4;
            case 127:
              return date5;
          }
          return '';
        },
        margin: 8,
      ),
      leftTitles: SideTitles(
        showTitles: true,
        textStyle: const TextStyle(
          color: Color(0xff67727d),
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 50:
              return "5.0B";
            case 51:
              return "5.1B";
            case 52:
              return "5.2B";
            case 53:
              return "5.3B";
            case 54:
              return "5.4B";
            case 55:
              return "5.5B";
            case 56:
              return "5.6B";
            case 57:
              return "5.7B";
            case 58:
              return "5.8B";
            case 59:
              return "5.9B";
            case 60:
              return "6.0B";
            case 61:
              return "6.1B";
            case 62:
              return "6.2B";
            case 63:
              return "6.3B";
            case 64:
              return "6.4B";
            case 65:
              return "6.5B";
            case 66:
              return "6.6B";
            case 67:
              return "6.7B";
            case 68:
              return "6.8B";
            case 69:
              return "6.9B";
            case 70:
              return "7.0B";
            case 71:
              return "7.1B";
            case 72:
              return "7.2B";
            case 73:
              return "7.3B";
            case 74:
              return "7.4B";
            case 75:
              return "7.5B";
            case 76:
              return "7.6B";
            case 77:
              return "7.7B";
            case 78:
              return "7.8B";
            case 79:
              return "7.9B";
            case 80:
              return "8.0B";
            case 81:
              return "8.1B";
            case 82:
              return "8.2B";
            case 83:
              return "8.3B";
            case 84:
              return "8.4B";
            case 85:
              return "8.5B";
            case 86:
              return "8.6B";
            case 87:
              return "8.7B";
            case 88:
              return "8.8B";
            case 89:
              return "8.9B";
            case 90:
              return "9.0B";
            case 7:
              return "70M";
            case 8:
              return "80M";
            case 9:
              return "90M";
            case 10:
              return "100M";
            case 11:
              return "110M";
            case 12:
              return "120M";
            case 13:
              return "130M";
            case 14:
              return "140M";
            case 15:
              return "150M";
            case 16:
              return "160M";
            case 17:
              return "170M";
            case 18:
              return "180M";
            case 19:
              return "190M";
            case 20:
              return "200M";


          }
          return '';
        },
        reservedSize: 28,
        margin: 12,
      ),
    ),
    borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d), width: 1)),
    minX: chart_start2,
    maxX: chart_end2,
    minY: chart_start,
    maxY: chart_end,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(x27, y27),
          FlSpot(x26, y26),
          FlSpot(x25, y25),
          FlSpot(x24, y24),
          FlSpot(x23, y23),
          FlSpot(x22, y22),
          FlSpot(x21, y21),
          FlSpot(x20, y20),
          FlSpot(x19, y19),
          FlSpot(x18, y18),
          FlSpot(x17, y17),
          FlSpot(x16, y16),
          FlSpot(x15, y15),
          FlSpot(x14, y14),
          FlSpot(x13, y13),
          FlSpot(x12, y12),
          FlSpot(x11, y11),
          FlSpot(x10, y10),
          FlSpot(x9, y9),
          FlSpot(x8, y8),
          FlSpot(x7, y7),
          FlSpot(x6, y6),
          FlSpot(x5, y5),
          FlSpot(x4, y4),
          FlSpot(x3, y3),
          FlSpot(x2, y2),
          FlSpot(x1, y1),
          FlSpot(x0, y0),
        ],
        isCurved: false,
        colors: gradientColors,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
        ),
      ),
    ],
  );
}

