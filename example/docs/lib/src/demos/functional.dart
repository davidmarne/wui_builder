import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// Functional components are simply functions that
// return VNodes, rather than writing classes.
//
// You can use HOCs in the functional package to get
// create functional components with lifecycle or state.

// tweet is a function that returns a VNode that renders
// a bulma media object
VNode tweet() => Varticle()
  ..className = 'media'
  ..children = [
    avatar(),
    tweetBody(),
  ];

VNode avatar() => Vfigure()
  ..className = 'media-left'
  ..children = [
    Vp()
      ..className = 'image is-64x64'
      ..children = [
        VImageElement()
          ..src =
              'https://pbs.twimg.com/profile_images/585565077207678977/N_eNSBXi_400x400.jpg'
      ]
  ];

VNode tweetBody() => Vdiv()
  ..className = 'media-content'
  ..children = [
    tweetContent(),
    tweetIcons(),
  ];

VNode tweetContent() => Vdiv()
  ..className = 'content'
  ..children = [
    Vp()
      ..children = [
        Vstrong()..text = 'KANYE WEST',
        Vsmall()..text = ' @kanyewest',
        Vdiv()
          ..text = 'I\'m not even gon lie to you. I love me so much right now'
      ]
  ];

VNode tweetIcons() => Vnav()
  ..className = 'level is-mobile'
  ..children = [
    Vdiv()
      ..className = 'level-left'
      ..children = [
        tweetIcon('reply'),
        tweetIcon('retweet'),
        tweetIcon('heart'),
      ]
  ];

VNode tweetIcon(String icon) => Va()
  ..className = 'level-item'
  ..children = [
    Vspan()
      ..className = 'icon is-small'
      ..children = [Vi()..className = 'fa fa-$icon']
  ];
