echo "Welcome to gongmap utilities:"
echo
echo "[1] build runner"
echo "[2] build runner --delete-conflicting-outputs"
echo "[3] Run dev flavor"
echo "[4] Run prod flavor"
echo "[5] dart run flutter_flavorizr"
echo "[6] dart run flutter_launcher_icons"
echo "[7] flutter build web --web-renderer canvaskit --release"
echo "[8] dart run flutter_native_splash:remove"
echo "[9] dart run flutter_native_splash:create"
echo "[11] fastlane aos (dev)"
echo "[12] fastlane ios (dev)"
echo "[13] fastlane aos (prod)"
echo "[14] fastlane ios (prod)"
echo "[15] fastlane aos (prod) on firebase"
echo "[16] fastlane ios (prod) on firebase"
read -p "Run: " selection

case $selection in



    1)
    echo "build_runner"
    dart run build_runner build
    ;;

    2)
    echo "build_runner"
    dart run build_runner build --delete-conflicting-outputs
    ;;

    3)
    echo "Run dev flavor"
    flutter run --flavor dev --target lib/main_dev.dart
    ;;

    4)
    echo "Run prod flavor"
    flutter run --flavor prod --target lib/main_prod.dart
    ;;
    
    5)
    echo "dart run flutter_flavorizr"
    dart run flutter_flavorizr
    ;;

    6)
    echo "dart run flutter_launcher_icons"
    dart run flutter_launcher_icons:main
    ;;

    7)
    echo "flutter build web --web-renderer canvaskit --release"
    flutter build web --web-renderer canvaskit --release
    ;;
    
    8)
    echo "dart run flutter_native_splash:remove"
    dart run flutter_native_splash:remove
    ;;

    9)
    echo "dart run flutter_native_splash:create"
    dart run flutter_native_splash:create
    ;;

    11)
    echo "fastlane aos (dev)"
    cd android && fastlane beta --env dev
    ;;

    12)
    echo "fastlane ios (dev)"
    cd ios && fastlane beta --env dev
    ;;

    13)
    echo "fastlane aos (prod)"
    cd android && fastlane release --env prod
    ;;

    14)
    echo "fastlane ios (prod)"
    cd ios && fastlane release --env prod
    ;;

    15)
    echo "fastlane aos (prod) on firebase"
    cd android && fastlane beta --env prod
    ;;

    16)
    echo "fastlane ios (prod) on firebase"
    cd ios && fastlane beta --env prod
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
