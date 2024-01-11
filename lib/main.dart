import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (_, __) =>
            const MaterialApp(home: HomeScreen()));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("carousel"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 30),
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        itemCount: 5,
        itemBuilder: (_, index) => const _Slider(),
      ),
    );
  }
}

class _Slider extends StatelessWidget {
  const _Slider();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 1.sw,
        height: 0.08.sh,
        child: CarouselSlider(
            options: CarouselOptions(
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayCurve: Curves.ease,
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              pauseAutoPlayInFiniteScroll: true,
              pauseAutoPlayOnTouch: true,
              scrollPhysics: const ScrollPhysics(),
              disableCenter: true,
              viewportFraction: .3,
            ),
            items: List.generate(
                6,
                (index) => CircleAvatar(
                      backgroundImage: Image(
                              image: NetworkImage(
                                  images[Random().nextInt(images.length)]))
                          .image,
                    ))));
  }
}

List<String> images = [
  'https://foodwithfeeling.com/wp-content/uploads/2015/12/kitten-1-e1449759470162.jpg',
  'https://img.freepik.com/premium-photo/close-up-stuffed-animal-swing-generative-ai_733139-4967.jpg',
  'https://r.bing.com/rp/sjRKqL7qEBB3rUAoLZkYF0PHd6Y.svg',
  'https://www.fotoseimagens.net/wp-content/uploads/2018/12/wallpapers-de-gatos-fofos-em-hd-para-celulares-3.jpg',
  'https://i.pinimg.com/originals/21/ce/3d/21ce3dbf51b31dd9fb45dfadfdb1375c.jpg',
  'https://1.bp.blogspot.com/-bdS7yZZivos/XEQytXfgReI/AAAAAAAAVqg/k-ZCXB89HDghRRGri1iqxAEMUCq-GXxNACLcBGAs/s2560/iron-man-1080x1920-marvel-superhero-artwork-hd-4k-17116.jpg',
  'https://www.degemed.de/wp-content/uploads/2018/12/181214-Platzhalter-Portrait-Frau_Fotolia_233462402_Subscription_Monthly_M.jpg',
  'https://www.dearingstudio.com/wp-content/uploads/2022/04/female-placeholder-image.webp',
  'https://avatarfiles.alphacoders.com/215/thumb-1920-215802.jpg',
  'https://live.staticflickr.com/547/31040340724_9cf51bf98e_c.jpg',
  'https://th.bing.com/th/id/OIP.yhybftT_ylXhMhFZrf75xQAAAA?rs=1&pid=ImgDetMain',
  'https://th.bing.com/th/id/OIP._wvcfWPYX-fu-OlvhnmzVAHaHa?rs=1&pid=ImgDetMain',
  'https://th.bing.com/th/id/R.9a444caf3091687e9f234ef406a5874f?rik=irsBp7f%2b6JASeQ&riu=http%3a%2f%2ffc01.deviantart.net%2ffs71%2ff%2f2012%2f253%2fe%2f7%2firon_man_painting_by_melmelart-d5earxl.png&ehk=mnG0LAgmzkjFxqNSWCcmdccKudPw5L2YbxOOFxK99Qo%3d&risl=&pid=ImgRaw&r=0',
  'https://i.pinimg.com/736x/03/18/2d/03182d53ade0521e1c3c5cc9290dcd66.jpg',
  'https://i.pinimg.com/736x/fc/c2/a6/fcc2a68f2ed08dac39cdfed0995da32e--orange-kittens-hamster.jpg'
];
