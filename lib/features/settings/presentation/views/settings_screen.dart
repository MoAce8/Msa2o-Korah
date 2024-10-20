import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/settings/presentation/views/widgets/settings_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Bank Settings'),
        centerTitle: true,
      ),
      body: const SettingsBody(),
    );
  }
}
