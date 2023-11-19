import 'package:flutter/material.dart';
import 'package:retest1/model/post_model.dart';

class PostItem extends StatelessWidget {
  final PostModel postmodel;
  const PostItem({super.key, required this.postmodel});
  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: postmodel.image != null
                ? Image.network(
                    postmodel.image!,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  )
                : Image.asset(
                    'assets/pulse-shape-from-stethscope-blackboard-3d-render_800514-573.jpg',
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  )),
        const SizedBox(
          height: 8,
        ),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal:6.0),
         child: Text(
            postmodel.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
       ),
        Padding(
          padding: const EdgeInsets.symmetric( horizontal: 6.0),
          child: Text(
            postmodel.subTitle ?? '',
            textAlign: TextAlign.start,
            style: const TextStyle(
                color: Color.fromARGB(255, 135, 123, 123), fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
      ],
    );
  }
}
