# Solar Project

A comprehensive icon library offering multi-style icons designed to be modular, flexible, and adaptable to various frameworks. Solar is developed to meet the needs of modern web and mobile applications with 1,246 unique icons and over 7,476 total variations.

## Why Choose Solar?
- **Extensive Collection**: Over 1,200 unique icons across multiple categories.
- **Multi-Style Support**: Each icon is available in six distinct styles: Bold, Linear, Outline, BoldDuotone, LineDuotone, and Broken.
- **Multi-Framework Compatibility**: Initial support for React, with plans to extend to Vue, Angular, and others.
- **Well-Structured and Maintainable Codebase**: Ensures the library is easy to expand and maintain.

## Table of Contents
- [Usage](#usage)
  - [Web](#web)
  - [React](#react)
  - [Vue](#vue)
  - [Angular](#angular)
- [Installation](#installation)
- [Packages](#packages)
  - [React](#react)
- [Contributing](#contributing)
- [License](#license)
- [Credits](#credits)

## Usage
Solar icons are available as SVG files, making them versatile for use in various ways such as `img`, `background-image`, inline, `object`, `embed`, and `iframe`.

### Web
Solar can be implemented directly in web projects using the SVG files or JavaScript for additional interactivity.
```sh
npm install @solar/icons
```

### React
The React package allows easy integration of Solar icons into React applications.
```sh
npm install @solar/react
```
For detailed documentation, visit the [React package README](./packages/react/README.md).

### Vue
**To be developed**.

### Angular
**To be developed**.

## Installation
To install the React package:
```sh
npm install @solar/react
```
Or install a specific package for your framework.

## Packages

### React
This package provides ready-to-use React components, offering flexibility with server-side rendering (SSR) and client-side rendering (CSR).
- **Modular Imports**: Import individual icons for optimized builds.
- **Global Styling**: Manage global icon properties using `SolarProvider` and `useSolar()`.

```js
import { Home } from '@solar/react';
```

## Icon Categories
Solar includes the following categories with icons available in all six styles:
| Category           | Number of Icons |
|--------------------|-----------------|
| arrows             | 67              |
| arrows-action      | 58              |
| astronomy          | 32              |
| building           | 7               |
| business           | 19              |
| call               | 21              |
| devices            | 89              |
| faces              | 21              |
| files              | 15              |
| folders            | 14              |
| food               | 18              |
| hands              | 5               |
| home               | 35              |
| it                 | 31              |
| like               | 17              |
| list               | 28              |
| map                | 37              |
| medicine           | 32              |
| messages           | 48              |
| money              | 35              |
| nature             | 9               |
| notes              | 23              |
| notifications      | 7               |
| parts              | 19              |
| school             | 29              |
| search             | 12              |
| security           | 46              |
| settings           | 15              |
| shopping           | 27              |
| sports             | 41              |
| text-formatting    | 33              |
| time               | 27              |
| tools              | 29              |
| ui                 | 139             |
| users              | 22              |
| video              | 103             |
| weather            | 36              |

## License
This libraries are licensed under the [MIT License](./LICENSE), making it free for both personal and commercial use. However, the Solar icon pack is licensed under **CC BY 4.0** by **480 Design**, which allows commercial use with attribution. Please visit [480 Design's Figma page](https://www.figma.com/community/file/1166831539721848736) to explore the original icon set.

## Acknowledgements
- **480 Design** for creating the Solar icon pack and allowing its adaptation and redistribution under CC BY 4.0.
- **Phosphor Icons** for inspiring the design and structure of the React package.
- **Lucide Icons** for serving as inspiration for the overall project structure, monorepo organization, and documentation approach, demonstrating the importance of clear documentation and easy usage.

## Contributing
Currently, the project is developed and maintained by a single developer. Contributions are welcome! If you wish to contribute, please follow our [contribution guidelines](./CONTRIBUTING.md).

## Credits
A big thank you to **480 Design**, **Phosphor Icons**, and **Lucide Icons** for their inspiration and contributions to the open-source community.
