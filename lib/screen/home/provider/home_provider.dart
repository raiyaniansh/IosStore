import 'package:flutter/cupertino.dart';
import 'package:iosstore/screen/home/modal/modal.dart';

class HomeProvider extends ChangeNotifier
{
  DateTime curr=DateTime.now();

  List<product> p1=[
    product(name: 'glasses1',price: '200',img: 'assets/images/g1.jpg'),
    product(name: 'glasses2',price: '400',img: 'assets/images/g2.jpg'),
    product(name: 'glasses3',price: '600',img: 'assets/images/g3.jpg'),
    product(name: 'glasses4',price: '900',img: 'assets/images/g4.jpg'),
    product(name: 'Shoose',price: '500',img: 'assets/images/g5.jpg'),
    product(name: 'Shoose2',price: '650',img: 'assets/images/g6.jpg'),
    product(name: 'Shoose3',price: '1000',img: 'assets/images/g7.jpg'),
    product(name: 'Tshirt',price: '600',img: 'assets/images/g8.jpg'),
    product(name: 'Shoose4',price: '800',img: 'assets/images/g9.jpg'),
    product(name: 'Shoose5',price: '900',img: 'assets/images/g10.jpg'),
  ];

  void chDate(value)
  {
    curr=value;
    notifyListeners();
  }
}