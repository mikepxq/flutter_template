/**单独记录环境配置
1. fvm 版本管理器
  brew tap leoafarias/fvm
  brew install fvm
2. .zshrc
  // export PUB_HOSTED_URL=http://mirrors.cnnic.cn/dart-pub
  // export FLUTTER_STORAGE_BASE_URL=http://mirrors.cnnic.cn/flutter 
  export FVM_DIR="$HOME/.fvm"
  // source "/usr/local/opt/fvm/init.sh"
 */

/**
1.初始项目
  参照：https://flutter.cn/docs/get-started/install/macos
    flutter create flutter_template
    用xcode打开 ios/Runner.xcworkspace
2.统一环境
  flutter 项目默认代码开发环境比较一致，暂无需处理
3.结构说明
  apis
  参考：https://pub.flutter-io.cn/packages/http/install
    fvm dart pub add http
  assets
  screens
  router
    参照:https://github.com/flutter/samples/tree/main/navigation_and_routing
  i18n
  store
4.ui
5.基础功能实现
5.1. 权限管理
  需要 token 持续化存储





*/