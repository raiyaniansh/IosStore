import 'package:flutter/cupertino.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:iosstore/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  HomeProvider? homeProvider;
  @override
  Widget build(BuildContext context) {
    homeProvider = Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CupertinoSearchTextField(),
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
