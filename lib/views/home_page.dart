import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/views/html_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var allUrls = [
    {"NAME": "HTML", "URL": "images/html.jpeg"},
    {
      "NAME": "JS",
      "URL": "images/js.jpeg",
    },
    {"NAME": "HTML", "URL": "images/html.jpeg"},
    {
      "NAME": "RANDOM",
      "URL": "images/js.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 280,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/tensu.jpg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Tinsae Hailu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 75,
                bottom: 0,
                left: 25,
                right: 25,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/programming.jpeg")),
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(13)),
                  child: const Center(
                    child: Text(
                      "Be A Best Developer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            "Top Catagories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: myContainer(
                          name: allUrls[index]["NAME"],
                          url: allUrls[index]["URL"],
                          onTap: onTap),
                    ))),
      ],
    )));
  }

  Widget myContainer({
    String? url,
    String? name,
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 170,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, offset: Offset(3, 5), blurRadius: 2)
            ],
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(url!)),
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            name!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }

  void onTap() {
    Get.to(() => HtmlPage());
  }
}
