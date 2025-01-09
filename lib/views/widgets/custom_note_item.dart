import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.blue),

      child: Padding(
        padding: const EdgeInsets.only(top: 24,bottom: 24,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(

              title: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text('Flutter tips'),
              ),
              titleTextStyle: TextStyle(color: Colors.black,fontSize: 28,),
              subtitle: Text('Improve yourself and keep grinding Improve yourself and keep grinding Improve yourself and keep grinding'),
              subtitleTextStyle: TextStyle(color: Color(0xFF303030),fontSize: 14),
              trailing: IconButton(onPressed: (){},
                  icon: Icon(Icons.delete,size: 24,color: Colors.black,)),

            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text('created at ????????',style: TextStyle(color: Color(0xFF303030),fontSize: 12),),
            )

          ],
        )
      ),
    );
  }
}
