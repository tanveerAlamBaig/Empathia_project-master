import 'package:flutter/material.dart';
import 'commonArticle.dart';
import 'customTextField.dart';

// class ArticlePage extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final List<Widget> additionalContent;
//
//   ArticlePage({
//     Key? key,
//     required this.imagePath,
//     required this.title,
//     this.additionalContent = const [], // Default empty list
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             left: 0,
//             right: 0,
//             height: 300,
//             child: CommonArticle2(
//               imagePath: imagePath,
//               text: '',
//               textColor: Colors.transparent,
//             ),
//           ),
//           CustomScrollView(
//             slivers: [
//               SliverLayoutBuilder(
//                 builder: (BuildContext context, constraints) {
//                   final scrolled = constraints.scrollOffset > 0;
//                   return SliverAppBar(
//                     backgroundColor:
//                         scrolled ? Colors.grey : Colors.transparent,
//                     expandedHeight: 200.0,
//                     pinned: true,
//                     flexibleSpace: FlexibleSpaceBar(
//                       title: LayoutBuilder(
//                         builder:
//                             (BuildContext context, BoxConstraints constraints) {
//                           return Container(
//                             width: constraints.maxWidth,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   title,
//                                   style: const TextStyle(color: Colors.white),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                       background: const SizedBox.expand(),
//                     ),
//                   );
//                 },
//               ),
//               SliverToBoxAdapter(
//                 child: Container(
//                   margin: const EdgeInsets.only(top: 20),
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius:
//                         BorderRadius.vertical(top: Radius.circular(50.0)),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             ClipOval(
//                               child: Image(
//                                   image: AssetImage(imagePath),
//                                   width: 60,
//                                   height: 60,
//                                   fit: BoxFit.cover),
//                             ),
//                             const Padding(
//                               padding:
//                                   EdgeInsets.symmetric(horizontal: 20),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       CustomText(
//                                           text: "Created By",
//                                           fontSize: 13,
//                                           weight: FontWeight.normal,
//                                           textColor: Colors.black45),
//                                     ],
//                                   ),
//                                   Row(
//                                     children: [
//                                       CustomText(
//                                           text: "Empathia",
//                                           fontSize: 15,
//                                           weight: FontWeight.w500,
//                                           textColor: Colors.black),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         // Additional Content
//                         ...additionalContent,
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CommonArticlePage extends StatefulWidget {
//   final String imagePath;
//   // final String imagepath2;
//   final String title;
//   final List<Widget> additionalContent;
//
//   const CommonArticlePage({
//     super.key,
//     required this.imagePath,
//     required this.title,
//     this.additionalContent = const [],
//     // required this.imagepath2});
//
//   @override
//   State<CommonArticlePage> createState() => _CommonArticlePageState();
// }
//
// class _CommonArticlePageState extends State<CommonArticlePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             bottom: PreferredSize(
//               preferredSize: Size.fromHeight(20),
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.vertical(top: Radius.circular(15))
//                 ),
//
//
//                 child: Center(child: Text('Work Life Balance')),
//                 width: double.maxFinite,
//                 padding: EdgeInsets.only(top: 5, bottom: 10),
//               ),
//             ),
//             pinned: true,
//             backgroundColor: Colors.transparent,
//             expandedHeight: 250,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Image.asset("assets/logo2.png",
//                 width: double.maxFinite,
//                 fit: BoxFit.cover,
//
//
//               ),
//
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Container(
//               margin: EdgeInsets.only(top: 20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius:
//                 BorderRadius.vertical(top: Radius.circular(50.0)),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         ClipOval(
//                           child: Image(
//                               image: AssetImage(imagePath),
//                               width: 60,
//                               height: 60,
//                               fit: BoxFit.cover),
//                         ),
//                         Padding(
//                           padding:
//                           const EdgeInsets.symmetric(horizontal: 20),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   CustomText(
//                                       text: "Created By",
//                                       fontSize: 13,
//                                       weight: FontWeight.normal,
//                                       textColor: Colors.black45),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   CustomText(
//                                       text: "Empathia",
//                                       fontSize: 15,
//                                       weight: FontWeight.w500,
//                                       textColor: Colors.black),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     // Additional Content
//                     ...additionalContent,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// }

class CommonArticlePage extends StatefulWidget {
  final String imagePath;
  final String title;
  final List<Widget> additionalContent;

  const CommonArticlePage({
    super.key,
    required this.imagePath,
    required this.title,
    this.additionalContent = const [],
  });

  @override
  State<CommonArticlePage> createState() => _CommonArticlePageState();
}

class _CommonArticlePageState extends State<CommonArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: Center(child: Text(widget.title, style: TextStyle(fontSize: 16),)),
              ),
            ),
            pinned: true,
            backgroundColor: Color(0xFF5f7470),
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.imagePath,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.vertical(top: Radius.circular(60.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image(
                            image: AssetImage(widget.imagePath),
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Created By",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Empathia",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Additional Content
                    ...widget.additionalContent,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
