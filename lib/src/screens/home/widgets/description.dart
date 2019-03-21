import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  String name;
  double stars;
  String description;

  Description(this.name, this.stars, this.description);

  Widget _getStars(double total) {
    List<Widget> stars = [];

    final empty_star = Container(
        margin: EdgeInsets.only(top: 23.0, right: 3.0),
        child: Icon(Icons.star_border, color: Colors.yellow)
    );

    final star = Container(
        margin: EdgeInsets.only(top: 23.0, right: 3.0),
        child: Icon(Icons.star, color: Colors.yellow)
    );

    final star_half = Container(
        margin: EdgeInsets.only(top: 23.0, right: 3.0),
        child: Icon(Icons.star_half, color: Colors.yellow)
    );

    if(total <= 0) {

      for(int i=0; i<5; i++) {
        stars.add(empty_star);
      }

    } else if(total > 0 && total < 6) {

      int limit = total.floor();
      int empty = 5 - limit;

      for(int i=0; i<limit; i++) {
        stars.add(star);
      }

      /*if(empty > 1 && empty < 5) {
        for(int i=0; i<empty; i++) {
          stars.add(empty_star);
        }
      }*/


      if(total > limit) {
        stars.add(star_half);
      }

    } else {

      for(int i=0; i<5; i++) {
        stars.add(star);
      }

    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Text(
                  this.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Ubuntu',
                  ),
                  textAlign: TextAlign.left
              ),
            ),
            _getStars(this.stars),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Text(this.description,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
              fontFamily: 'SourceSansPro'
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}