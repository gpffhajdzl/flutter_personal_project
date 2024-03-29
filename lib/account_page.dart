import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {

          },
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'http://cdn.pixabay.com/photo/2017/09/21/19/12/france-2773030_1280.jpg'
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                      SizedBox(
                      width: 28.0,
                      height: 28.0,
                      child: FloatingActionButton(onPressed: null,
                        backgroundColor: Colors.white,
                      ),
                      ),
                      SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: FloatingActionButton(onPressed: null,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add),
                      ),
                      ),
                      ],
                    ),
                  )
                ],
              ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Text('이름',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0) )
            ],
          ),
          Text('0\n게시물',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          Text('0\n팔로워',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),),
          Text('0\n팔로잉',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),),
        ],
      ),
    );
  }

}
