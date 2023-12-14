#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/uart1.h"
#include "LCD_I2C.h"
#include "stick/SystemTick.h"
#include <inttypes.h>
#define RPR0521RS_ADDR                 (0x38)    // 7bit Addrss
#define RPR0521RS_PART_ID_VAL                      (0x0A)
#define RPR0521RS_MANUFACT_ID_VAL                  (0xE0)

#define RPR0521RS_SYSTEM_CONTROL                   (0x40)
#define RPR0521RS_MODE_CONTROL                     (0x41)
#define RPR0521RS_ALS_PS_CONTROL                   (0x42)
#define RPR0521RS_PS_CONTROL                       (0x43)
#define RPR0521RS_PS_DATA_LSB                      (0x44)
#define RPR0521RS_ALS_DATA0_LSB                    (0x46)
#define RPR0521RS_MANUFACT_ID                      (0x92)
  
#define MODE_CONTROL      0x41
#define ALS_PS_CONTROL    0x42
#define PS_DATA_LSB       0x44
#define ALS_DATA0_LSB     0x46
#define ALS_DATA1_LSB     0x48
#define ALS_PS_CONTROL    0x42
#define ALS_PS_CONTROL    0x43
#define PS_CONTROL             0x43
#define PS_DATA_LSB            0x44
#define ALS_DATA0_LSB          0x46

void initSensor(void) {
    uint8_t modeControlVal =MODE_CONTROL;
    uint8_t alsPsControlVal =ALS_PS_CONTROL;
    uint8_t psControlVal =PS_CONTROL ;

    i2c_write1ByteRegister(RPR0521RS_ADDR, MODE_CONTROL, modeControlVal);
    i2c_write1ByteRegister(RPR0521RS_ADDR, ALS_PS_CONTROL, alsPsControlVal);
    i2c_write1ByteRegister(RPR0521RS_ADDR, PS_CONTROL, psControlVal);
}

uint16_t readSensorData(uint8_t regAddr) {
    uint8_t reg = regAddr;
    uint8_t data[2] = {0};
    i2c_writeNBytes(RPR0521RS_ADDR, &reg, 1);
    i2c_readNBytes(RPR0521RS_ADDR, data, 2);
    return (data[1] << 8) | data[0];
}


/*
                         Main application
 */
int main(void) {
    // initialize the device
    tick_timer_t Tick1, Tick2;

    SYSTEM_Initialize();
    SystemTick_Init();
    Tick_Timer_Reset(Tick1);
    Tick_Timer_Reset(Tick2);

    //        LCD_I2C_Init(16, 2, 0); // Initialize the LCD
    //    //    LCD_I2C_clear(); // Clear the LCD
    //    //    LCD_I2C_home(); // Set the cursor position to (0, 0)
    //         LCD_I2C_setCursor(0,0);
    //    //  
    LCD_I2C_Init(16, 2, 0);
    LCD_I2C_clear();
    LCD_I2C_setCursor(0, 0);
    LCD_I2C_print("mode");
    LCD_I2C_setCursor(0, 1);
    LCD_I2C_print("LCD");
    LCD_I2C_backlight();
   
    initSensor();
    LED1_SetHigh();
    LED2_SetLow();
    while (1) {
        //        // Add your application code

        if (Tick_Timer_Is_Over_Ms(Tick1, 100))
            LED1_Toggle();

        if (Tick_Timer_Is_Over_Ms(Tick2, 1000))
        {
//            char buffer[16];
//            uint8_t   pdata=0x92;
//            i2c_writeNBytes(RPR0521RS_ADDR  , &pdata, 1);
//            i2c_readNBytes(RPR0521RS_ADDR, &pdata, 1);
////            sprintf(buffer, "T=%04d",Temp);
//            //i2c_readNBytes(RPRO)   
////            i2c_readNBytes(RPR0521RS_PS_DATA_LSB, &pdata, 1);
//            sprintf(buffer, "T=%02x",pdata);
//            LCD_I2C_print(buffer);
                uint16_t psData = readSensorData(PS_DATA_LSB);   
                uint16_t alsData = readSensorData(ALS_DATA0_LSB); 
        
             char buffer[16];
             sprintf(buffer, "PS: %u", psData);
             LCD_I2C_setCursor(0, 0);
              LCD_I2C_clear();
             LCD_I2C_print(buffer);

             sprintf(buffer, "ALS: %u", alsData);
             LCD_I2C_setCursor(0, 1);
//              LCD_I2C_clear();
             LCD_I2C_print(buffer);

        }
        
    }
    return 1;
}
