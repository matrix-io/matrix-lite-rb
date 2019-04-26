# MATRIX-Lite-RB
**Under Development**
> This is a quick & dirty implementation. Looking to improve setup in the near future.

MATRIX Lite RB is a library that allows users of varying skill levels to easily program their MATRIX Device.

# Roadmap
> Examples not yet documented.

This roadmap is for achieving a basic implementation of the checklist below. As this package develops, the API will improve and may change

- [x] Leds
- [x] Sensors
  - [x] IMU
  - [x] Humidity
  - [x] Pressure
  - [x] UV
- [x] GPIO
- [ ] Microphones
  - [ ] Hal Mics
  - [ ] Alsa Mics

# Installation

Ensure you have a Raspberry Pi, attached with a MATRIX device, that's flashed with [Raspbian Stretch](https://www.raspberrypi.org/blog/raspbian-stretch/).

## 1. Install MATRIX HAL
https://matrix-io.github.io/matrix-documentation/matrix-hal/getting-started/installation-package/

## 2. Install Ruby
```
sudo apt-get install ruby-full
```

## 3. Install SWIG 
```bash
sudo apt-get install swig
```

## 4. Clone & Build matrix-lite-rb
```
git clone --recurse-submodules https://github.com/matrix-io/matrix-lite-rb
cd matrix-lite-rb/matrix-hal-swig && git checkout master && cd ..
make clean && make
```

# Usage
You can use `ruby halSwig.rb` to see a basic led example. The code inside that file will contain untouched examples of the [HAL Swig wrapper](https://github.com/matrix-io/matrix-hal-swig).

Similar to [matrix-lite-py](https://github.com/matrix-io/matrix-lite-py), we will eventaully provide an abstracted library for this.
