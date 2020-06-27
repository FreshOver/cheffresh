import 'package:cheffresh/core/view_models/settings/settings_view_model.dart';
import 'package:cheffresh/ui/shared/app_bar.dart';
import 'package:cheffresh/ui/shared/colors.dart';
import 'package:cheffresh/ui/views/base/base_view.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SettingsViewModel>(
        model: SettingsViewModel(),
        builder:
            (BuildContext context, SettingsViewModel model, Widget child) =>
                Scaffold(
                  appBar: defaultAppBar(
                    title: 'Settings',
                  ),
                  body: model.busy
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView(
                          children: ListTile.divideTiles(
                              color: PRIMARY_COLOR,
                              context: context,
                              tiles: <Widget>[
                                ListTile(
                                  title: Text(
                                    'About us',
                                  ),
                                  onTap: () {},
                                ),
                                ListTile(
                                  title: Text(
                                    'Logout',
                                  ),
                                  onTap: () {},
                                ),
                              ]).toList(),
                        ),
                ));
  }
}
