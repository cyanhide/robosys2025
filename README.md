# plusコマンド
![test](https://github.com/cyanhide/robosys2025/actions/workflows/test.yml/badge.svg)

## 概要
標準入力またはリダイレクトされたファイルから数値を読み込み、合計・平均・個数を計算するコマンド。

## 使い方
```
plus [--sum | --avg | --count] [file ...]
```
* オプション省略時は --sum と同じ動作。
* 入力は 標準入力 または ファイル から読み込む。

- --sum
入力された数値の合計を出力する。

- --avg
入力された数値の平均を出力する。

- --count
入力された数値の個数を出力する。

## 使用例
* 合計を求める。
```
$ seq 10 | ./plus
55
```
* 平均を求める。
```
$ seq 10 | ./plus --avg
5.5
```
* 個数を数える。
```
$ seq 10000 | ./plus --count
10,000
```

* ファイルから標準入力へリダイレクト。

```
$ ./plus --sum < nums
6,000
$ ./plus --avg < nums
2,000
$ ./plus --count < nums
3
```
## インストール方法
* pythonが導入された環境で, 下記のコマンドを入力する。
```
$ git clone https://github.com/cyanhide/robosys2025.git
```
* robosys2025ディレクトリに移動。
```
$ cd robosys2025
```
* 実行方法に関しては、上記の使い方を参照してください。実行権限が付与されていない場合は, 下記コマンドを入力してください。
```
$ chmod +x plus
```
## 必要なソフトウェア
* python
	* テスト済み:3.7~3.10

## テスト環境   

* Ubuntu 20.04.5 LTS
* GitHub Actions

## ライセンス ##

* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます。 
* このパッケージのコードは, 下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）の一部を本人の許可を得て自身の著作としたものです。 
	* [robosys2025/lesson3.md](https://github.com/ryuichiueda/slides_marp/blob/270b1596ff22e81ebd9b158c4660dd64b9a83888/robosys2025/lesson3.md)
	* [robosys2025/lesson6.md](https://github.com/ryuichiueda/slides_marp/blob/270b1596ff22e81ebd9b158c4660dd64b9a83888/robosys2025/lesson6.md)

©2025 Hidenori Koseki

