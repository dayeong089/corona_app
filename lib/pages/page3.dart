import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<String> case_list = [];
List<String> death_list=[];
List<int> index=[0];
List<int> index2=[0];
List<String> return_list=["", "", "", "", "", "", ""];

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

class Page3CounterProvider with ChangeNotifier{
  int _counter;
  get counter => _counter;

  Page3CounterProvider(this._counter);
  void changeTable1(){
    return_list[0] = case_list[0];
    return_list[1] = case_list[1];
    return_list[2] = case_list[2];
    return_list[3] = case_list[3];
    return_list[4] = case_list[4];
    return_list[5] = case_list[5];
    return_list[6] = case_list[6];
    notifyListeners();
  }

  void changeTable2()
  {
    return_list[0] = death_list[0];
    return_list[1] = death_list[1];
    return_list[2] = death_list[2];
    return_list[3] = death_list[3];
    return_list[4] = death_list[4];
    return_list[5] = death_list[5];
    return_list[6] = death_list[6];
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
  String url = "https://covid.ourworldindata.org/data/owid-covid-data.json";
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

List<String> country_list = [];
int len = 0;

ListView _buildStaticListView (List<String> _list) {
  return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _list.length,
      itemExtent: 25,
      //itemBuilder : (context, idx) => Text(_List[idx])
      itemBuilder: (BuildContext _ctx, int i) {
        return ListTile(
          title: Text(_list[i],
            style: TextStyle(fontSize: 12),
          ),
        );
      });
}

class Album {
  final List<String> country;
  final String date;
  final String total_cases;
  final String total_deaths;
  final String new_cases;
  final List<String> data;
  final int list_length;

  Album({@required this.country, @required this.list_length, @required this.date, @required this.total_cases, @required this.total_deaths, @required this.new_cases, @required this.data});

