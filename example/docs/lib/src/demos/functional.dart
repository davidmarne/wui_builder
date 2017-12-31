import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

// Functional components are simply functions that
// return VNodes, rather than writing classes.
//
// You can use HOCs in the functional package to get
// create functional components with lifecycle or state.

// tweet is a function that returns a VNode that renders
// a bulma media object
VNode tweet() => new Varticle()
  ..className = 'media'
  ..children = [
    trumpDumbFace(),
    tweetBody(),
  ];

VNode trumpDumbFace() => new Vfigure()
  ..className = 'media-left'
  ..children = [
    new Vp()
      ..className = 'image is-64x64'
      ..children = [
        new VImageElement()
          ..src =
              'http://dqyfp485dhq1yoa92v2k6m13.wpengine.netdna-cdn.com/wp-content/uploads/2015/11/when-he-said-that-it-was-all-very-strange-500x376.png'
      ]
  ];

VNode tweetBody() => new Vdiv()
  ..className = 'media-content'
  ..children = [
    tweetContent(),
    tweetIcons(),
  ];

VNode tweetContent() => new Vdiv()
  ..className = 'content'
  ..children = [
    new Vp()
      ..children = [
        new Vstrong()..text = 'Donald J. Trump',
        new Vsmall()..text = ' @realDonaldTrump',
        new Vdiv()..text = 'Despite the constant negative press covfefe'
      ]
  ];

VNode tweetIcons() => new Vnav()
  ..className = 'level is-mobile'
  ..children = [
    new Vdiv()
      ..className = 'level-left'
      ..children = [
        tweetIcon('reply'),
        tweetIcon('retweet'),
        tweetIcon('heart'),
      ]
  ];

VNode tweetIcon(String icon) => new Va()
  ..className = 'level-item'
  ..children = [
    new Vspan()
      ..className = 'icon is-small'
      ..children = [new Vi()..className = 'fa fa-$icon']
  ];
