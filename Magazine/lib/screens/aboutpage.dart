import 'package:flutter_magazine/widgets/nbox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURLFACEBOOK() async {
      const url = 'hhttps://web.facebook.com/joe.j.maphosa/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchTwitter() async {
      const url = 'https://twitter.com/joe_virus7/';

      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _lanchInsta() async {
      const url = 'https://www.instagram.com/joevirus/';

      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }


    return Scaffold(
      backgroundColor: mC,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: NMButton(
                          icon: Icons.arrow_back,
                        )),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.exclamationCircle),
                      onTap: () {},
                    ),
                  ],
                ),
                AvatarImage(),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'CONNECT',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Center(
                      child: Text(
                        ' About App ',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Uzuri',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(height: 15),
                Flexible(
                  child: Text(
                    "This is mock app for Uzuri connect. At UZURI we are building a future where everyone everywhere has digital access to local beauty service providers through our beauty marketplace.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 9),
                Center(
                  child: Text(
                    'CONTACT US',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 9),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        child: NMButton(icon: FontAwesomeIcons.facebookF),
                        onTap: () async {
                          _launchURLFACEBOOK();
                        }),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.twitter),
                      onTap: () async {
                        _launchTwitter();
                      },
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.instagram),
                      onTap: () async {
                        _lanchInsta();
                      },
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.envelope),
                      onTap: () async {
                        _lanchemail();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),

                SizedBox(height: 2),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.17,
            minChildSize: 0.07,
            maxChildSize: 0.4,
            builder: (BuildContext context, scroll) {
              return Container(
                decoration: nMbox,
                child: ListView(
                  controller: scroll,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 1,
                            ),
                            child: Icon(Icons.share, color: fCL),
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Swipe Up To Share This App',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 35),
                          Container(
                            width: 225,
                            padding: EdgeInsets.all(10),
                            decoration: nMboxInvert,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  child: Icon(FontAwesomeIcons.facebookF,
                                      color: fCL),
                                  onTap: () {
                                    final RenderBox box =
                                    context.findRenderObject();
                                    Share.share(
                                        "Check Out Looks https://uzuriapi.el.r.appspot.com/looks ",
                                        subject:
                                        "https://uzuriapi.el.r.appspot.com/looks",
                                        sharePositionOrigin:
                                        box.localToGlobal(Offset.zero) &
                                        box.size);
                                  },
                                ),
                                InkWell(
                                  child: Icon(FontAwesomeIcons.twitter,
                                      color: fCL),
                                  onTap: () {
                                    final RenderBox box =
                                    context.findRenderObject();
                                    Share.share(
                                        "Check Out Looks ! https://uzuriapi.el.r.appspot.com/looks",
                                        subject:
                                        "https://uzuriapi.el.r.appspot.com/looks",
                                        sharePositionOrigin:
                                        box.localToGlobal(Offset.zero) &
                                        box.size);
                                  },
                                ),
                                InkWell(
                                  child: Icon(FontAwesomeIcons.instagram,
                                      color: fCL),
                                  onTap: () {
                                    final RenderBox box =
                                    context.findRenderObject();
                                    Share.share(
                                        "Check Out Looks   ! https://uzuriapi.el.r.appspot.com/looks",
                                        subject:
                                        "https://uzuriapi.el.r.appspot.com/looks",
                                        sharePositionOrigin:
                                        box.localToGlobal(Offset.zero) &
                                        box.size);
                                  },
                                ),
                                InkWell(
                                  child: Icon(FontAwesomeIcons.whatsapp,
                                      color: fCL),
                                  onTap: () {
                                    final RenderBox box =
                                    context.findRenderObject();
                                    Share.share(
                                      "Check Out https://uzuriapi.el.r.appspot.com/looks ",
                                      subject: "Share This App",
                                      sharePositionOrigin:
                                      box.localToGlobal(Offset.zero) &
                                      box.size,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          FaIcon(
                            FontAwesomeIcons.copy,
                            color: Colors.yellowAccent,
                          ),
                          InkWell(
                            child: Text(
                              'Copy link',
                            ),
                            onTap: () async {
                              Clipboard.setData(new ClipboardData(
                                  text:
                                  "Check Out Fashion https://uzuriapi.el.r.appspot.com/fashionPromotions"));
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Colors.yellow.shade200, size: 20),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 3),
            Text(
              category,
            ),
          ],
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;
  const NMButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: nMbox,
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Flexible(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/posters/'), //Please add image
                // image: new NetworkImage("https://i.imgur.com/KyqiHgK.jpg")
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*LikeButton(
    size: buttonSize,
      circleColor:
        CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
          bubblesColor: BubblesColor(
          dotPrimaryColor: Color(0xff33b5e5),
        dotSecondaryColor: Color(0xff0099cc),
        ),
      likeBuilder: (bool isLiked) {
    return Icon(
     Icons.home,
      color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
      size: buttonSize,
      );
    },
    likeCount: 665,
     countBuilder: (int count, bool isLiked, String text) {
      var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
      Widget result;
    if (count == 0) {
    result = Text(
    "love",
    style: TextStyle(color: color),
  );
  } else
  result = Text(
  text,
    style: TextStyle(color: color),
    );
  return result;
  },
  ),*/