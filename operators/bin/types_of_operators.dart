void main(List<String> args) {
//there are 4 types of operators:
//-unary prefix, unary postfix, binary infix, compound assignment
//1-unary prefix operator
  int age3 = 30;
  print(--age3); //modify the var and return the result(decrement by 1)
  print(!true);
  print(!false);
  print(++age3); //increment by 1
// unary bitwise complement prefix operator
  print(~1);
//bytes: are a group of binary digits or bits (usually eight) operated on as a unit.
//(OOOO 0000) (0000 0000) (0000 0000) (0000 0001)->32-bytes value of 1
//(1111 1111) (1111 1111) (1111 1111) (1111 1110)->it flips 0 to 1 and 1 to 0
  print(-age3); //it just added - minus to its left
  print(-(-age3));
//2-unary postfix operator
  int age4 = 40;
  print(age4--); //return the result and then modify the var(decrement by 1)
  print(age4);
  print(age4++); // return the var and then increment by 1
  print(age4);
//3-binary infiix operator
  var age5 = 50;
  print(age5 + 20);
  print(age5 - 20);
  print(age5 * 20);
  print(age5 / 20);
  print(age5 ~/ 20);
  print(age5 == 20);
  print(age5 != 20);
  print(age5 < 20);
  print(age5 > 20);
  print(age5 <= 20);
  print(age5 >= 20);
// bitwise infix operator
  print(age5 & 20); // bitwise AND 1 & 1 = 1, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0
  // 0000 1010
  // 1011 1000
  // 0000 1000
  print(age5 | 20); // bitwise OR 1 | 1 = 1, 0 | 1 = 1, 1 | 0 = 1, 0 | 0 = 0
  print(age5 ^ 20); // bitwise XOR 1 ^ 1 = 0, 0 ^ 1 = 1, 1 ^ 0 = 1, 0 ^ 0 = 0
  print(age5 >> 20); // bitwise right shift
  print(age5 << 20); // bitwise left shift
//4- compound assignment operator
  var age6 = 60;
  print(age6 = 30); // age6 = 30 it will be assigned to 30
  print(age6 += 10); // 40
  print(age6 ~/= 10); // 4
  print(age6 -= 5); // -1
  print(age6 *= 10); // -10
  print(age6 &= 5); // 4
  print(age6 |= 2); // 6
}
