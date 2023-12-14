#include "RPR0521RS_I2C.h"


 void RPR0521RS_I2C_Init(void)
 {
    uint8_t modeControlVal = RPR_0521RS_REG_MODE_CONTROL ;
    uint8_t psControlVal   = RPR_0521RS_REG_PS_CONTROL;
    RPR0521RS_I2C_writeNByte(RPR_0521RS_DEVICE_ADDRESS,modeControlVal,1);
    RPR0521RS_I2C_writeNByte(RPR_0521RS_DEVICE_ADDRESS,psControlVal,1);
 }
 uint16_t readSensor(uint8_t regAddr)
 {
    uint8_t reg = regAddr;
    uint8_t data[2] = {0};
    RPR0521RS_I2C_writeNByte(RPR_0521RS_DEVICE_ADDRESS, &reg, 1);
    RPR0521RS_I2C_readNByte(RPR_0521RS_DEVICE_ADDRESS, data, 2);
    return (data[1] << 8) | data[0];
 }
