# plusコマンド
![test](https://github.com/cyanhide/robosys2025/actions/workflows/test.yml/badge.svg)

指定した正の整数 n に対して1からnまでの整数の合計を計算し、結果を三桁区切りで出力する。

## 必要なソフトウェア
* python
	* テスト済み:3.7~3.10

## 使い方 
```
$ seq 100 | ./plus
5,050

$ ./plus < nums
6,000
```

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

## テスト環境   
以下の環境で動作確認を行っています。

* OS: Ubuntu 20.04
* 実行環境: GitHub Actions


## ライセンス ##
* このソフトウェアパッケージは, 3条項BSDライセンスの下, 再頒布および使用が許可されます.
* このパッケージのコードは, 下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）の一部を本人の許可を得て自身の著作としたものです. 
	* [ryuichiueda/robosys2025/lesson4.md](https://github.com/ryuichiueda/slides_marp/blob/67e3251ff20904bf2b3d32d32c1017cb80daac13/robosys2025/lesson4.md)
	* [ryuichiueda/robosys2025/lesson5.md](https://github.com/ryuichiueda/slides_marp/blob/67e3251ff20904bf2b3d32d32c1017cb80daac13/robosys2025/lesson5.md)

2025 Hidenori Koseki




