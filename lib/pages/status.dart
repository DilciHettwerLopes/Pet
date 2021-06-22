import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  Status({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[Text('Pagina 2')],
      ),
    );
  }
}

// Timeline.tileBuilder(
//               //listview builder
//               builder: TimelineTileBuilder.fromStyle(
//                 contentsAlign: ContentsAlign.alternating,
//                 contentsBuilder: (context, index) => Padding(
//                   padding: const EdgeInsets.all(24.0),
//                   child: Text('Evento $index'),
//                 ),
//                 itemCount: 5,
//               ),
//             )
