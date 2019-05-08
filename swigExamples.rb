# swigExamples.rb contains example code of the direct SWIG implementation of MATRIX HAL. 
# matrix-hal-swig repository: https://github.com/matrix-io/matrix-hal-swig

require './build/halSwig'

## EVERLOOP EXAMPLE ##
everloop = HalSwig::Everloop.new
leds = []

for i in 0..everloop.ledCount-1 do
    leds << HalSwig::Led.new(1,0,1,0)
end

everloop.set(leds)

## IMU EXAMPLE ##
# imu = HalSwig::Imu.new
# while true
#     data = imu.read
#     puts "accel_X: #{data.accel_x}"
#     puts "accel_Y: #{data.accel_y}"
#     puts "accel_Z: #{data.accel_z}"

#     puts "gyro_X:  #{data.gyro_x}"
#     puts "gyro_Y:  #{data.gyro_y}"
#     puts "gyro_Z:  #{data.gyro_z}"

#     puts "yaw:     #{data.yaw}"
#     puts "pitch:   #{data.pitch}"
#     puts "roll:    #{data.roll}"

#     puts "mag_X:  #{data.mag_x}"
#     puts "mag_Y:  #{data.mag_y}"
#     puts "mag_Z:  #{data.mag_z}"

#     sleep(0.05)
#     puts `clear`
# end

## UV EXAMPLE ##
# uv = HalSwig::Uv.new
# while true
#     puts "UV: #{uv.read.uv}"
#     sleep(1)
#     puts `clear`
# end

## HUMIDITY ##
# humidity = HalSwig::Humidity.new
# while true
#     data = humidity.read
#     puts "Humidity:    #{data.humidity}"
#     puts "Temperature: #{data.temperature}"
#     sleep(1)
#     puts `clear`
# end

## PRESSURE ##
# pressure = HalSwig::Pressure.new
# while true
#     data = pressure.read
#     puts "Altitude:    #{data.altitude}"
#     puts "Pressure:    #{data.pressure}"
#     puts "Temperature: #{data.temperature}"
#     sleep(1)
#     puts `clear`
# end

## GPIO ##
# gpio = HalSwig::Gpio.new

# # # turn pin 0 on
# gpio.setMode(0,1)
# gpio.setFunction(0,0)
# gpio.setDigital(0,1)

# # # change pin 1 servo angle
# gpio.setMode(1,1)
# gpio.setFunction(1,1)
# gpio.setServoAngle(1, 0, 0.6)

# # # edit pin 2 PWM
# gpio.setMode(2,1)
# gpio.setFunction(2,1)
# gpio.setPWM(2, 25, 50)

# # # read pin 3
# gpio.setMode(3,0)
# gpio.setFunction(3,0)
# while true
#     puts(gpio.getValue(3))
#     sleep(0.05)
# end