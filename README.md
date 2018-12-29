# LocationOrContactManager

>Swift4.2 封装获取用户的通讯录以及定位信息

## Features

- 完美支持Swift4.2编译
- 集成使用简单，二次开发扩展强大


## Requirements

- iOS 9+
- Xcode 9+
- Swift 4.0+
- iPhone

## Example

        //1、获取通讯录
        @IBAction func getContact(_ sender: Any) {
            ContactManager().getContacts()
        }
        
        //2、获取定位信息
        @IBAction func getLocation(_ sender: Any) {
        
            LocationManager.shared.getLocationInfo { (error, locationModel) in
               
               print(locationModel?.latitude, locationModel?.longitude, locationModel?.placemark?.addressDictionary!["FormattedAddressLines"],  locationModel?.placemark?.addressDictionary!["Name"])
        
                }
        }

更详细集成方法，根据实际的例子请查看源代码中的demo
注意：因为iOS 9.o0之后，获取用户的隐私权限，需要用户允许，所以在plist文件需要增加提示信息
Privacy - Contacts Usage Description                        允许应用访问通讯录
Privacy - Location When In Use Usage Description    APP需要访问您的定位来提供周边信息



