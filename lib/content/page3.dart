import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:isight/pages/made_by.dart';

class PageThree extends StatelessWidget {
  // const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(108, 114, 203, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.0),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Eyesight Training',
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
                    child: Image.asset('assets/pictures/visionskills.png'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Blind & Low Vision Eyesight Training,',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Light House Team ',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(23, 24, 31, 1),
                          ),
                        ),
                        TextSpan(
                          text:
                          'of teachers and specialists who are eager to help others (many of whom are low vision/blind themselves) are  highly trained in ',
                        ),
                        TextSpan(
                          text: 'Blind & Low Vision Eyesight Training.',
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
                  color: Color.fromRGBO(203, 105, 193, 1),
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Training Includes:',
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
                            '- Immersion Training  \n- Changing Vision \n- Enhancing the way of Life \n- Orientation and Mobility  \n- Essential Life Skills',
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
              primary: Color.fromRGBO(23, 24, 31, 1), // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: _launchURL,
            child: Text('Know more about the Training'),
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
              )
            ],
          ),
          MadeBy(),
        ],
      ),
    );
  }

  _launchURL() async {
    final Uri _url = Uri.parse('https://lighthouse-sf.org/programs/skills/');
    if (await canLaunchUrl(_url)) {
      await launchUrl;
    } else {
      throw 'Could not launch $_url';
    }
  }
}
