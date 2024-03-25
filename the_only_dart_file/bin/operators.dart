void main(List<String> args) {
  // talk on operators, evrything is same like C
  // new things learnt is '~/' its like for example: double ~/ double == (int)
  double num1 = 10.2;
  double num2 = 10.0;

  // basic math like increment, decrement, multiplication, division
  print(++num1);
  print(num2++);
  print(--num2);
  print(num1--);

  // logical operators, bitwise operators
  bool somebool = true;
  print(!somebool);

  int num3 = 4;
  int num4 = 8;

  print(num4 >> num3);
  print(num4 >>= num3);// after performing the operation the new value gets assigned to num4
  print(num4);
  print(num4 += 8);
  print(num3 << 1);
  print(num3);

}