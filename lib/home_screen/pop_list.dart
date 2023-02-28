import 'package:flutter/material.dart';
import 'package:movies_app/model/PopularResponse.dart';
import 'package:movies_app/model/Results.dart';
import 'package:movies_app/model/api_mangement.dart';

class CategoryDetalis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Results results;
    return Container(
      child: FutureBuilder<PopularResponse>(
          future: ApiManger.getPopular(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text('something went wrong${snapshot.error.toString()}'),
              );
            }

            return Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Text('${snapshot.data?.results?[index].overview}');
                },
                itemCount: snapshot.data?.results?.length ?? 0,
              ),
            );
          }),
    );
  }
}
