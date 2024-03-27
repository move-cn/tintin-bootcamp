# 变量
Move程序使用let将变量名绑定到值:
```rust
let x = 1;
let y = x + x:
```
Let也可以在不将值绑定到局部的情况下使用。
然后可以为局部变量赋值。
```rust
let x;
if (cond) {
  x = 1
} else {
  x = 0
}
```

变量必须在使用前赋值

```rust
let x;
x + x // ERROR!
```


### 变量的名字

必须是 _a-zA-Z 开始 只能包含字母数字和下划线 _

```rust
let s = b"hello";
let foo = Foo { f: 0 };

let s2 = s; // copy
let foo2 = foo; // move
let coin2 = coin; // copy

let x = 0;
let b = false;
let addr = @0x42;
let x_ref = &x;
let coin_ref = &mut coin2;

let x2 = x; // copy
let b2 = b; // copy
let addr2 = @0x42; // copy
let x_ref2 = x_ref; // copy
let coin_ref2 = coin_ref; // copy
```




# 无符号整数
- `u8` `u16` `u32` `u64` `u128` `u256`
-   `+` `-` `*` `/` `%`
-  `=` `>` `<` `!=`


# bool
- `false` `false`

# address 地址类型





