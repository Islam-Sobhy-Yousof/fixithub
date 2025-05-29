import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/styles/curved_clipper.dart';
import 'package:fixithub/common/widgets/circular_container.dart';
import 'package:fixithub/common/widgets/custom_curved_container.dart';
import 'package:fixithub/common/widgets/primary_store_header.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PrimaryStoreHeader(
                child: Container(
                  width: AppSize.sinf,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
