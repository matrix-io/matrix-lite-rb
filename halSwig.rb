# Will add more examples to match the python version: https://github.com/matrix-io/matrix-lite-py/blob/master/swigExamples.py
require './build/halSwig'

# EVERLOOP EXAMPLE
everloop = HalSwig::Everloop.new
leds = []

for i in 0..everloop.ledCount-1 do
    leds << HalSwig::Led.new(2,2,0,0)
end

everloop.set(leds)

# IMU EXAMPLE
# imu = HalSwig::Imu.new()
# while true
#     puts imu.read.pitch
#     puts imu.read.roll
# end

