import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:iosstore/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              child: Text("Cupertino Store",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => CupertinoListTile(
                  leading: Image.asset("${homeProvider!.p1[index].img}",height: 100,width: 100,),
                  title: Text("${homeProvider!.p1[index].name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                  subtitle: Text("\$ ${homeProvider!.p1[index].price}",style: TextStyle(fontSize: 15,color: CupertinoColors.secondaryLabel)),
                  trailing: Icon(CupertinoIcons.add_circled),
                ),
                itemCount: homeProvider!.p1.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
