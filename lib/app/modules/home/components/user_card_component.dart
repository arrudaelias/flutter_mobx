import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/home/shared/models/user_model.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {Key key, this.onTap, @required this.item, this.selected: false}
    ) : super(key: key);
 
  final VoidCallback onTap;
  final UserModel item;
  final bool selected;


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
        return Card(
          color: Colors.white,
          child: Column(
              children: <Widget>[
                new Container( 
                  padding: const EdgeInsets.all(8.0),
                  child: 
                  Image.network(
                    item.avatar
                  )),
                  new Container( 
                  padding: const EdgeInsets.all(10.0),
                  child:                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(item.first_name, style: Theme.of(context).textTheme.title),
                        Text(item.last_name, style: TextStyle(color: Colors.black.withOpacity(0.5))),
                        Text(item.email),
                      ],
                    ),
                    
                  )
            ],
           crossAxisAlignment: CrossAxisAlignment.start,
          )
    );
  }
}