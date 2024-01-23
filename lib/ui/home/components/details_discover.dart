import 'dart:io';

import 'package:demo_movie/constants.dart';
import 'package:demo_movie/model/banner_movie.dart';
import 'package:demo_movie/ui/home/components/video_player_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsDiscoverScreen extends StatelessWidget {
  final BannerMovie bannerMovie;

  const DetailsDiscoverScreen(this.bannerMovie, {super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom:
              mediaQuery.padding.bottom == 0 ? 16.0 : mediaQuery.padding.bottom,
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                BackdropImage(bannerMovie.backdropPath),
                _buildWidgetAppBar(mediaQuery, context),
                _buildWidgetFloatingActionButton(context, mediaQuery),
                _buildWidgetIconBuyAndShare(mediaQuery),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildWidgetTitleMovie(context),
                  const SizedBox(height: 4.0),
                  _buildWidgetGenreMovie(context),
                  const SizedBox(height: 16.0),
                  _buildWidgetRating(),
                  const SizedBox(height: 16.0),
                  _buildWidgetShortDescriptionMovie(context),
                  const SizedBox(height: 16.0),
                  _buildWidgetSynopsisMovie(context),
                  const SizedBox(height: 16.0),
                  _buildWidgetScreenshots(mediaQuery, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidgetAppBar(MediaQueryData mediaQuery, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        top: mediaQuery.padding.top == 0 ? 16.0 : mediaQuery.padding.top + 8.0,
        right: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetFloatingActionButton(
      BuildContext context, MediaQueryData mediaQuery) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: mediaQuery.size.height / 2 - 60,
        ),
        Center(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VideoPlayerScreen(),
                ),
              );
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.play_arrow,
              color: primaryDarkColor,
              size: 32.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWidgetIconBuyAndShare(MediaQueryData mediaQuery) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: mediaQuery.size.height / 2 - 40,
          ),
          const Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.add),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.share),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetTitleMovie(BuildContext context) {
    return Center(
      child: Text(
        'Angel Has Fallen',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  Widget _buildWidgetGenreMovie(BuildContext context) {
    return Center(
      child: Text(
        'Action',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey,
            ),
      ),
    );
  }

  Widget _buildWidgetRating() {
    return Center(
      child: RatingBar(
        initialRating: 4.0,
        itemCount: 5,
        allowHalfRating: true,
        direction: Axis.horizontal,
        itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
        tapOnlyMode: true,
        itemSize: 24.0,
        unratedColor: Colors.black,
        onRatingUpdate: (rating) {
          /* Nothing to do in here */
        },
        ratingWidget: RatingWidget(
          full: const Icon(
            Icons.star,
            color: primaryDarkColor,
          ),
          half: const Icon(
            Icons.star_half,
            color: primaryDarkColor,
          ),
          empty: const Icon(
            Icons.star_border,
            color: primaryDarkColor,
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetShortDescriptionMovie(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Country\n',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black54,
                      ),
                ),
                TextSpan(
                  text: 'USA',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Year\n',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black54,
                      ),
                ),
                TextSpan(
                  text: '2018',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Length\n',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black54,
                      ),
                ),
                TextSpan(
                  text: '112 min',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetSynopsisMovie(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Text(
          'Secret Service Agent Mike Banning is framed for the attempted '
          'assassination of the President and must evade his own agency '
          'and the FBI as he tries to uncover the real threat.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _buildWidgetScreenshots(
      MediaQueryData mediaQuery, BuildContext context) {
    var listScreenshotsMovie = [
      'assets/images/screenshot_1_backdrop_path.jpeg',
      'assets/images/screenshot_2_backdrop_path.jpeg',
      'assets/images/screenshot_3_backdrop_path.jpeg',
      'assets/images/screenshot_4_backdrop_path.jpeg',
      'assets/images/screenshot_5_backdrop_path.jpeg',
    ];
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Text(
                  'Screenshots',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          width: mediaQuery.size.width,
          height: 100.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: index == listScreenshotsMovie.length - 1 ? 16.0 : 0.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    listScreenshotsMovie[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: listScreenshotsMovie.length,
          ),
        ),
      ],
    );
  }
}

class BackdropImage extends StatelessWidget {
  final String backdropPath;

  const BackdropImage(this.backdropPath, {super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Image.asset(
        backdropPath,
        height: mediaQuery.size.height / 2,
        width: mediaQuery.size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 70.0);

    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - 70.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height - 70.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
