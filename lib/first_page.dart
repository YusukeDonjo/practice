

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['【キャリア論】登る山を変えるべき時ってあるよね',
    '技術マウントを取るエンジニアさんへの熱いメッセージ',
    'C',
    'C',
    'C',
    'C',
    'C',
    'C',
    'C',
    'C',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
            '凡才プログラマーKBOY'
        ,style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.ondemand_video_rounded),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24),
        ],
      ),
      body: Container(
        color: Colors.black,
        child:ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network('https://pbs.twimg.com/media/E3hOnOOVUA4rMTL.jpg',),
                    const SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Text(entries[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  height: 1.1,
                                  fontSize: 16
                              ),
                            maxLines: 3,
                          ),
                          const Text(
                          '1053回再生 5日前',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        )
      ),
        );
  }
}
