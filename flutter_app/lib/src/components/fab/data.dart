class IntroItem {
  IntroItem({
    this.title,
    this.category,
    this.imageUrl,
  });

  final String title;
  final String category;
  final String imageUrl;
}

final sampleItems = <IntroItem>[
  new IntroItem(title: 'Writing things together is what we do best!', category: 'Body Builder', imageUrl: 'assets/body_builder.png',),
  new IntroItem(title: 'Occasionally do exercise is a good idea.', category: 'ABS', imageUrl: 'assets/abs.jpg',),
  new IntroItem(title: 'We might have the best Chest building ever.', category: 'Chest', imageUrl: 'assets/chest.jpg',),
  new IntroItem(title: 'We might have the best Solder building ever.', category: 'Solder', imageUrl: 'assets/solder.jpg',),
  new IntroItem(title: 'We might have the best Jamping performance ever.', category: 'image 1', imageUrl: 'assets/1.png',),
  new IntroItem(title: 'We might have the best Jamping performance ever.', category: 'image 2 ', imageUrl: 'assets/2.png',),
  new IntroItem(title: 'We might have the best Jamping performance ever.', category: 'image 3', imageUrl: 'assets/3.png',),
  // new IntroItem(title: 'We might have the best Jamping performance ever.', category: 'Jump', imageUrl: 'assets/jump.gif',),
];