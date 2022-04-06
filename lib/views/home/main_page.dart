import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => return
}

class MainPageState extends State<MainPage>{
  static const platform = const MethodChannel('com.imooc/navigator');
  Future<String> _startCaptureActivity() async{
    var result;
    try{
      //跳转到原生界面并返回数据
      result = await platform.invokeMethod('start_qr_code', {
        'params':{'user_name': 'flutter', 'request_code': 0}
      });
    }on PlatformException catch(e){}

    //打印扫码结果
    return result;
  }

  Widget _getTitleWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          child: SizedBox(
            width: 22,
            height: 22,
            child: Image.asset(QRCODE_ICON),
          ),
          onTapDown: (TapDownDetails details){
            _startCaptureActivity(),
          },
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 8),
              child: GestureDetector(
                onTapDown: (TapDownDetails details){
                  //进入搜索页面
                  Navigator.push(
                      context,
                      new PageRouteBuilder(pageBuilder: (BuildContext context,
                         Animation<double> animation,
                         Animation<double> secondaryAnimation {
                        //跳转的路由对象
                        return SearchPag
                      }
                         ))
                },
              ),
            ))
      ],
    )
  }
}