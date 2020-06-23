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
                errorText: "And its placehoder text")
```
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
