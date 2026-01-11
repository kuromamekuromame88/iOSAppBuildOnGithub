# iOSアプリをgithubだけで開発

## 作成するに当たって

通常の場合、iOSのアプリ開発には、Macデバイス上で動作しているXcodeが必須でありました。

非MacOSユーザーには開発手段が無いようなものです。

そこで、せめて.ipaファイルが作れればという目標で、github Actionsの仮想MacOSに付属しているXcodeを起動させて、.ipaにソースをアーカイブさせます。

.ipaファイルが完成すれば、AltStoreなどのサイドロードアプリで、自分のアカウントで再度署名を行うことで、実機で動作させる事ができます。

本リポリトリを作成するに当たって、アプリ作成の基礎として、 twostraws様の simple-swiftuiを利用させていただきました。

[twostraws/simple-swiftui](https://github.com/twostraws/simple-swiftui)

## 使い方

リポジトリにはデフォルトで、サンプルのアプリを作成しておきました。swiftによって書かれているので、サポートが終わらない限り当分使えると思います。

ソースが編集されてcomitされると、それをトリガーにビルド処理が実行されるようになっています。これらの挙動を変えたければ、.github/workflows/内のymlを
