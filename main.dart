/** 


**/

import './utils.dart' as utils;

abstract class Widget {
  paint();
}

class Text extends Widget {
  paint() {}
}

class Input extends Widget {
  paint() {}
}

class Button implements Widget {
  num x = 0;
  num y = 0;
  num borderRadius = 0;
  Map<String, num> size = {
    'width':0,
    'height':0
  };

  Button() {}
  Button.by(this.borderRadius, this.size);

  static create(num borderRadius, num width, num height) {
    var instance = new Button();

    instance.borderRadius = borderRadius;
    instance.size['width'] = width;
    instance.size['height'] = height;

    return instance;
  }

  String toString() {
    return 'Button { borderRadius:$borderRadius, size:{ width:${size['width']}, height:${size['height']} } }';
  }

  List<num> get pos {
    return [x, y];
  }

  set pos(List<num> pos) {
    this.x = pos[0];
    this.y = pos[1];
  }

  paint() {

  }
}

class Complex {
  num real = 0;
  num imag = 0;

  Complex(this.real, this.imag);

  Complex operator + (Complex other) {
    return Complex(this.real+other.real, this.imag+other.imag);
  }

  toString() {
    return '$real${imag >= 0 ? '+' : ''}${imag}i';
  }
}

abstract class Model {
  save();
}

class UserModel implements Model {
  @override
  noSuchMethod(Invocation invocation) {
    
  }
}

enum Color {
  RED,
  GREEN,
  BLUE,
}

mixin LifeCycleCallback {
  connectedCallback() {}
  disconnectedCallback() {}
  adoptedCallback() {}
  attributeChangedCallback() {}
}

class Element with LifeCycleCallback {}

class Math {
  static double PI = 3.1415926;

}

class Array<T extends num> {
  List<T> items = [];

  T nth(int index) {
    return items[index];
  }
}

typedef EachCallbackFn<T> = void Function(T value, int index);

each<T>(List<T> lst, EachCallbackFn callback) {
  for(int i = 0; i < lst.length; i++) {
    callback(lst[i], i);
  }
}

Future<Map<String, dynamic>> fetch() async {
  await {};
  return {
    'statusCode':200,
    'headers':{
      'Set-Cookie':'',
    },
    'data':[],
  };
}

class Axios {
  Map<String, dynamic> config = {
    'baseURL':'',
    'timeout': 0,
    'headers':{},
  };

  Axios() {}
  Axios.create() {

  }

  call() {

  }
}


main() {
  var request = Axios.create();

  request();



}
