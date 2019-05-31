# retdec-docker
retdec

Dockerの作成・起動

```
$ sudo bash
$ docker build -t <Docker Image名> .
$ docker run -it -d --name retdec <Docker Image名>
$ docker ps
```

Decompileの実行

```
$ sudo bash
$ retdec.sh <検体のパス> <結果ソースファイル出力ディレクトリ>
```

