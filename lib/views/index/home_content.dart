import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';


import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';
//
import '../../routers/application.dart';


class HomeContent extends StatelessWidget {
  var card = new ListView(
      children: <Widget>[
        ListTile(
          title:new Text('吉林省吉林市昌邑区',style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: new Text('技术胖:1513938888'),
          leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
        ),
        new Divider(),
        ListTile(
          title:new Text('北京市海淀区中国科技大学',style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: new Text('胜宏宇:1513938888'),
          leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
        ),
        new Divider(),
        ListTile(
          title:new Text('河南省濮阳市百姓办公楼',style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: new Text('JSPang:1513938888'),
          leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
        ),
        new Divider(),
        
      ],
  );

  GlobalKey<RefreshHeaderState> _headerKey = new GlobalKey<RefreshHeaderState>();
  GlobalKey<RefreshFooterState> _footerKey = new GlobalKey<RefreshFooterState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('sp-list'),),
      body: new EasyRefresh(
        // 修改刷新样式
        refreshHeader: MaterialHeader(
            key: _headerKey,
        ),
        // refreshFooter: MaterialFooter(
        //     key: _footerKey,
        // ),
        child: buildListView(),
        onRefresh: () async{
          // ....
        },
        loadMore: () async {
          // ....
        },
      ),
    );
  }

  // 自定义生成 列表部件
  Widget buildListView() {
    // 定义一个常量
    final  lists = new List<String>.generate(100, (i)=> "Item $i");
    // ListView的构造函数需要一次创建所有项目，
    // ListView.builder的构造函将在列表项滚动到屏幕上时创建该列表项。
    return new ListView.builder(
      itemCount: lists.length,
      itemBuilder: (context, index){
        return new InkWell(
          child: new Column(
              children: <Widget>[
                new ListTile(
                  // https://hezhico.github.io/2019/05/02/test/cyq.jpeg
                  // leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
                  leading: new CircleAvatar(
                    backgroundImage: new NetworkImage('https://hezhico.github.io/2019/05/02/test/cyq.jpeg'),
                    radius: 30.0,
                  ),
                  title: new Text('${lists[index]}'),
                  subtitle: new Text('sp-联系电话-17557283492'),
                ),
                new Divider(), // 下划线 
              ],
            ),
          onTap: (){
            print(lists[index]);
            Application.router.navigateTo(context,"/detailsList?id=${lists[index]}&name='chengyuqi",transition: TransitionType.inFromRight);
          },
        );
      },
    );
  }
}