import 'package:flutter/material.dart';


class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('zhangshan', style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold
            )),
            accountEmail: Text('wwww'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage (
                image: NetworkImage('http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'),
                // fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
              title: Text('Message',textAlign: TextAlign.right),
              trailing: Icon(Icons.message,color: Colors.black12, size: 12),
              onTap: () => Navigator.pop(context)
          ),
          ListTile(
              title: Text('Favorite',textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite,color: Colors.black12, size: 12),
              onTap: () => Navigator.pop(context)
          ),
          ListTile(
              title: Text('Settings',textAlign: TextAlign.right),
              trailing: Icon(Icons.settings,color: Colors.black12, size: 12),
              onTap: () => Navigator.pop(context)
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}