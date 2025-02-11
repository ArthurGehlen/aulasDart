void main() {
  String name = 'test';

  // print(Utils().toFirstCharToUpperCase(name));
  print(name.toFirstCharToUpperCase());
  print(EnumTest.test.toValue());
}

enum EnumTest {
  test;
}

extension ExtensionsEnum on Enum {
  String toValue() {
    
    Map map = {
      EnumTest.test: 'xpto'
    };
    return map[this];
  }
}

extension ExtensionsString on String {
  String toFirstCharToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}
