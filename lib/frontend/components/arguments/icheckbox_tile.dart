import 'package:colorify/ui/util/text_style.dart';
import 'package:flutter/material.dart';

class ICheckBoxTile extends StatefulWidget {
  final bool value;
  final String title;
  final double width;
  final double? height;
  final void Function(bool) onCheck;
  const ICheckBoxTile({
    super.key,
    required this.value,
    required this.title,
    required this.width,
     this.height,
    required this.onCheck,
  });

  @override
  State<ICheckBoxTile> createState() => _ICheckBoxTileState();
}

class _ICheckBoxTileState extends State<ICheckBoxTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: const Color(0xFF2d2a31),
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            curve: Curves.ease,
                            duration: const Duration(
                              milliseconds: 240,
                            ),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: const Color(0xFFAED581),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            widget.title,
                            style: getStyle(
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                          value: widget.value,
                          activeColor: const Color(0xFFAED581),
                          tristate: false,
                          onChanged: (v) => widget.onCheck(v!),
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
      ],
    );
  }
}
