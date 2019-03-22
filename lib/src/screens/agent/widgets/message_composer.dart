import 'package:flutter/material.dart';

class MessageComposer extends StatefulWidget {
  MessageComposer(this.onReceiveMessage, this.onNeedHelp);

  final void Function(String) onReceiveMessage;
  final void Function() onNeedHelp;

  @override
  State<StatefulWidget> createState() => _MessageComposerState();
}

class _MessageComposerState extends State<MessageComposer> {
  final bool needHelp = false;
  final TextEditingController _messageController = new TextEditingController();

  void _onNeedHelp() => widget.onNeedHelp();

  void _onSubmitMessage(String message) {
    _messageController.clear();

    widget.onReceiveMessage(message);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: new EdgeInsets.all(3.0),
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              //margin: EdgeInsets.only(right: 8.0),
              child: IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.help, color: Color(0xFF69a578)),
                tooltip: 'Need Help?',
                onPressed: _onNeedHelp,
              ),
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "What do you want to discover?",
                    hintStyle: TextStyle(fontSize: 16)),
                controller: _messageController,
                onSubmitted: _onSubmitMessage,
              ),
            ),
            Container(
              //margin: EdgeInsets.only(left: 8.0),
              child: IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.send, color: Color(0xFF69a578)),
                onPressed: () => _onSubmitMessage(_messageController.text),
              ),
            ),
          ],
        )
    );
  }
}