import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDiy extends StatelessWidget {
  final List swiperDataList;
  SwiperDiy({Key key,this.swiperDataList}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final List swiperDataList = ['images/banner1.png','images/banner2.png','images/banner3.png'];
    return Container(
      height: 250.0,
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
            return new Image.asset('${swiperDataList[index]}', fit: BoxFit.fill,);
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
