# wrkoutUI

*wrkoutUI* is a design system library of the *wrkout* application written in Swift (utilising Apple's SwiftUI framework).

Its purpose is to generalise the UI throughout the application and make it easier to implement new views by simply reusing the components already described in this package.

## Components

### Typography

Available fonts:
- wrkoutButton
- wrkoutExtraSmall
- wrkoutSmall
- wrkoutMedium
- wrkoutLarge
- wrkoutTitle

Usage:

```objective-c
Text("wrkoutButton")
    .font(.wrkoutButton)
```

![typography](https://user-images.githubusercontent.com/43062515/85478040-7ff2ff80-b589-11ea-803f-f3abed9ebc9c.png)


### Colorgraphy

Available colors:
- wrkoutGray
- wrkoutDarkGray
- wrkoutOcean
- wrkoutBlue
- wrkoutDarkBlue
- wrkoutGreen
- wrkoutOrange
- wrkoutDarkOrange

Usage:

```objective-c
Circle()
    .fill(Color.wrkoutOrange)
```

![colorgraphy](https://user-images.githubusercontent.com/43062515/85478211-d06a5d00-b589-11ea-924c-e796bd2806ff.png)

### Animations

##### Spring Effect

Usage:

```objective-c
AnyView()
  .onTapGesture {
    withAnimation(.springEffect) {
      self.scaleFonts.toggle()
    }
  }
```

### Molecules

Molecules are design components that persist of two or more atoms.

##### WrkoutTextField

Parameters:
- placeHolderText (String)
- textInputBinding (Binding<String)
- errorText (String)
- isSecure (Bool = false)

Components:
- TextField (SecureField if isSecure = true) with *WrkoutInputTextField* modifier
- Text view to display error text

Both wrapped in to a VStack with *leading* alignment.

Usage:
```objective-c
WrkoutTextField(placeHolderText: "This is a wrkout text field",
                textInputBinding: $textBinding,
                errorText: "And its error text")
```

![wrkoutTextField](https://user-images.githubusercontent.com/43062515/85650382-70e87c00-b673-11ea-8de7-944dbc6d2ac3.jpg)


### Styles

#### Button Styles

##### FilledButtonsStyle

Parameters:
- backgroundColor (Color)
- textColor (Color)
- disabled (Bool)

Usage:
```objective-c
Button(action: {}) {
    Text("FilledButtonStyle")
}
.buttonStyle(FilledButtonStyle(backgroundColor: .wrkoutOrange,
                               textColor: .white,                                    
                               disabled: false))
```

![filledButton](https://user-images.githubusercontent.com/43062515/85478324-027bbf00-b58a-11ea-9f8d-8f8cb8e5dd58.png)

### Backgrounds

#### WrkoutBackground

Parameters:
- cornerRadius (CGFloat = 24)
- opacity (Double = 1)

Usage:

```objective-c
AnyView()
  .background(WrkoutBackground())
```

![wrkoutBackground](https://user-images.githubusercontent.com/43062515/85478368-17585280-b58a-11ea-8f2e-424d9f3389de.png)
