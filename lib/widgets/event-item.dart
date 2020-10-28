
import 'package:flutter/material.dart';
import 'package:youth_money_predictions/color-designs.dart';

class EventItem extends StatefulWidget {
  final String country;
  final String match;
  final String option;

  EventItem(this.country, this.match, this.option);

  @override
  _EventItemState createState() => _EventItemState();
}

class _EventItemState extends State<EventItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Color(0xFFf29000000)),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: Text(widget.country,style: TextStyle(color: PRIMARY_TEXT,fontWeight: FontWeight.bold),),
              color: PRIMARY,  padding: EdgeInsets.only(top: 15,bottom: 15,right: 5,left: 5),width: 40,
          ),
          Text(widget.match,style: TextStyle(color: SECOND_TEXT),),
          Container(child: Center(child: Text(widget.option,style: TextStyle(color: PRIMARY_TEXT,fontWeight: FontWeight.bold),)),
            color: PRIMARY, padding: EdgeInsets.only(top: 15,bottom: 15),
            width: 35,
          ),

        ],
      ),
    );
  }
}
