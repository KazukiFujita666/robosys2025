# 素因数分解ツール
![test](https://github.com/KazukiFujita666/robosys2025/actions/workflows/test.yml/badge.svg)

標準入力から数字を読み込み、素因数分解したものを出力します.

## インストール方法

~~~
$ git clone https://github.com/KazukiFujita666/robosys2025.git
$ cd robosys2025
$ chmod +x factorize
~~~

## 実行例

60を素因数分解
~~~
$ echo 60 | ./factorize
2*2*3*5
~~~

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，[Ryuichi Ueda](https://github.com/ryuichiueda)由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 Kazuki Fujita
