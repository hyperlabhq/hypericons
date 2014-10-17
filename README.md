Custom font icons used by Hyperlink projects.


## Where the icons come from?
The icons are mostly "borrowed" from other great icon collections, including:

- Most from FontAwesome

- Some Chinese company icons are from FontDiao (xiaomi.svg, douban.svg)


## How to get the svg icon file?

The svg files can be generated from [IcoMoon](https://icomoon.io/app/#/select).


## How to add new icons?

Just copy the svg file into `vectors` folder, and run `fontcustom compile` to generate 
font files and scss/Android/iOS assert files.


## Usage

### Android

The file `strings-icons.xml` is used to provide icon values.

### iOS

A property list file `HyperIcons.plist` is provided to look up icon unicode string.
For example, to load the mapping in Swift:

```swift
let path = NSBundle.mainBundle().pathForResource("HyperIcons", ofType: "plist")
dict = NSDictionary(contentsOfFile: path!)
let iconValue: String = dict.objectForKey("twitter") as String
```

Then you can use the `iconValue` as UILabel text, and set font to `hypericons`.
