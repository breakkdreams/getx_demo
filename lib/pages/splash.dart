import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation _animation;

  void initState(){
    super.initState();
    //创建动画控制器
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 5000),lowerBound: 0.9,upperBound: 1.0);
    _animation = Tween(begin: 1.0,end: 1.0).animate(_animationController);
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
      // //这边的添加动画的监听，当动画5秒后的状态是completed完成状态，则执行这边的代码，跳转到登录页，或者其他页面 //
      //   Get.toNamed('/main');
      } });
    _animationController.forward();
  }

  @override void dispose(){
    _animationController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _animationController,
        child: ConstrainedBox(
          //让他的child充满整个屏幕
            constraints: BoxConstraints.expand(),
            child: Stack(
              //
              children: <Widget>[
                Container(
                  height:double.infinity,
                  //这边放一张图用于显示5秒的底图，这张图和上面的图一样，这样就有连贯起来的效果了
                  child:Image.asset(
                      'assets/images/hb.png',
                      scale:1.0,
                      fit:BoxFit.fill
                  ),
                ),
                Positioned(
                  top: 50.0,
                  right: 20.0,
                  child: FlatButton(
                    color: Colors.green,
                    highlightColor: Colors.blue,
                    colorBrightness: Brightness.dark,
                    splashColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Text("跳过"),
                    onPressed: (){
                      _animationController.dispose();
                      Get.toNamed('/main');
                    },
                  ),
                )
              ],
            )
        )
    );
  }
}
