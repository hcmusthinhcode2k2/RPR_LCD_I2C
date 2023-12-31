#ifndef RPR0521RS_I2C_H
#define RPR0521RS_I2C_H

#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#include "RPR0521RS_I2C_Cfg.h"

//RPR_0521RS register map
#define RPR_0521RS_REG_SYSTEM_CONTROL                 0x40
#define RPR_0521RS_REG_MODE_CONTROL                   0x41
#define RPR_0521RS_REG_ALS_PS_CONTROL                 0x42
#define RPR_0521RS_REG_PS_CONTROL                     0x43
#define RPR_0521RS_REG_PS_DATA_LSB                    0x44
#define RPR_0521RS_REG_PS_DATA_MSB                    0x45
#define RPR_0521RS_REG_ALS_DATA0_LSB                  0x46
#define RPR_0521RS_REG_ALS_DATA0_MSB                  0x47
#define RPR_0521RS_REG_ALS_DATA1_LSB                  0x48
#define RPR_0521RS_REG_ALS_DATA1_MSB                  0x49
#define RPR_0521RS_REG_INTERRUPT                      0x4A
#define RPR_0521RS_REG_PS_TH_LSB                      0x4B
#define RPR_0521RS_REG_PS_TH_MSB                      0x4C
#define RPR_0521RS_REG_PS_TL_LSB                      0x4D
#define RPR_0521RS_REG_PS_TL_MSB                      0x4E
#define RPR_0521RS_REG_ALS_DATA0_TH_LSB               0x4F
#define RPR_0521RS_REG_ALS_DATA0_TH_MSB               0x50
#define RPR_0521RS_REG_ALS_DATA0_TL_LSB               0x51
#define RPR_0521RS_REG_ALS_DATA0_TL_MSB               0x52
#define RPR_0521RS_REG_PS_OFFSET_LSB                  0x53
#define RPR_0521RS_REG_PS_OFFSET_MSB                  0x54
#define RPR_0521RS_REG_MANUFACT_ID                    0x92

//RPR_0521RS default values
#define RPR_0521RS_DEVICE_ADDRESS                     0x38
#define RPR_0521RS_PART_ID                            0x0A
#define RPR_0521RS_MANUFACT_ID                        0xE0

//RPR_0521RS settings
//RPR_0521RS_REG_MODE_CONTROL                                         MSB   LSB   DESCRIPTION
#define RPR_0521RS_ALS_OFF                            0b00000000  //  7     7     ambient light sensor (ALS) on standby
#define RPR_0521RS_ALS_ON                             0b10000000  //  7     7     ambient light sensor (ALS) enabled
#define RPR_0521RS_PS_OFF                             0b00000000  //  6     6     proximity sensor (PS) on standby
#define RPR_0521RS_PS_ON                              0b01000000  //  6     6     proximity sensor (PS) enabled
#define RPR_0521RS_PS_PULSE_200_US                    0b00000000  //  5     5     PS pulse width: 200 us (typical)
#define RPR_0521RS_PS_PULSE_330_US                    0b00100000  //  5     5                     330 us (typical)
#define RPR_0521RS_PS_NORMAL                          0b00000000  //  4     4     normal PS operating mode
#define RPR_0521RS_PS_DOUBLE                          0b00010000  //  4     4     double measurement PS operating mode
#define RPR_0521RS_MEAS_TIME_STBY_STBY                0b00000000  //  3     0     measurement time: ALS standby,  PS standby
#define RPR_0521RS_MEAS_TIME_STBY_10_MS               0b00000001  //  3     0                       ALS standby,  PS 10 ms
#define RPR_0521RS_MEAS_TIME_STBY_40_MS               0b00000010  //  3     0                       ALS standby,  PS 40 ms
#define RPR_0521RS_MEAS_TIME_STBY_100_MS              0b00000011  //  3     0                       ALS standby,  PS 100 ms
#define RPR_0521RS_MEAS_TIME_STBY_400_MS              0b00000100  //  3     0                       ALS standby,  PS 400 ms
#define RPR_0521RS_MEAS_TIME_100_MS_50_MS             0b00000101  //  3     0                       ALS 100 ms,   PS 50 ms
#define RPR_0521RS_MEAS_TIME_100_MS_100_MS            0b00000110  //  3     0                       ALS 100 ms,   PS 100 ms
#define RPR_0521RS_MEAS_TIME_100_MS_400_MS            0b00000111  //  3     0                       ALS 100 ms,   PS 400 ms
#define RPR_0521RS_MEAS_TIME_400_MS_50_MS             0b00001000  //  3     0                       ALS 400 ms,   PS 50 ms
#define RPR_0521RS_MEAS_TIME_400_MS_100_MS            0b00001001  //  3     0                       ALS 400 ms,   PS 100 ms
#define RPR_0521RS_MEAS_TIME_400_MS_STBY              0b00001010  //  3     0                       ALS 400 ms,   PS standby
#define RPR_0521RS_MEAS_TIME_400_MS_400_MS            0b00001011  //  3     0                       ALS 400 ms,   PS 400 ms
#define RPR_0521RS_MEAS_TIME_50_MS_50_MS              0b00001100  //  3     0                       ALS 50 ms,   PS 50 ms
//RPR_0521RS_REG_ALS_PS_CONTROL
#define RPR_0521RS_ALS_DATA0_GAIN_1                   0b00000000  //  5     4     ALS DATA0 gain: x1
#define RPR_0521RS_ALS_DATA0_GAIN_2                   0b00010000  //  5     4                     x2
#define RPR_0521RS_ALS_DATA0_GAIN_64                  0b00100000  //  5     4                     x64
#define RPR_0521RS_ALS_DATA0_GAIN_128                 0b00110000  //  5     4                     x128
#define RPR_0521RS_ALS_DATA1_GAIN_1                   0b00000000  //  3     2     ALS DATA1 gain: x1
#define RPR_0521RS_ALS_DATA1_GAIN_2                   0b00000100  //  3     2                     x2
#define RPR_0521RS_ALS_DATA1_GAIN_64                  0b00001000  //  3     2                     x64
#define RPR_0521RS_ALS_DATA1_GAIN_128                 0b00001100  //  3     2                     x128
#define RPR_0521RS_LED_CURRENT_25_MA                  0b00000000  //  1     0     LED current:  25 mA
#define RPR_0521RS_LED_CURRENT_50_MA                  0b00000001  //  1     0                   50 mA
#define RPR_0521RS_LED_CURRENT_100_MA                 0b00000010  //  1     0                   100 mA
#define RPR_0521RS_LED_CURRENT_200_MA                 0b00000011  //  1     0                   200 mA
//RPR_0521RS_REG_PS_CONTROL
#define RPR_0521RS_PS_GAIN_1                          0b00000000  //  5     4     PS gain:  x1
#define RPR_0521RS_PS_GAIN_2                          0b00010000  //  5     4               x2
#define RPR_0521RS_PS_GAIN_4                          0b00100000  //  5     4               x4


 void RPR0521RS_I2C_Init(void);
 uint16_t readSensor(uint8_t regAddr);


#endif