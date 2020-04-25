import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/theme/theme_bloc.dart';

import 'hyperlink.dart';

class Attribution extends StatefulWidget {
  Attribution();

  @override
  _AttributionState createState() => _AttributionState();
}

class _AttributionState extends State<Attribution> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(builder: (context, theme) {
      var attribution = <Widget>[
        Text(
          'Map tiles: ',
          style: theme.textTheme.subtitle,
        ),
        Hyperlink(url: 'https://stamen.com/', text: 'Stamen Design '),
        Text(
          '(',
          style: theme.textTheme.subtitle,
        ),
        Hyperlink(
            url: 'https://creativecommons.org/licenses/by/3.0/',
            text: 'CC BY 3.0'),
        Text(
          ') Data: ',
          style: theme.textTheme.subtitle,
        ),
        Hyperlink(
            url: 'https://www.openstreetmap.org/', text: 'OpenStreetMap '),
        Text(
          '(',
          style: theme.textTheme.subtitle,
        ),
        Hyperlink(url: 'https://www.openstreetmap.org/copyright', text: 'ODbL'),
        Text(
          ') ',
          style: theme.textTheme.subtitle,
        ),
      ];
      return Align(
        alignment: Alignment.bottomRight,
        child: Opacity(
            opacity: 0.9,
            child: Container(
              color: theme.backgroundColor,
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: attribution),
            )),
      );
    });
  }
}
