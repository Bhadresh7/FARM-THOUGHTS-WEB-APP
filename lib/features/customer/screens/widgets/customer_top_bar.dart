import 'package:flutter/material.dart';

class CustomerTopBar extends StatelessWidget {
  const CustomerTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            bottom: BorderSide(color: Colors.grey.shade300)
        ),
        boxShadow: const [BoxShadow(
          color: Colors.black12,
          blurRadius: 5,
          offset: const Offset(0,3),

        )
          ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon:  Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Icon(Icons.search_outlined),
                ),
                hintText: "Enter Customner to Search",
                border: InputBorder.none

              ),
            ),
          ),
          Expanded(
            flex: 1,
              child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              IconButton(onPressed:  () {}, icon: Icon(Icons.settings)),
              IconButton(onPressed:  () {}, icon: Icon(Icons.notifications_none)),
              IconButton(onPressed:  () {}, icon: Icon(Icons.account_circle)),

              
            ]
            ,
          ))


        ],
      ),



    );
  }
}
