import 'package:flutter/material.dart';
import 'package:slash/utils/ex.dart';

class Images extends StatefulWidget {
  const Images({super.key, required this.images});

  final List<String> images;

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  final PageController controller = PageController(viewportFraction: 0.5);
  double centerItemIndex = 0.0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        centerItemIndex = controller.page ?? -1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).width / 1.5,
          child: PageView.builder(
            controller: controller,
            itemCount: widget.images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const Spacer(
                    flex: 10,
                  ),
                  Expanded(
                    flex: 90,
                    child: Material(
                      elevation: getElevation(centerItemIndex, index),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Transform.rotate(
                          angle: getAngle(centerItemIndex, index),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Container(
                              color: Colors.white,
                              child: Image.network(
                                widget.images[index],
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 10,
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: 40,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: InkWell(
                  onTap: () => _jumpToImage(index),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: centerItemIndex == index
                              ? Border.all(
                                  color: context.getColors().primary,
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside)
                              : null),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            widget.images[index],
                            fit: BoxFit.fitHeight,
                          )),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  double getAngle(double centerIndex, int index) {
    if ((index - centerIndex).abs() > 0.5) {
      return ((index - centerIndex) / 5);
    } else if ((index - centerIndex).abs() > 1) {
      return ((index - centerIndex) / 5);
    }
    return 0.0;
  }

  double getElevation(double centerIndex, int index) {
    if ((index - centerIndex) < 0) {
      return 0;
    } else if ((index - centerIndex) > 0) {
      return 100;
    }
    return 50;
  }

  _jumpToImage(int index) {
    controller.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }
}
