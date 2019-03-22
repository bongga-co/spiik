import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {

  final String userName;
  final String message;
  final bool isMe;

  TextMessage({ this.userName, this.message, this.isMe });

  Widget _buildBotMessage(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            child: this.isMe
                ? Text(this.userName[0], style: TextStyle(
                fontWeight: FontWeight.w900, fontFamily: 'Ubuntu'))
                : Image.asset("assets/images/bot.png"),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(this.userName, style: Theme
                  .of(context)
                  .textTheme
                  .subhead),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(this.message),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildUserMessage(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(this.userName, style: Theme
                  .of(context)
                  .textTheme
                  .subhead),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(this.message),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            child: this.isMe
              ? Text(
                this.userName[0],
                style: TextStyle(
                  fontWeight: FontWeight.w900, fontFamily: 'Ubuntu')
                )
              : Image.asset("assets/images/bot.png"),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: this.isMe ? _buildUserMessage(context) : _buildBotMessage(context)
    );
  }
}