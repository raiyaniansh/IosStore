import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:iosstore/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  HomeProvider? homeProvider;
  @override
  Widget build(BuildContext context) {
    homeProvider = Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.only(left: 10, bottom: 10),
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              color: CupertinoColors.lightBackgroundGray,
              child: Text("Shopping Cart",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
              child: Container(
                height: 640,
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Icon(CupertinoIcons.person_alt,color: CupertinoColors.secondaryLabel,),
                        SizedBox(width: 10,),
                        Text("Name",style: TextStyle(color: CupertinoColors.secondaryLabel),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: CupertinoColors.secondaryLabel,
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(CupertinoIcons.mail_solid,color: CupertinoColors.secondaryLabel,),
                        SizedBox(width: 10,),
                        Text("Email",style: TextStyle(color: CupertinoColors.secondaryLabel),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: CupertinoColors.secondaryLabel,
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(CupertinoIcons.location_solid,color: CupertinoColors.secondaryLabel,),
                        SizedBox(width: 10,),
                        Text("Location",style: TextStyle(color: CupertinoColors.secondaryLabel),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: CupertinoColors.secondaryLabel,
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(CupertinoIcons.info,color: CupertinoColors.secondaryLabel,),
                        SizedBox(width: 10,),
                        Text("Delivery time",style: TextStyle(color: CupertinoColors.secondaryLabel),),
                        Expanded(child: SizedBox()),
                        Text(" ${homeProvider!.curr.day} ${homeProvider!.curr.month} ${homeProvider!.curr.year}",style: TextStyle(color: CupertinoColors.secondaryLabel),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 200,
                      child: CupertinoDatePicker(onDateTimeChanged: (value) {
                        homeProvider!.chDate(value);
                      },),
                    ),
                    CupertinoListTile(
                      leading: Image.asset("${homeProvider!.p1[0].img}",height: 100,width: 100,),
                      title: Text("${homeProvider!.p1[0].name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                      subtitle: Text("\$ ${homeProvider!.p1[0].price}",style: TextStyle(fontSize: 15,color: CupertinoColors.secondaryLabel)),
                      trailing: Text("\$ ${homeProvider!.p1[0].price}",style: TextStyle(fontSize: 18)),
                    ),
                    CupertinoListTile(
                      leading: Image.asset("${homeProvider!.p1[4].img}",height: 100,width: 100,),
                      title: Text("${homeProvider!.p1[4].name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                      subtitle: Text("\$ ${homeProvider!.p1[4].price}",style: TextStyle(fontSize: 15,color: CupertinoColors.secondaryLabel)),
                      trailing: Text("\$ ${homeProvider!.p1[4].price}",style: TextStyle(fontSize: 18)),
                    ),
                    CupertinoListTile(
                      leading: Image.asset("${homeProvider!.p1[9].img}",height: 100,width: 100,),
                      title: Text("${homeProvider!.p1[9].name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                      subtitle: Text("\$ ${homeProvider!.p1[9].price}",style: TextStyle(fontSize: 15,color: CupertinoColors.secondaryLabel)),
                      trailing: Text("\$ ${homeProvider!.p1[9].price}",style: TextStyle(fontSize: 18)),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Text("Shipping \$200",style: TextStyle(color: CupertinoColors.secondaryLabel),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Text("Tax \$110",style: TextStyle(color: CupertinoColors.secondaryLabel),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Text("Total \$1910",style: TextStyle(fontSize: 20),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
