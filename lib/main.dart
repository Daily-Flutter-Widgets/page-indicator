import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color mainColor = const Color(0xFF2631C1);
  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true);

  List<String> imagesUrl = [
    "https://wisato.id/wp-content/uploads/2019/02/Pianemo-Instagram@elisabeth.mita_.jpg",
    "https://cdn0-production-images-kly.akamaized.net/2Zm1l5NnGy_1TTg375C8mZAjHlY=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3381232/original/093731900_1613710632-Most-Colorful-Natural-Wonders-011.jpg",
    "https://cdn0-production-images-kly.akamaized.net/MuG0kevh0anpYLDIAizLK-bRv-Y=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/915283/original/050372600_1435732614-Hitsujiyama_park__Jepang.png",
    "https://divedigital.id/wp-content/uploads/2020/06/polynesia-3021072_1280.jpg",
    "https://image.freepik.com/free-photo/asian-woman-wearing-thai-culture-traditional-rice-terrace-ban-pa-bong-piang-chiang-mai-thailand_335224-1060.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smooth Page Indicator"),
        backgroundColor: mainColor,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            child: PageView.builder(
              controller: _pageController,
              itemCount: imagesUrl.length,
              itemBuilder: (_, index) => Container(
                height: 300,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        imagesUrl[index],
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Worm Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: WormEffect(
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Expanding Dots Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: ExpandingDotsEffect(
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Jumping Dot Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: JumpingDotEffect(
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
      
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Jumping Dot Effect (vertical offset: 20)",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: JumpingDotEffect(
                  verticalOffset: 20,
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Scrolling Dots Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: ScrollingDotsEffect(
                    activeDotColor: mainColor), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Swap Effect",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect: SwapEffect(
                  activeDotColor: mainColor,
                  type:SwapType.yRotation, 
                ), // your preferred effect
                onDotClicked: (index) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
