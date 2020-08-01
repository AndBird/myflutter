import 'package:flutter/material.dart';
import 'package:myflutter/tools/print.dart';
import 'package:myflutter/widgets/page_scaffold.dart';
import 'package:myflutter/test_widgets/text.dart';
import 'package:myflutter/routes/new_route.dart';

class MainFirstPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MainFirstPageState();
  }

}

class _MainFirstPageState extends State<MainFirstPage>{
  final String TAG = "_MainFirstPageState";

  /*var child = ListView(
    children: <Widget>[
      ExpansionTile(
        title: Text("第一个Flutter应用"),
        children: _generateItem(context, [
          PageInfo("路由传值", (ctx) => RouterTestRoute()),
        ]),
      ),
      ExpansionTile(
        title: Text("基础组件"),
        children: _generateItem(context, [
          PageInfo("文本、字体样式", (ctx) => TextRoute()),
          PageInfo("按钮", (ctx) => ButtonRoute()),
          PageInfo("图片伸缩", (ctx) => ImageAndIconRoute()),
          PageInfo("单选开关和复选框", (ctx) => SwitchAndCheckBoxRoute()),
          PageInfo("进度条", (ctx) => ProgressRoute()),
        ]),
      ),
      ExpansionTile(
        title: Text("布局类组件"),
        children: _generateItem(context, [
          PageInfo("Column居中", (ctx) => CenterColumnRoute()),
          PageInfo("表格布局", (ctx) => TableRoute()),
          PageInfo("对齐及相对定位", (ctx) => AlignRoute()),
        ]),
      ),
      ExpansionTile(
        title: Text("容器类组件"),
        children: _generateItem(context, [
          PageInfo("填充Padding", (ctx) => PaddingTestRoute()),
          PageInfo("尺寸限制类容器", (ctx) => SizeConstraintsRoute(),
              withScaffold: false),
          PageInfo("DecoratedBox", (ctx) => DecoratedBoxRoute()),
          PageInfo("Scaffold、TabBar、底部导航", (ctx) => ScaffoldRoute(), withScaffold: false),
        ]),
      ),
      ExpansionTile(
        title: Text("功能性组件"),
        children: _generateItem(context, [
          PageInfo("数据共享(inheritedWidget)",
                  (ctx) => InheritedWidgetTestRoute()),
          PageInfo("跨组件状态管理(Provider)", (ctx) => ProviderRoute()),
          PageInfo("颜色和MaterialColor", (ctx) => ColorRoute(),
              withScaffold: false),
          PageInfo("主题-Theme", (ctx) => ThemeTestRoute(),
              withScaffold: false),
          PageInfo("FutureBuilder和StreamBuilder",
                  (ctx) => FutureAndStreamBuilderRoute()),
          PageInfo("对话框", (ctx) => DialogRoute()),
        ]),
      ),
      ExpansionTile(
        title: Text("事件处理与通知"),
        children: _generateItem(context, [
          PageInfo("通知(Notification)", (ctx) => NotificationRoute()),
        ]),
      ),
      ExpansionTile(
        title: Text("自定义组件"),
        children: _generateItem(context, [
          PageInfo("GradientButton", (ctx) => GradientButtonRoute()),
          PageInfo("Material APP", (ctx) => ScaffoldRoute(),
              withScaffold: false),
          PageInfo("旋转容器：TurnBox", (ctx) => TurnBoxRoute()),
          PageInfo("CustomPaint", (ctx) => CustomPaintRoute()),
          PageInfo(
              "自绘控件：圆形渐变进度条", (ctx) => GradientCircularProgressRoute()),
          PageInfo("原始指针事件", (ctx) => PointerRoute()),
          PageInfo("自定义UI框架", (ctx) => CustomHome()),
          PageInfo("测试", (ctx) => TestRoute()),
        ]),
      ),
      ExpansionTile(
        title: Text("Flutter原理"),
        children: _generateItem(context, [
          PageInfo("图片加载原理与缓存", (ctx) => ImageInternalTestRoute()),
        ]),
      ),
      ExpansionTile(
        title: Text("动画"),
        children: _generateItem(context, [
          PageInfo("放大动画-原始版", (ctx) => ScaleAnimationRoute()),
          PageInfo(
              "放大动画-AnimatedWidget版", (ctx) => ScaleAnimationRoute1()),
          PageInfo(
              "放大动画-AnimatedBuilder版", (ctx) => ScaleAnimationRoute2()),
          PageInfo(
              "放大动画-GrowTransition版", (ctx) => GrowTransitionRoute()),
          PageInfo("Hero动画", (ctx) => HeroAnimationRoute()),
          PageInfo("交织动画(Stagger Animation)", (ctx) => StaggerRoute()),
          PageInfo("动画切换组件(AnimatedSwitcher)",
                  (ctx) => AnimatedSwitcherCounterRoute()),
          PageInfo("动画切换组件高级用法", (ctx) => AnimatedSwitcherRoute()),
        ]),
      ),
      ExpansionTile(
        title: Text("包与插件"),
        children: _generateItem(context, [
          PageInfo("相机", (ctx) => CameraExampleHome(),
              withScaffold: false),
          PageInfo(
              "PlatformView示例（webview）", (ctx) => PlatformViewRoute(),
              padding: false),
        ]),
      ),
    ],
  );*/

  List<Widget> _generateItem(BuildContext context, List<PageInfo> children) {
    return children.map<Widget>((page) {
      return ListTile(
        title: Text(page.title),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => _openPage(context, page),
      );
    }).toList();
  }

  void _openPage(BuildContext context, PageInfo page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (!page.withScaffold) {
        return page.builder(context);
      }
      return PageScaffold(
        title: page.title,
        body: page.builder(context),
        padding: page.padding,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var child = ListView(
      children: <Widget>[
        ExpansionTile(
          title: Text("第一个Flutter应用"),
          children: _generateItem(context, [
            PageInfo("路由传值", (ctx) => NewRoute()),
          ]),
        ),
        ExpansionTile(
          title: Text("基础组件"),
          children: _generateItem(context, [
            PageInfo("文本、字体样式", (ctx) => TextRoute()),
            //PageInfo("按钮", (ctx) => ButtonRoute()),
            //PageInfo("图片伸缩", (ctx) => ImageAndIconRoute()),
            //PageInfo("单选开关和复选框", (ctx) => SwitchAndCheckBoxRoute()),
            //PageInfo("进度条", (ctx) => ProgressRoute()),
          ]),
        ),
      ],
    );

    return child;
  }




  @override
  void initState() {
    super.initState();
    Log.log(TAG, "initState");
  }

  @override
  void didUpdateWidget(MainFirstPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    Log.log(TAG, "didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    Log.log(TAG, "deactive");
  }

  @override
  void dispose() {
    super.dispose();
    Log.log(TAG, "dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    Log.log(TAG, "reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Log.log(TAG,"didChangeDependencies");
  }

}




