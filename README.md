# plusコマンド
![test](https://github.com/cyanhide/robosys2025/actions/workflows/test.yml/badge.svg)

標準入力またはファイルから数字を読み込み、合計を計算して
結果を三桁区切りで出力するコマンド。


## 使い方
* 標準入力による使用例 
```
$ seq 100 | ./plus
5,050
```
* ファイル入力による使用例
```
$ ./plus < nums
6,000
```
## 使用用途例
* ゲームの得点やトーナメントの合計スコアを簡単に計算
* 家計簿や支出記録をまとめて合計でき、お金の管理にすぐ役立つ

## インストール方法
* Githubやpythonが導入された環境で, 下記のコマンドを入力する.
```
$ git clone https://github.com/cyanhide/robosys2025.git
```
* robosys2025ディレクトリに移動.
```
$ cd robosys2025
```
* 実行方法に関しては、上記の使い方を参照してください.実行権限が付与されていない場合は, 下記コマンドを入力してください.
```
$ chmod +x plus
```
## 必要なソフトウェア
* python
	* テスト済み:3.7~3.10

## テスト環境   

* Ubuntu 22.04.3 LTS

## ライセンス ##
* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます.
* このパッケージのコードは, 下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）の一部を本人の許可を得て自身の著作としたものです. 
	* [ryuichiueda/robosys2025/lesson3.md](https://github.com/ryuichiueda/slides_marp/blob/270b1596ff22e81ebd9b158c4660dd64b9a83888/robosys2025/lesson3.md)
	* [ryuichiueda/robosys2025/lesson6.md](https://github.com/ryuichiueda/slides_marp/blob/270b1596ff22e81ebd9b158c4660dd64b9a83888/robosys2025/lesson6.md)

2025 Hidenori Koseki

