import 'package:chohyunkwon/configurations/app_theme.dart';
import 'package:chohyunkwon/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryScreen extends StatefulWidget {
  GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  @override
  void initState() {
    // Statusbar 색상
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.scaffoldBackgroundColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    SystemChrome.setSystemUIOverlayStyle(
        AppTheme.buildLightSystemUiOverlayStyle());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2,
                    child: Image(
                      image: NetworkImage(
                        'https://thumbnews.nateimg.co.kr/view610///news.nateimg.co.kr/orgImg/nn/2021/05/16/202105161458592310_2.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image(
                      image: NetworkImage(
                        'http://image.genie.co.kr/Y/IMAGE/IMG_ARTIST/080/661/360/80661360_1607326070797_9_600x600.JPG',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image(
                      image: NetworkImage(
                        'https://mblogthumb-phinf.pstatic.net/MjAyMDA0MjFfMjA1/MDAxNTg3NDYwMDExNzU4.Ewj2jdVktSXyzLWp64upDMXFuQ7QIuxzWOQHHQHLcRwg.z8SSyUBorc05pyNpUptgdMWyR65HERpl5igOIvdBkbIg.JPEG.purefarland/10.JPG?type=w800',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image(
                      image: NetworkImage(
                        'http://cdn.lecturernews.com/news/photo/201907/22157_54308_746.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2,
                    child: Image(
                      image: NetworkImage(
                        'https://ww.namu.la/s/f9f76979c0a7157104b193133dc3840537e6e2f18cd1535b45e3316801ef0689674433bff420720a387de854f49a9e4987c409ac2b85f90e04c92d907ca7f287c0c5c8660f61e283c03abf9b136a363f485cd7eab02ae32dfdba2acc222bfd882dd193ec3bd288cd53717dac51877a77',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2,
                    child: Image(
                      image: NetworkImage(
                        'https://c.tenor.com/2wguKfaeynkAAAAC/%ED%98%BC%EB%8B%A4%ED%9E%88%ED%86%A0%EB%AF%B8-%ED%9E%88%ED%86%A0%EB%AF%B8.gif',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Image(
                      image: NetworkImage(
                        'https://c.tenor.com/-50cdUSBHCoAAAAd/hitomi-honda-hitomi.gif',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image(
                      image: NetworkImage(
                        'https://c.tenor.com/mRsn5jOFLjYAAAAd/hiichan-honda-hitomi.gif',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image(
                      image: NetworkImage(
                        'https://c.tenor.com/2OJhNMd8k-gAAAAd/dojauchistwt-hitomi.gif',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4,
                    child: Image(
                      image: NetworkImage(
                        'https://c.tenor.com/yz-Z9-t4blMAAAAd/izone-hitomi.gif',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image(
                      image: NetworkImage(
                        'https://c.tenor.com/bFqM_611I4oAAAAd/teteshrek-hitomi-reaction.gif',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Image(
                      image: NetworkImage(
                        'https://img.theqoo.net/img/lijjt.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 4,
                    child: Image(
                      image: NetworkImage(
                        'https://pbs.twimg.com/media/EZWPm3qVcAUMFt5?format=jpg&name=large',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Image(
                      image: NetworkImage(
                        'https://mblogthumb-phinf.pstatic.net/MjAxOTA2MDNfNzAg/MDAxNTU5NTM0OTg4NDI0.P-hgSqw8rqsUbcpCW93qPIn2OqXmbFGvk7g0oNqjQYIg.F_cTH-14F__c_OSOatT4fnXIkcFqLMasNHmcNy0Jvz0g.JPEG.kensinjo/16ad90417da1f012.jpg?type=w800',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image(
                      image: NetworkImage(
                        'https://t1.daumcdn.net/cfile/tistory/993D024D5CFD27983F',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image(
                      image: NetworkImage(
                        'https://mblogthumb-phinf.pstatic.net/MjAyMDEyMTJfMjk4/MDAxNjA3NzU2NDUxMzU5.Ipl5wnO7cYVe6_EuY-Jrlvkhj4H8ax-t-oBjXlzlyqUg.0hv3cnuKX9n9sTbeQ1bSnNhgP_5r366c78sem1x8Mmcg.GIF.ciandew/ezgif.com-gif-maker_(15).gif?type=w800',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    ));
  }
}
