import 'package:flutter/material.dart';
import 'package:flutter_sample/bookshelf_pager.dart';
import 'package:flutter_sample/graph.dart';
import 'package:flutter_sample/home.dart';
import 'package:flutter_sample/theme.dart';
import 'package:flutter_sample/ui/select_bookshelf_container.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

enum Page { home, bookshelf, graph, setting }

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  int _page = 0;
  bool _shouldShowFAB = true;
  bool _shouldShowSelectBookshelf = false;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(initialPage: _page, keepPage: true);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,
        title: _shouldShowSelectBookshelf
            ? new SelectBookshelfContainer()
            : new Image.asset('assets/logo.png'),
      ),
      body: new PageView(
        physics: new NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            this._shouldShowFAB = page == Page.home.index;
            this._shouldShowSelectBookshelf = page == Page.bookshelf.index;
            this._page = page;
          });
        },
        children: <Widget>[
          new HomePage(),
          new BookshelfPager(),
          new GraphPage(),
          new HomePage(),
        ],
      ),
      bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              canvasColor: themeData.primaryColor,
              primaryColor: themeData.accentColor,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          child: new BottomNavigationBar(
              currentIndex: _page,
              type: BottomNavigationBarType.fixed,
              onTap: (int page) {
                this._pageController.jumpToPage(page);
              },
              items: [
                new BottomNavigationBarItem(
                    icon: new Image.asset('assets/ic_home_24.png',
                        color: _page == Page.home.index
                            ? themeData.accentColor
                            : Colors.white,
                        height: 32),
                    title: new Text("ホーム")),
                new BottomNavigationBarItem(
                    icon: new Image.asset('assets/ic_bookstand_24.png',
                        color: _page == Page.bookshelf.index
                            ? themeData.accentColor
                            : Colors.white,
                        height: 32),
                    title: new Text("本棚")),
                new BottomNavigationBarItem(
                    icon: new Image.asset('assets/ic_graph_24.png',
                        color: _page == Page.graph.index
                            ? themeData.accentColor
                            : Colors.white,
                        height: 32),
                    title: new Text("読書グラフ")),
                new BottomNavigationBarItem(
                    icon: new Image.asset('assets/ic_setting_24.png',
                        color: _page == Page.setting.index
                            ? themeData.accentColor
                            : Colors.white,
                        height: 32),
                    title: new Text("設定"))
              ])),
      floatingActionButton: _shouldShowFAB
          ? FloatingActionButton(
              backgroundColor: themeData.accentColor,
              onPressed: () {},
              // tooltip: 'Increment',
              child: new Icon(Icons.add),
            )
          : null, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
