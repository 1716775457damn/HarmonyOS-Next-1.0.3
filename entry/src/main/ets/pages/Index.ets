//一元运算符
@Entry
@Component
struct Index {
  build() {
    let num: number = 10;
    let res1: number = num++;
    console.log('res1', res1); // 10
    console.log('num', num);   // 11

    let num2: number = 10;
    let res2: number = ++num2;
    console.log('res2', res2); // 11
    console.log('num2', num2); // 11
  }
}

///////////////////////////////////////////////////////////////
//自减运算符 --
@Entry
@Component
struct Index {
  build() {
    let num2: number = 10;
    let res2: number = --num2;
    console.log('res2', res2); // 9
    console.log('num2', num2); // 9
  }
}

////////////////////////////////////////////
//比较运算符
@Entry
@Component
struct Index {
  build() {
    let num1: number = 11;
    let num2: number = 11;
    console.log('判断结果', num1 > num2); // false
    console.log('判断结果', num1 < num2); // false
    console.log('判断结果', num1 >= num2); // true
  }
}

///////////////////////////////////////////////////////////
//相等性比较
@Entry
@Component
struct Index {
  build() {
    let num1: number = 200;
    let num2: number = 201;
    console.log('判断结果', num1 == num2); // false

    let password: string = '123456';
    let password2: string = '123456';
    console.log('判断结果', password == password2); // true
  }
}
///////////////////////////////////////////
///////////逻辑运算符
//逻辑与 &&
@Entry
@Component
struct Index {
  build() {
    console.log('结果1', 3 > 5 && 5 < 9); // false
    console.log('结果2', 5 > 2 && 5 < 9); // true
  }
}
//逻辑或 ||
@Entry
@Component
struct Index {
  build() {
    console.log('结果1', 3 > 5 || 5 < 9); // true
    console.log('结果2', 5 > 2 || 5 < 9); // true
    console.log('结果3', 5 > 20 || 5 < 1); // false
  }
}
//逻辑非 !
@Entry
@Component
struct Index {
  build() {
    console.log('结果', !true); // false
  }
}
////////////////////////////////////////////////////////////////
//运算符优先级
//小括号 ()
//一元运算符 ++ -- !
//算术运算符 * / % + -
//比较运算符 > < >= <= == !=
//逻辑运算符 && ||
//赋值运算符 =
@Entry
@Component
struct Index {
  build() {
    console.log('运算符优先级', 2 + 2 * 3); // 8
    console.log('运算符优先级', (2 + 2) * 3); // 12
    console.log('运算符优先级', 2 * 3 > 4 == false); // false
    console.log('运算符优先级', !true == 3 * 3 > 4); // false
  }
}
