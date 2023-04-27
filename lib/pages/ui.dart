import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReaderPage extends StatefulWidget {
  const ReaderPage({Key? key}) : super(key: key);

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {

  String postText = "Oops... #Flutter SearchBar made an appearance in @FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.";

  List<TextSpan> getSpans(String text) {
    List<TextSpan> spans = [];

    // split the text by spaces
    List<String> words = text.split(' ');

    // iterate over each word
    for (String word in words) {
      if (word.startsWith("#")) {
        // apply a blue color to hashtags
        spans.add(TextSpan(
          text: word + " ",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
          recognizer: TapGestureRecognizer()..onTap = () {
            // handle tap on hashtag
            print("Tapped on hashtag: $word");
          },
        ));
      } else if (word.startsWith("@")) {
        // apply a blue color to mentions
        spans.add(TextSpan(
          text: word + " ",
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
          recognizer: TapGestureRecognizer()..onTap = () {
            // handle tap on mention
            print("Tapped on mention: $word");
          },
        ));
      } else {
        // apply default text style
        spans.add(TextSpan(
          text: word + " ",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ));
      }
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    TextSpan textSpan = TextSpan(children: getSpans(postText));
    Text richText = Text.rich(textSpan);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Icon(Icons.arrow_back, size: 25,),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Thread", style: TextStyle(fontSize: 25),),
                  )
                ],
              ),
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                  color: Color(0xffeaeef1)
              ),
              child: SizedBox(
                height: 1,
                width: double.infinity,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 720,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color(0xffeaeef1),
                              borderRadius: BorderRadius.circular(55)
                          ),
                          child: const SizedBox(
                            height: 55,
                            width: 55,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 150),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Mike Rydstorm 💙",style: TextStyle(fontWeight: FontWeight.w700),),
                              Text("@RydMike", style: TextStyle(color: Color(0xff667681)),),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert, color: Color(0xffb9cad2),)
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: richText
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/images/themeImg.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10, bottom: 10, top: 10),
                    child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                color: Color(0xff667681),
                                fontSize: 17
                            ),
                            children: [
                              TextSpan(text: "8:49 AM•24 Apr 23•"),
                              TextSpan(text: "16K", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                              TextSpan(text: " Views")
                            ]
                        )
                    ),
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color(0xffeaeef1)
                    ),
                    child: SizedBox(
                      height: 1,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130, top: 10, bottom: 10, left: 10),
                    child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                color: Color(0xff667681),
                                fontSize: 17
                            ),
                            children: [
                              TextSpan(text: "16",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                              TextSpan(text: " Retweets"),
                              TextSpan(text: "\t1",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                              TextSpan(text: " Quote"),
                              TextSpan(text: "\t153",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                              TextSpan(text: " Likes")
                            ]
                        )
                    ),
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color(0xffeaeef1)
                    ),
                    child: SizedBox(
                      height: 1,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(image: AssetImage("assets/icons/home.png"), height: 20, width: 20, fit: BoxFit.fill,),
                        Image(image: AssetImage("assets/icons/retweetStroke.png"), height: 20, width: 20, fit: BoxFit.fill,),
                        Image(image: AssetImage("assets/icons/heartStroke.png"), height: 20, width: 20, fit: BoxFit.fill,),
                        Image(image: AssetImage("assets/icons/bookmarks.png"), height: 20, width: 20, fit: BoxFit.fill,),
                        Image(image: AssetImage("assets/icons/twitterShare.png"), height: 20, width: 20, fit: BoxFit.fill,color: Color(0xff5b6c77),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color(0xffeaeef1),
                              borderRadius: BorderRadius.circular(55)
                          ),
                          child: const SizedBox(
                            height: 55,
                            width: 55,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 150),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Mike Rydstorm 💙",style: TextStyle(fontWeight: FontWeight.w700),),
                              Text("@RydMike", style: TextStyle(color: Color(0xff667681)),),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert, color: Color(0xffb9cad2),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /// add comment
            Padding(
                padding: EdgeInsets.only(),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 200, left: 10),
                    child: Text("Tweet your reply", style: TextStyle(fontSize: 20, color: Color(0xff667681),),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image(image: AssetImage("assets/icons/camera.png"), height: 20, width: 20, color: Colors.blue,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}