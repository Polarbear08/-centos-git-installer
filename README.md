# git-installer

## 対応OS
* CentOS7.2+ ([centos:7.2](https://hub.docker.com/layers/centos/library/centos/7.2.1511/images/sha256-9aec5c5fe4ba9cf7a8d2a50713dd197c3b0cbd5f5fcd03babe4c1d65c455dabf)以降)
* CentOS8.1+ ([centos:8.1](https://hub.docker.com/layers/centos/library/centos/8.1.1911/images/sha256-9e0c275e0bcb495773b10a18e499985d782810e47b4fce076422acb4bc3da3dd)以降)

## 使用方法
任意のディレクトリに `installer.sh` を保存し、ルート権限で以下を実行してください。
`/usr/local/bin` に指定バージョンのGitがインストールされます。
```
# ./installer.sh <MAJOR>.<MINOR>.<PATCH>
```

例) バージョン2.29.2をインストールする場合
```
# ./installer.sh 2.29.2
```

インストールが正常に完了すると以下のようにメッセージが表示されます。数分程度かかるので気長にお待ちください。

```
git version 2.29.2 was successfully installed
```

## 注意事項
* 本プログラムの利用によって生じたいかなる不利益に対しても責任を負いません。
* 本プログラムは予告なく変更・削除される可能性があります。

以上を留意のうえご使用ください。

## 更新履歴
|バージョン|日付|内容|
|:--:|:--:|:--|
|1.0.0|2020-12-27|公開|