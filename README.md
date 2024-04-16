![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# Setup

* Setup python venv (for example name it `.sky130` with ```python3 -m venv .sky130```)
* Activate python venv (```source .sky130/bin/activate```)
* Install volare (```pip3 install volare```)
* Install specific PDK version using volare (```volare enable --pdk sky130 3af133706e554a740cfe60f21e773d9eaa41838c```)
* Add `PDK_ROOT` environment variable (add ```export PDK_ROOT=$(volare path)``` at the end of `.sky130/bin/activate` configuration file)
* Install [magic](http://opencircuitdesign.com/magic/), [ngspice](https://ngspice.sourceforge.io)

NOTE: don't forget to activate python venv every time after reboot / restart (```source .sky130/bin/activate```).
* Open design ```magic -rcfile $PDK_ROOT/sky130A/libs.tech/magic/sky130A.magicrc mag/current_cmp.mag```

# Useful Magic commands
* ```what```
* ```show``` dimensions of the selected node (the same as `b` key)
* ```copy right 300``` copies the selected node by 300um right

# Drawing

* All connections (pins) including power, ground, digital and analog outputs are `metal4`.
* Digital input/outputs are on the **top** from left to right: `uio_oe[7..0]`, `uio_out[..]`, `uo_out[..]`, `uio_in[..]`, `ui_in[..]`, `rst_n`, `clk`, `ena`
* `VPWR` is the leftmost, `VGND` is roughly below and between `uio_out[3]` and `uio_out[2]`
* Analog outputs are at the **bottom** from left to right: `ua[7..0]`
* All unused pins must be tied to `VGND`
* sky 130 https://skywater-pdk.readthedocs.io/en/main/rules/assumptions.html

# Tiny Tapeout Analog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Analog projects

For specifications and instructions, see the [analog specs page](https://tinytapeout.com/specs/analog/).

*Note*: Analog designs are currently in beta. There's a small chance that the changes will change before the deadline for Tiny Tapeout 6, or that we will have to postpone the analog design support to a future shuttle. If you have any questions, please join the [Tiny Tapeout Discord](https://tinytapeout.com/discord) and ask in the #analog channel.

## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)

## What next?

- [Submit your design to the next shuttle](https://app.tinytapeout.com/).
- Edit [this README](README.md) and explain your design, how it works, and how to test it.
- Share your project on your social network of choice:
  - LinkedIn [#tinytapeout](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout) [@TinyTapeout](https://www.linkedin.com/company/100708654/)
  - Mastodon [#tinytapeout](https://chaos.social/tags/tinytapeout) [@matthewvenn](https://chaos.social/@matthewvenn)
  - X (formerly Twitter) [#tinytapeout](https://twitter.com/hashtag/tinytapeout) [@matthewvenn](https://twitter.com/matthewvenn)
