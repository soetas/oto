List<String> dir(Object obj) {
  switch(obj.runtimeType) {
    case int:
      return ['abs', 'isOdd', 'isEven', 'isNaN', 'isNegative'];
    case bool:
      return ['toString'];
    case String:
      return ['split'];
    default:
      throw 'unknown type!';
  }
}

String bin(int val) {
  return '0x${val.toRadixString(2)}';
}

String reversed(String str) {
  String s = '';

  for(int i = str.length-1; i >= 0; i--) {
    s += str[i];
  }

  return s;
}

eq(Object o1, Object o2) => o1==o2;

void printf() {}

request({ required String url, String method='GET', Map<String, String> headers=const {} }) {}
reduce(List<num> lst, num Function(num accumulator, num currentValue) callbackFn, [num initialValue=0]) {}

class Text {
  int level = 1;
  String content = '';
  String color = '';

  paint() {
    print('text{$int, $content, $color}');
  }
}

void main(List<String> argv) {
  String username = 'Janie Crawford';
  var email = 'towzunoca@cepehasaz.bs';

  int statusCode = 200;

  dynamic label;

  print(label);

  label = 0;
  label = false;
  label = null;
  label = .1;
  label = [];
  label = 0x555;

  print(username);
  print(statusCode);
  print(label.runtimeType);
  print(label.sign);

  print(dir);
  print(String.fromCharCodes([65, 66, 67]));
  print('<${username}, ${email}>');

  var frame = '''
  <html>
    <head>
      <title></title>
    </head>
    <body>
    
    </body>
  </html>
  ''';

  print(frame);
  print(r'\t\t\n'[0]);
  print('😅'.codeUnitAt(0));
  print(''.runtimeType.runtimeType);

  var url = 'https://www.emojiall.com/zh-hans/categories/A';
  bool devtools = false;

  List<List<double>> points = [
    [67.2, -90.2], 
    [-21, 10], 
    [34, 82]
  ];

  print(url.split('/'));
  print(points.asMap());
  print(List.filled(5, 0));

  Map<String, dynamic> post = {
    'userId': 1,
    'id': 1,
    'title': '',
    'body': '',
  };

  post['title'] = 'dart language basic teaches';

  post.addAll({'created_date': '2000/10/21'});

  print(post);
  print(bin(255));

  var os = 'android';

  if(os == 'android') {
    
  } else if(os == 'ios') {

  } else {

  }

  try {
    print(dir([]));
  } on String catch(e) {
    print(e);

  }

  print(argv);
  print(eq([], []));

  request(url:'');

  reduce([1, 2, 3], (prev,cur){
    return 0;
  });

}
