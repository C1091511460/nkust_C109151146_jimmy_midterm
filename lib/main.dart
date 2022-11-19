import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
              label: 'Alarm',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          onTap: (index) { setState(() =>_currentindex = index);},

        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1 = '我出生在一個很平凡但很美滿的小家庭，父親是個公務員，在台電服務，母親是個家庭主婦，而弟弟和我都還在學校求學。父母用民主的方式管教我們，希望我們能夠獨立自主、主動學習，累積人生經驗，但他們會適時的給予鼓勵和建議，父母親只對我們要求兩件事，第一是保持健康，第二是著重課業。因為沒有健康的身體，就算有再多的才華、再大的抱負也無法發揮出來。又因為家境並不富裕，所以必須專心於課業上，學得一技之長，將來才能自立更生。在小學時代的我很活潑、很好動，在課業上表現平平，但課外表現不錯，除了擔任過班長等幹部外，還參加樂隊、糾察隊等，另外還曾獲選為校隊參加跳高比賽。小學畢業後，進入了一所私立中學，因為校規嚴格，使原本好動的我變得較為文靜，不過在那裡我學會了許多應有的禮節與待人處世的道理。在國中時期的我，好像開了竅，代表全校接受縣政府的表揚，在國三畢業典禮上，更代表了全體畢業生上台領取畢業證書。進附中後，每天都覺得很充實、很快樂。附中學生的特色是能K、能玩，所以我不斷地努力學習，希望能夠達到此目標。在課業方面，我都能保持在一定的水準，因為上課專心聽講、仔細思考、體會老師所說的每一句話，在腦海裡架構重要觀念，一有問題就立刻發問，因此上課的吸收效率很高，不但使得複習的工作能夠很快完成，還有多餘的時間從事課外活動。在這麼多的科目當中，我最喜歡的是數學、化學和生物，因為數學、化學能夠訓練我們組織與思考能力。而生物則和日常生活有密切的關係，且它為我們揭開人體的奧秘。我在學校人際關係良好，因為無論何時，總是笑臉迎人，微笑已成為我個人的正字招牌。老師們常稱讚我是個品學兼優的好學生，常給我許多的鼓勵，而同學間的相處十分融洽，彼此之間很有默契，團結一心。除了課業之外，其他方面我也沒有偏廢。在高一時加入學校管樂隊，吹奏低音號，每天升旗參加出勤，在這裡不但使我對管樂器有進一步的認識，還認識了許多朋友，因此在那個時候，參加社團已成為我放學後的一大休閒。而我最喜歡的運動是棒球，我常在電視上或球場上觀賞職棒比賽，欣賞球員的美姿，模仿其動作。我常利用課餘時間約同學一起出外打球，記得在高二時，班上組隊參加班際壘球賽，那時我擔任隊長，防守二壘，首先展開攻勢，激起球隊士氣，最後終以一分之差贏得了最後勝利。除了棒球之外，我也很喜歡藍球、排球等，因此使得原本瘦弱的身體，變得強壯許多。我從小就立志要當醫生，近年來當我接觸了有關醫學系的相關資訊，漸漸地了解到當個醫生並不是那麼簡單的事，需要對服務人群有興趣，及擅長人際溝通，且在求學的過程中也相當辛苦。但疾病加諸在病人身上的痛苦是無法言諭的，來自醫生的關懷與勉勵，能讓病人產生無比的信念，勇敢地向疾病宣戰，在病人痊癒時，看到病人及家屬喜形於色，那種喜悅，令我十分嚮往，而且醫生不僅僅是要免除病人的疾病和虛弱，也要能兼顧對人們的整體關懷，使病患的身心達到安寧的狀態，在這一方面，它讓我更確定了讀醫學系的志向。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("who am I",
                style: TextStyle(fontSize: 24,
                  fontWeight: FontWeight.bold,)),
          ),

          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow:[ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6,6)),
              ],
            ),
            child: Text(s1,style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: Image.asset(''),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(''),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),

              ),

              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(''),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),
              )

            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('學習歷程'),);
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("大一時期"),],
        ),SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 200,
              width: 300,
              child: ListView(
                children: [
                  Text('1.學好英文'),
                  Text('2.組合語言'),
                  Text('3.考取證照'),
                  Text('4.人際關係'),
                ],
              ),
            )
          ],
        ),
        Row(),
        Row(),
        Row(),
        Row(),
        Row(),
        Row(),
      ],
    )
    );
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('專案方向'),);

  }
}