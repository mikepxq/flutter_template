/**
1.初始项目
  跳过环境配置
  https://flutter.cn/docs/get-started/install/macos
  flutter create flutter_template
  用xcode打开 ios/Runner.xcworkspace
  然后 运行调试
2.环境
  单版本全局环境变量 .zshrc
  export PATH="$HOME/work/env/flutter/bin:$PATH"
  2.1 fvm 版本管理器
    brew tap leoafarias/fvm
    brew install fvm
  2.2 .zshrc
    export PUB_HOSTED_URL=http://mirrors.cnnic.cn/dart-pub
    export FLUTTER_STORAGE_BASE_URL=http://mirrors.cnnic.cn/flutter 
    export FVM_DIR="$HOME/.fvm"
    source "/usr/local/opt/fvm/init.sh"
*/