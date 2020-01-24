<!-- MARKDOWN LINKS & IMAGES -->
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
[attractor]: https://github.com/julianrubisch/attractor-ruby
[forks-shield]: https://img.shields.io/github/forks/julianrubisch/attractor-ruby.svg?style=flat-square
[forks-url]: https://github.com/julianrubisch/attractor-ruby/network/members
[stars-shield]: https://img.shields.io/github/stars/julianrubisch/attractor-ruby.svg?style=flat-square
[stars-url]: https://github.com/julianrubisch/attractor-ruby/stargazers
[issues-shield]: https://img.shields.io/github/issues/julianrubisch/attractor-ruby.svg?style=flat-square
[issues-url]: https://github.com/julianrubisch/attractor-ruby/issues
<!-- [license-shield]: https://img.shields.io/github/license/julianrubisch/attractor-ruby.svg?style=flat-square -->
<!-- [license-url]: https://github.com/julianrubisch/attractor-ruby/blob/master/LICENSE.txt -->

<!-- PROJECT SHIELDS -->

[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
<!--[![MIT License][license-shield]][license-url]-->


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/julianrubisch/attractor">
    <img src="https://user-images.githubusercontent.com/4352208/65411858-3dc84200-ddee-11e9-99b6-c9cdbeb533c5.png" alt="Logo" width="80" height="80">
  </a>

  <h2 align="center">Attractor Ruby Plugin</h2>
</p>

[Attractor][attractor] plugin for the Ruby programming language and its ecosystem


<!-- TABLE OF CONTENTS -->
## Table of Contents

- [Table of Contents](#table-of-contents)
- [Getting Started](#getting-started)
  - [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

<!-- GETTING STARTED -->
## Getting Started

This is a plugin to help you visualize code complexity metrics for your Ruby code. If you are not familiar with [Attractor][attractor], take a look at the main repo first.

### Installation

Add this to your application's Gemfile:

```ruby
gem 'attractor'
gem 'attractor-ruby'
```

And then execute:

```sh
bundle install
```

<!-- USAGE EXAMPLES -->
## Usage

To create a HTML report in `attractor_output/index.html`, try

```sh
bundle exec attractor report
```

If you'd like to specify a directory, use the file prefix option:

```sh
bundle exec attractor report --file_prefix app/models
```

Or shorter:

```sh
bundle exec attractor report -p app/models
```

Watch for file changes:

```sh
bundle exec attractor report -p app/models --watch
```

Serve at http://localhost:7890:

```sh
bundle exec attractor serve -p app/models
```

Enable rack-livereload:

```sh
bundle exec attractor serve -p app/models --watch
```

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
<!--## License -->

<!-- Distributed under the MIT License. See `LICENSE` for more information. -->

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://www.andrewmason.me/"><img src="https://avatars1.githubusercontent.com/u/18423853?v=4" width="100px;" alt=""/><br /><sub><b>Andrew Mason</b></sub></a><br /><a href="https://github.com/julianrubisch/attractor-ruby/commits?author=andrewmcodes" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
