# oto

## dart

```dart
// dynamic vs. var

// final vs. const

// null

// rethrow

request({ required String url, String method='GET', Map<String, String> headers=const {} }) {}
reduce(List<num> lst, num Function(num accumulator, num currentValue) callbackFn, [num initialValue=0]) {}

// implements vs. extends

// operator overload
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

// noSuchMethod
abstract class Model {
  save();
}

class UserModel implements Model {
  @override
  noSuchMethod(Invocation invocation) {
    
  }
}

// mixin
mixin LifeCycleCallback {
  connectedCallback() {}
  disconnectedCallback() {}
  adoptedCallback() {}
  attributeChangedCallback() {}
}

class Element with LifeCycleCallback {}


// generics
typedef EachCallbackFn<T> = void Function(T value, int index);

each<T>(List<T> lst, EachCallbackFn callback) {
  for(int i = 0; i < lst.length; i++) {
    callback(lst[i], i);
  }
}

// async program
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

// callable object
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

// module
import './utils.dart' show typeof, dir;
import './utils.dart' as utils;

// document comment
/// single comment

/** 
multiline comment

**/


```
