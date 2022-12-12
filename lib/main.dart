import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
//  실행시 긴프로젝트 셋팅 다 지우고 시작
//  앱시작
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Text("안녕"),
            Text("안녕"),
            Text("안녕"),
            Text("안녕"),
            Text("안녕"),
            Text("안녕"),
          ],
        ),
      ),
    );
  }
}

// 길고 반복적인 위젯을 사용하고 싶을 때
// 1. stless + tab
// 2. 대문자로 작명
// 3. return 부분에 코드 입력
// 4. 사용 시 작명이름() 사용가능(함수와 같은 의미)
// 아무거나 다 커스텀위젯화는 좋지 않음, 자주 사용하는 UI를 커스텀위젯화하는게 좋다
// class ShopItem extends StatelessWidget {
//   const ShopItem({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Text("안녕"),
//     );
//   }
// }
// 변수를 이용한 반복 축약
// 그러나 변수로 설정할 경우 에러가 발생할 수 있음
// 변수로 설정 가능한 것들은 평생 바뀌지 않는 것
// ex> 상단바, 로고 등
// var a = SizedBox(
//   child: Text("안녕"),
// );



// stless + Tab키 누르면 아래 메인페이지 기본 셋팅이 됨
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
    // MaterialApp에서 코드 짜기 시작
    // MaterialApp을 써 커스터마이징을 함
    // return MaterialApp(
      // 위젯(글자위젯, 아이콘위젯, 이미지위젯, 박스위젯)
      // home: Text('글자')

      // home: Icon(Icons.아이콘이름)

      // home: Image('폴더명/경로')
      // 이미지삽입 시 : 이미지가 프로젝트 폴더안에 존재 해야함
      // assets 폴더 생성 -> 폴더 안에 드래그하여 이미지 저장 -> 이미지 등록(pubspec.yaml 이동 -> flutter 안에 - assets/ 입력)
      // -> 이미지 등록을 함으로써 그 폴더 안에 모든 요소를 다 쓰는것이 됨

      // home: Container() = SizedBox() 용도는 같음
      // Container( width: 50, height: 50, color: Colors.blue ) style을 괄호 안에 줌
      // 숫자의 단위 LP 50LP = 1.2cm
      // 그러나 범위를 설정해 주어야함(부모 위젯을 넣어주고 밑에 child를 만들어 주어 위젯을 넣음)

      // Scaffold() 위젯 : 상중하로 나누어 주는 위젯
      // home: Scaffold(
      //   // 상단
      //   appBar: AppBar(),
      //   // 중단(내용)
      //   body: Container(),
      //   // 하단
      //   bottomNavigationBar: BottomAppBar( child: Text("안녕")),
      // )
      // Row( children[]) : 여러 위젯 가로로 배치하는법
      // Column( children[]) : 여러 위젯 세로로 배치하는법
      // mainAxisAlignment: MainAxisAlignment.center (flex와 비슷) 가로정렬
      // crossAxisAlignment: CrossAxisAlignment.center 세로정렬

      // ctrl + space바 누르면 자동완성 가능
      // home: Scaffold(
      //   appBar: AppBar(title: Text("앱임")),
      //   body: Text("안녕"),
      //   bottomNavigationBar: BottomAppBar(
      //     child:
      //     //    Container를 써도 되지만 Container는 무겁기 때문에 간단한 폭이나 넓이를 넣으려면 SizedBox가 가볍고 성능상의 이점이 있음
      //     SizedBox(
      //       height: 50,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: const[
      //           Icon(Icons.phone),
      //           Icon(Icons.message),
      //           Icon(Icons.contact_page),
      //         ],
      //       ),
      //     )
      //   ),
      // )
      // home: Scaffold(
      //   appBar: AppBar(),
      //   body: Align(
      //     alignment: Alignment.topCenter,
      //     child: Container(
      //       // 폭을 꽉 채울때 width: double.infinity
      //       width: 150, height: 50, color: Colors.blue,
      //       // 잡다한 디자인은 BoxDecoration()
      //       // decoration: BoxDecoration(
      //       //   border: Border.all(color: Colors.black)
      //       ),
      //   ),
      //     // 마진
      //     // margin: EdgeInsets.all(20),
      //     // 개별마진
      //     // margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      //     // 패딩
      //     // padding: EdgeInsets.all(20),
      //
      //   ),
      //
      // home: Scaffold(
      //   // AppBar()안에 넣을 수 있는 것들
      //   // title : 왼쪽 제목
      //   // leading : 왼쪽에 넣을 아이콘
      //   // actions : [우측아이콘들]
      //   appBar: AppBar( actions: [Icon(Icons.star)], leading: Icon(Icons.star), title: Text("Dd"),),
      //   body: SizedBox(
      //     child: TextButton( child: Text("ㅇㅇ"), onPressed: (){}, ),
      //   ),
      // ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     foregroundColor: Colors.black,
      //     title: Text("금호동3가"), leading: Icon(Icons.expand_more),
      //     actions:
      //     const[Icon(Icons.search), Icon(Icons.menu), Icon(Icons.notifications_none),],),
      //   body: Container(
      //     height: 150,
      //     padding: EdgeInsets.all(20),
      //     child: Row(
      //       children: [
      //         Image.asset('snack.png', width: 150,),
      //         Container(
      //           width: 300,
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text("강아지 간식 6봉 팝니다.", style: TextStyle(fontSize: 20, ),),
      //               Text("연수구 송도1동 10분 전"),
      //               Text("30,000원"),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(Icons.favorite),
      //                   Text("4")
      //                 ],
      //               )
      //
      //
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   )
      //
      // 
      // ),
      // home: Scaffold(
      //   appBar: AppBar(),
      //   body: Row(
      //     children: [
      //       //Flexible : 박스를 나눌때 비율로 주고 싶을때 width를 %로 못주기 때문에 활용함
      //       // Flexible(child: Container(color: Colors.blue,), flex: 3,),
      //       // Flexible(child: Container(color: Colors.green,), flex: 7,),
      //
      //       // Expanded : 하나의 박스의 너비를 지정하고 나머지 박스는 꽉차게 설정하고 싶을때 FLexible대신에 사용
      //       Expanded(child: Container(color: Colors.blue,)),
      //       Container(width: 100, color: Colors.red,)
      //     ],
      //   ),
      // ),
//     );
//   }
// }
// 혼자서 레이아웃 잘 짜는 법
// 1. 예시 디자인 준비
// 2. 예시화면에 네모 그리기
// 3. 바깥 네모부터 하나하나 위젯으로 만들기
// 4. 마무리 디자인