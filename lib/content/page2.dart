import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:isight/pages/made_by.dart';

class PageTwo extends StatelessWidget {
  // const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(203, 105, 193, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.0),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Braille Script',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'OpenSans',
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 5.0,
                left: 20.0,
                right: 30.0,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/pictures/braille.png'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Braille Script is a tactile code enabling',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' blind and visually impaired ',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(23, 24, 31, 1),
                          ),
                        ),
                        TextSpan(
                          text:
                          'people to read and write by touch, with various combinations of raised dots representing the',
                        ),
                        TextSpan(
                          text: ' alphabet, words, punctuation and numbers. ',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(23, 24, 31, 1),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Column(
            children: [
              Container(
                padding: new EdgeInsets.only(
                  bottom: 10.0,
                  left: 20.0,
                  right: 30.0,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color.fromRGBO(23, 24, 31, 1),
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Braille Script Includes:',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'OpenSans',
                              decoration: TextDecoration.none,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 5.0,
                          left: 20.0,
                          right: 5.0,
                          bottom: 10.0,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '- Eight-dot braille \n- Letters \n- Formatting \n- Punctuation \n- Contractions',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'OpenSans',
                              decoration: TextDecoration.none,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(108, 114, 203, 1), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: _launchURL,
            child: Text('Know more about Braille Script'),
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10.0,
                height: 10.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 15.0,
                height: 15.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 10.0,
                height: 10.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
          MadeBy()
        ],
      ),
    );
  }

  _launchURL() async {
    final Uri _url = Uri.parse('https://en.wikipedia.org/wiki/Braille');
    if (await canLaunchUrl(_url)) {
      await launchUrl;
    } else {
      throw 'Could not launch $_url';
    }
  }
}
