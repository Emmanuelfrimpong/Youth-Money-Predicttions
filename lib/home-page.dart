import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:youth_money_predictions/color-designs.dart';
import 'package:youth_money_predictions/constants.dart';
import 'modle.dart';
import 'widgets/event-item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Events> events=[];
  @override
  void initState() {
    super.initState();
    events.add(new Events("Ita","Benevento vs Empoli","2"));
    events.add(new Events("Eur","Sevilla vs Rennes ","1"));
    events.add(new Events("Eng","AFC Bournemouth vs Bristol City","1X"));
    events.add(new Events("Eur","Club Brugge KV vs Lazio","1X"));
    events.add(new Events("Por"," Sporting CP vs Gil Vicente","1"));
    events.add(new Events("Eur","Krasnodar vs Chelsea","2"));
    events.add(new Events("Spn","Espanyol vs Ponferradina","1"));
    events.add(new Events("Eur","Basaksehir vs Paris SG","2"));
    events.add(new Events("Chi","Sichuan Jiuniu vs Guizhou Hengfeng","1"));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_TEXT,
      appBar: AppBar(
        title: Text(APP_NAME,style: whiteBold()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        backgroundColor: SECONDARY,
        child: Icon(Icons.add_ic_call_rounded),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Card(
        elevation: 5,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20,bottom: 20,left: 5,right: 5),
                      color: PRIMARY_TEXT,
                  child:Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 25),
                        decoration: const BoxDecoration(
                            color: Colors.black38,
                            border: Border(
                              bottom: BorderSide(width: 1.0, color: Color(0xFFf29000000)),)),
                        child: Column(
                          children: [
                            Text('Free Mega Tips of the day.',style: TextStyle(color: PRIMARY,fontWeight: FontWeight.bold),),
                            Text(new DateFormat.yMMMMd('en_US').format(new DateTime.now()),style: TextStyle(color: SECONDARY,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                  Container(
                    decoration: const BoxDecoration(
                    color: Colors.black12,
                        border: Border(
                      bottom: BorderSide(width: 1.0, color: Color(0xFFf29000000)),)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(child: Text('Place',style: TextStyle(color: PRIMARY_TEXT,fontWeight: FontWeight.bold),),
                          color: SECONDARY,  padding: EdgeInsets.only(top: 15,bottom: 15,right: 5,left: 5),),
                        Container(child: Text('Match',style: TextStyle(color: SECOND_TEXT,fontWeight: FontWeight.bold),),
                          padding: EdgeInsets.only(top: 15,bottom: 15,right: 5,left: 5),),
                        Container(child: Text('Option',style: TextStyle(color: PRIMARY_TEXT,fontWeight: FontWeight.bold),),
                          color: SECONDARY, padding: EdgeInsets.only(top: 15,bottom: 15,right: 5,left: 5)),
                      ],),),
                      ListView.builder(
                          itemCount: events == null ? 0 : events.length,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemBuilder: (context, index) {
                            return EventItem(events[index].country,events[index].match,events[index].option);}
                ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
