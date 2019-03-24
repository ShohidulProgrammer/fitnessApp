import 'package:flutter/material.dart';
import 'package:flutter_app/src/components/fab/data.dart';
import 'package:flutter_app/src/components/fab/intro_page_item.dart';

// my imports

import 'package:flutter_app/src/components/fab/page_transformer.dart';
// import 'package:flutter_app/controllers/Logic.dart';

class IntroPageView extends StatelessWidget {
  final VoidCallback onClick;

  const IntroPageView({Key key, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox.fromSize(
          size: const Size.fromHeight(500.0),
          child: PageTransformer(
            pageViewBuilder: (context, visibilityResolver) {
              return PageView.builder(
                controller: PageController(viewportFraction: 0.85),
                itemCount: sampleItems.length,
                itemBuilder: (context, index) {
                  final item = sampleItems[index];
                  final pageVisibility =
                      visibilityResolver.resolvePageVisibility(index);

                  return IntroPageItem(
                    item: item,
                    pageVisibility: pageVisibility,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
