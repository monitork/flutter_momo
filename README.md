# flutter_momo

This plugin make MoMo payment method into your app.

## Getting Started

### Android

Config your AndroidManifest.xml
add tools:replace="android:label" inside <application> open tag
add xmlns:tools="http://schemas.android.com/tools" inside <manifest> open tag
```xml
<uses-permission android:name="android.permission.INTERNET"/>
```



### IOS

1. Config your Plist file.

```xml
<key>CFBundleURLTypes</key>
<array>
  <dict>
    <key>CFBundleURLName</key>
    <string></string>
    <key>CFBundleURLSchemes</key>
    <array>
      <string>momopartnerscheme001</string>
    </array>
  </dict>
</array>
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>momo</string>
</array>
<key>NSAppTransportSecurity</key>
<dict>
  <key>NSAllowsArbitraryLoads</key>
  <true/>
</dict>
```

2. Import SDK AppDelegate instance

```swift
import MomoiOSSwiftSdk

func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
    MoMoPayment.handleOpenUrl(url: url, sourceApp: sourceApplication!)
    return true
}

func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
    MoMoPayment.handleOpenUrl(url: url, sourceApp: "")
    return true
}
```