  factory Album.fromJson(Map<String, dynamic> json) {
    List<dynamic> korea_len = json['KOR']['data'];
    List<dynamic> json2 = json.values.toList();
    int length2 = korea_len.length;
    int length = json.length;

    List<String> country2;
    List<String> country3 = [];
    List<double> totalcases2 = [];
    List<double> totalcases3 = [];
    List<double> totaldeaths2 = [];
    List<double> totaldeaths3 = [];
    List<String> dailycases2 = [];
    case_list = [];
    death_list = [];

    List<int> charttotal = [0];
    List<int> chartdaily = [0];
    List<double> charttotal2 = [0];
    List<double> chartdaily2 = [0];

    List<dynamic> this_list;
    int this_length;
    double this_total;
    String this_country;
    String parsed_date = json['KOR']['data'][length2-1]['date'].toString();
    int this_index;

    //
    index = [0];
    for(int i=1; i<length; i++)
    {
      index.add(i);
    }

    index2 = [0];
    for(int i=1; i<length; i++)
    {
      index2.add(i);
    }

    //
    for(int i=0; i<length;i++)
    {
      if(i == 0)
      {
        country2 = [json2[i]['location'].toString()];
        country3 = [json2[i]['location'].toString()];
      }
      else
      {
        country2.add(json2[i]['location'].toString());
        country3.add(json2[i]['location'].toString());
      }
    }

    //
    double totalcases=0;
    for(int i=0; i<length; i++)
    {
      this_country = country2[i];
      this_list = json2[i]['data'];
      this_length = this_list.length;
      this_index = this_length-1;
      for(int j=this_length-1; j>=0; j--)
      {
        if(json2[i]['data'][j]['date'] == parsed_date)
        {
          this_index= j;
        }
      }
      this_total = json2[i]['data'][this_index]['total_cases'];
      if(this_total == null)
      {
        if(this_index-1 >= 0)
        {
          this_total = json2[i]['data'][this_index-1]['total_cases'];
          if(this_total == null)
          {
            this_total = 0;
            if(i == 0)
              {
                totalcases2 = [0];
              }
            else
              {
                totalcases2.add(0);
              }
            this_country = this_country + "      " + "null";
          }
        }
        else
        {
          this_total = 0;
          if(i == 0)
          {
            totalcases2 = [0];
          }
          else
          {
            totalcases2.add(0);
          }
          this_country = this_country + "      " + "null";
        }
      }
      if(this_total != 0)
      {
        this_country = this_country +  "      "  + this_total.toInt().toString();
        if(i==0)
          {
            totalcases2 = [this_total];
          }
        else
          {
            totalcases2.add(this_total);
          }
      }
      country2[i] = this_country;
      totalcases += this_total;
    }

    double totaldeaths=0;
    for(int i=0; i<length; i++)
    {
      this_country = country2[i];
      this_list = json2[i]['data'];
      this_length = this_list.length;
      this_index = this_length-1;
      for(int j=this_length-1; j>=0; j--)
      {
        if(json2[i]['data'][j]['date'] == parsed_date)
        {
          this_index= j;
        }
      }
      this_total = json2[i]['data'][this_index]['total_deaths'];
      if(this_total == null)
      {
        if(this_index-1 >= 0)
        {
          this_total = json2[i]['data'][this_index-1]['total_deaths'];
          if(this_total == null)
          {
            this_total = 0;
            if(i==0)
              {
                totaldeaths2 = [0];
              }
            else
              {
                totaldeaths2.add(0);
              }
            this_country = this_country + "      " + "null";
          }
        }
        else
        {
          this_total = 0;
          if(i==0)
          {
            totaldeaths2 = [0];
          }
          else
          {
            totaldeaths2.add(0);
          }
          this_country = this_country + "      " + "null";
        }
      }
      if(this_total != 0)
      {
        this_country = this_country +  "      "  + this_total.toInt().toString();
        if(i==0)
          {
            totaldeaths2 = [this_total];
          }
        else
          {
            totaldeaths2.add(this_total);
          }
      }
      country2[i] = this_country;
      totaldeaths += this_total;
    }

    double dailycases = 0;
    for(int i=0; i<length; i++)
    {
      this_country = country2[i];
      this_list = json2[i]['data'];
      this_length = this_list.length;
      this_index = this_length-1;
      for(int j=this_length-1; j>=0; j--)
      {
        if(json2[i]['data'][j]['date'] == parsed_date)
        {
          this_index= j;
        }
      }
      this_total = json2[i]['data'][this_index]['new_cases'];
      int check = 0;
      if(this_total == null)
      {
        if(this_index-1 >= 0)
        {
          this_total = json2[i]['data'][this_index-1]['new_cases'];
          if(this_total == null)
          {
            this_total = 0;
            if(i==0)
              {
                dailycases2 = ["null"];
                check++;
              }
            else
              {
                dailycases2.add("null");
                check++;
              }
            this_country = this_country + "      " + "null";
          }
        }
        else
        {
          this_total = 0;
          if(i==0)
          {
            dailycases2 = ["null"];
            check++;
          }
          else
          {
            dailycases2.add("null");
            check++;
          }
          this_country = this_country + "      " + "null";
        }
      }
      if(this_total != 0)
      {
        this_country = this_country +  "      "  + this_total.toInt().toString();
        if(i==0)
          {
            dailycases2 = [this_total.toInt().toString()];
            check++;
          }
        else
          {
            dailycases2.add(this_total.toInt().toString());
            check++;
          }
      }
      if(check==0)
        {
          if(i==0)
            {
              dailycases2 = ["null"];
            }
          else
            {
              dailycases2.add("null");
            }
        }
      country2[i] = this_country;
      dailycases += this_total;
    }

    //
    totalcases3 =  [totalcases2[0]];
    for(int i=1; i<length; i++)
      {
        totalcases3.add(totalcases2[i]);
      }

    totaldeaths3 =  [totaldeaths2[0]];
    for(int i=1; i<length; i++)
    {
      totaldeaths3.add(totaldeaths2[i]);
    }

    //
    int max;
    for(int i=length-1; i>0; i--)
    {
      max = 0;
      for(int j=1; j<=i; j++)
      {
        if(totalcases2[j] < totalcases2[max])
        {
          max = j;
        }
      }

      int tmp = index[max];
      index[max] = index[i];
      index[i] = tmp;

      double tmp2 = totalcases2[max];
      totalcases2[max] = totalcases2[i];
      totalcases2[i] = tmp2;
    }

    //
    for(int i=length-1; i>0; i--)
    {
      max = 0;
      for(int j=1; j<=i; j++)
      {
        if(totaldeaths2[j] < totaldeaths2[max])
        {
          max = j;
        }
      }

      int tmp = index2[max];
      index2[max] = index2[i];
      index2[i] = tmp;

      double tmp2 = totaldeaths2[max];
      totaldeaths2[max] = totaldeaths2[i];
      totaldeaths2[i] = tmp2;
    }

    //
    for(int i=0; i<length; i++)
    {
      if(i == 0)
      {
        case_list = [country3[index[i]]];
        death_list = [country3[index2[i]]];
      }
      else
      {
        case_list.add(country3[index[i]]);
        death_list.add(country3[index2[i]]);
      }
    }

    for(int i=0; i<length; i++)
    {
      this_country = case_list[i];
      String ifnull = "";
      if(totalcases3[index[i]] == 0)
      {
        ifnull = "null";
      }
      else
      {
        ifnull = totalcases3[index[i]].toInt().toString();
      }
      this_country = this_country + "     " + ifnull+ "     " + dailycases2[index[i]]+ "     " + totaldeaths3[index[i]].toInt().toString();
      case_list[i] = this_country;
    }

    for(int i=0; i<length; i++)
    {
      this_country = death_list[i];
      String ifnull = "";
      if(totaldeaths3[index2[i]] == 0)
      {
        ifnull = "null";
      }
      else
      {
        ifnull = totaldeaths3[index2[i]].toInt().toString();
      }
      this_country = this_country + "     " + totalcases3[index2[i]].toInt().toString() + "     " + dailycases2[index2[i]] + "     " + ifnull;
      death_list[i] = this_country;
    }

    //
    chart_date1 = [parsed_date];
    for (int i = length2 - 2; i >= 0; i--) {
      chart_date1.add(json['KOR']['data'][i]['date'].toString());
    }

    for(int i=0; i<28; i++)
    {
      chart_total.add(0);
      chart_total2.add(0);
      charttotal.add(0);
      charttotal2.add(0);
    }

    for (int i = 0; i < length; i++){
      int mylength = json2[i]['data'].length;
      for(int j=0; j<mylength; j++)
      {
        for(int k=0; k<28; k++)
        {
          int now = 0;
          double now2 = 0;
          if(json2[i]['data'][j]['date'].toString() == chart_date1[k])
          {
            now = charttotal[k];
            now2 = json2[i]['data'][j]['total_cases'];
            if (now2 == null) {
              if(mylength-1 >= 0)
              {
                now2 = json2[i]['data'][mylength-1]['total_cases'];
                if(now2 == null){
                  if(mylength-2 >= 0)
                  {
                    now2 = json2[i]['data'][mylength-2]['total_cases'];
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
            now += now2.toInt();
            charttotal[k] = now;
          }
        }
      }
    }

    for(int i=0; i<28; i++)
    {
      chart_total[i] = charttotal[i];
      chart_total2[i] = charttotal[i] / 1000000;
      // print(chart_total2[i].toString());
    }

    for(int i=0; i<28; i++)
    {
      chart_daily.add(0);
      chart_daily2.add(0);
      chartdaily.add(0);
      chartdaily2.add(0);
    }

    for (int i = 0; i < length; i++){
      int mylength = json2[i]['data'].length;
      for(int j=0; j<mylength; j++)
      {
        for(int k=0; k<28; k++)
        {
          int now = 0;
          double now2 = 0;
          if(json2[i]['data'][j]['date'].toString() == chart_date1[k])
          {
            now = chartdaily[k];
            now2 = json2[i]['data'][j]['new_cases'];
            if (now2 == null) {
              if(mylength-1 >= 0)
              {
                now2 = json2[i]['data'][mylength-1]['new_cases'];
                if(now2 == null){
                  if(mylength-2 >= 0)
                  {
                    now2 = json2[i]['data'][mylength-2]['new_cases'];
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
            now += now2.toInt();
            chartdaily[k] = now;
          }
        }
      }
    }

    for(int i=0; i<28; i++)
    {
      chart_daily[i] = chartdaily[i];
      chart_daily2[i] = chartdaily[i] / 100000;
      print(chart_daily2[i].toString());
    }

    return Album(
      date : json['KOR']['data'][length2-1]['date'].toString(),
      total_cases: totalcases.toInt().toString(),
      total_deaths:totaldeaths.toInt().toString(),
      new_cases:dailycases.toInt().toString(),
      country:country2,
      list_length:length,
    );
  }
}

class Page3 extends StatelessWidget{
  final Map<String, String> arguments;
  Page3(this.arguments);

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

  void addItemToList(int len, String data)
  {
    if(len == 0)
    {
      country_list = [data];
    }
    else
    {
      country_list.insert(len, data);
    }
  }

  Future<Album> futureAlbum = fetchAlbum();

  @override
  Widget build(BuildContext context){
    Page3CounterProvider counter = Provider.of<Page3CounterProvider>(context);
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
                        Expanded(child: Text('\t\tTotal Cases', textAlign: TextAlign.left)),
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
                              len = snapshot.data.list_length;
                              // country_list = [snapshot.data.country[0]];
                              for(int i=0;i<len;i++)
                              {
                                //country_list.add(snapshot.data.country[i]);
                                addItemToList(i, snapshot.data.country[i]);
                              }
                              return Expanded(child: Text('\t\t'+snapshot.data.total_cases+' people', textAlign: TextAlign.left));
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
                        Expanded(child: Text('\t\tTotal Deaths.', textAlign: TextAlign.left)),
                        Expanded(child: Text('Daily Cases.\t\t', textAlign: TextAlign.right)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        FutureBuilder<Album>(
                          future: futureAlbum,
                          builder: (context, snapshot) {
                            if(snapshot.hasData) {
                              return Expanded(child: Text('\t\t'+snapshot.data.total_deaths+' people', textAlign: TextAlign.left));
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
                              return Expanded(child: Text(snapshot.data.new_cases+' people'+'\t\t', textAlign: TextAlign.right));
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
                            child:Text("Total_cases\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"),
                            onPressed: (){
                              counter.changeTable1();
                            }
                        ),
                        TextButton(
                            child:Text("Total_deaths"),
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
                    Text("Country            total cases           daily cases         total deaths"),
                    // Expanded(
                    //     child : _buildStaticListView(country_list)
                    // ),
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
                    // Expanded(
                    //     child: SingleChildScrollView(
                    //         scrollDirection: Axis.horizontal,
                    //         child: Container(
                    //             height: 50,
                    //             child: Column(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: <Widget>[
                    //                   Text(t1, textAlign: TextAlign.left),
                    //                   Text(t2),
                    //                   Text(t3),
                    //                   Text(t4),
                    //                   Text(t5),
                    //                   Text(t6),
                    //                   Text(t7),
                    //                 ]
                    //             )
                    //         )
                    //     )
                    // )
                  ],
                ),
              ),
            ]
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
                  "user-msg1": arguments["user-msg1"], "user-msg2":"Cases/Deaths Page",
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
            case 0:
              return "0";
            case 1:
              return "0.1M";
            case 3:
              return "0.3M";
            case 5:
              return "0.5M";
            case 7:
              return "0.7M";
            case 9:
              return "0.9M";
            case 11:
              return "1.1M";
            case 13:
              return "1.3M";
            case 15:
              return "1.5M";
            case 17:
              return "1.7M";
            case 19:
              return "1.9M";
            case 21:
              return "2.1M";
            case 23:
              return "2.3M";
            case 25:
              return "2.5M";
            case 27:
              return "2.7M";
            case 29:
              return "2.9M";
            case 31:
              return "3.1M";
            case 33:
              return "3.3M";
            case 35:
              return "3.5M";
            case 37:
              return "3.7M";
            case 39:
              return "3.9M";

            case 500:
              return "500M";
            case 501:
              return "501M";
            case 502:
              return "502M";
            case 503:
              return "503M";
            case 504:
              return "504M";
            case 505:
              return "505M";
            case 506:
              return "506M";
            case 507:
              return "507M";
            case 508:
              return "508M";
            case 509:
              return "509M";
            case 510:
              return "510M";
            case 511:
              return "511M";
            case 512:
              return "512M";
            case 513:
              return "513M";
            case 514:
              return "514M";
            case 515:
              return "515M";
            case 516:
              return "516M";
            case 517:
              return "517M";
            case 518:
              return "518M";
            case 519:
              return "519M";
            case 520:
              return "520M";
            case 521:
              return "521M";
            case 522:
              return "522M";
            case 523:
              return "523M";
            case 524:
              return "524M";
            case 525:
              return "525M";
            case 526:
              return "526M";
            case 527:
              return "527M";
            case 528:
              return "528M";
            case 529:
              return "529M";
            case 530:
              return "530M";
            case 531:
              return "531M";
            case 532:
              return "532M";
            case 533:
              return "533M";
            case 534:
              return "534M";
            case 535:
              return "535M";
            case 536:
              return "536M";
            case 537:
              return "537M";
            case 538:
              return "538M";
            case 539:
              return "539M";
            case 540:
              return "540M";
            case 541:
              return "541M";
            case 542:
              return "542M";
            case 543:
              return "543M";
            case 544:
              return "544M";
            case 545:
              return "545M";
            case 546:
              return "546M";
            case 547:
              return "547M";
            case 548:
              return "548M";
            case 549:
              return "549M";
            case 550:
              return "550M";
            case 551:
              return "551M";
            case 552:
              return "552M";
            case 553:
              return "553M";
            case 554:
              return "554M";
            case 555:
              return "555M";
            case 556:
              return "556M";
            case 557:
              return "557M";
            case 558:
              return "558M";
            case 559:
              return "559M";
            case 560:
              return "560M";
            case 561:
              return "561M";
            case 562:
              return "562M";
            case 563:
              return "563M";
            case 564:
              return "564M";
            case 565:
              return "565M";
            case 566:
              return "566M";
            case 567:
              return "567M";
            case 568:
              return "568M";
            case 569:
              return "569M";
            case 570:
              return "570M";
            case 571:
              return "571M";
            case 572:
              return "572M";
            case 573:
              return "573M";
            case 574:
              return "574M";
            case 575:
              return "575M";
            case 576:
              return "576M";
            case 577:
              return "577M";
            case 578:
              return "578M";
            case 579:
              return "579M";
            case 580:
              return "580M";
            case 581:
              return "581M";
            case 582:
              return "582M";
            case 583:
              return "583M";
            case 584:
              return "584M";
            case 585:
              return "585M";
            case 586:
              return "586M";
            case 587:
              return "587M";
            case 588:
              return "588M";
            case 589:
              return "589M";
            case 590:
              return "590M";
            case 591:
              return "591M";
            case 592:
              return "592M";
            case 593:
              return "593M";
            case 594:
              return "594M";
            case 595:
              return "595M";
            case 596:
              return "596M";
            case 597:
              return "597M";
            case 598:
              return "598M";
            case 599:
              return "599M";
            case 600:
              return "600M";

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
