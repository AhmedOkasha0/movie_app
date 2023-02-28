import 'package:flutter/material.dart';
import 'package:movies_app/model/PopularResponse.dart';
import 'package:movies_app/model/api_mangement.dart';

class HomeMenu extends StatefulWidget {
  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PopularResponse>(
      future: ApiManger.getPopular(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              children: [
                Text('Error'),
                ElevatedButton(onPressed: () {}, child: Text('Refresh')),
              ],
            ),
          );
        }
        if (snapshot.hasError) {
          return Column(
            children: [
              Text('Error'),
              ElevatedButton(onPressed: () {}, child: Text('Refresh')),
            ],
          );
        }
        var sourceList = snapshot.data?.results ?? [];
        return ListView.builder(
          itemBuilder: (context, index) {
            return Text(sourceList[index].originalTitle ?? '');
          },
          itemCount: sourceList.length,
        );
      },
    );
  }
}
