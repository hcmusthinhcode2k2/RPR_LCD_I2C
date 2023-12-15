#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/uart1.h"
#include "LCD_I2C.h"
#include "stick/SystemTick.h"
#include <inttypes.h>
#include "RPR0521RS_I2C.h"

int main(void) 
{
    // initialize the device
    tick_timer_t Tick1, Tick2;

    SYSTEM_Initialize();
    SystemTick_Init();
    Tick_Timer_Reset(Tick1);
    Tick_Timer_Reset(Tick2);
    LCD_I2C_Init(16, 2, 0);
    LCD_I2C_clear();
    LCD_I2C_backlight();
    RPR0521RS_I2C_Init();
    LED1_SetLow();
    LED2_SetLow();
    uint16_t psDataNew=0;
    uint16_t counter=0;
    while (1) 
    {

        if (Tick_Timer_Is_Over_Ms(Tick1, 100))
            LED1_Toggle();
            LED2_Toggle();
        if (Tick_Timer_Is_Over_Ms(Tick2, 1000))
        {
            uint16_t psDataOld=readSensor(RPR_0521RS_REG_PS_DATA_LSB);
            if (psDataNew<psDataOld)
            {
                counter++;
            }
            psDataNew=psDataOld;
            LCD_I2C_clear();
            char buffer1[16];
            char buffer2[17];
            sprintf(buffer1, "PS:%u",  psDataOld);
            sprintf(buffer2, "CT:%u", counter);
            LCD_I2C_setCursor(0,0);
            LCD_I2C_print(buffer1);
            LCD_I2C_setCursor(8,0);
            LCD_I2C_print(buffer2);
            if (psDataOld<1000)
            {
              LCD_I2C_setCursor(0, 1);
              LCD_I2C_print("far ");
             RGB_RED_SetLow();
            } else 
            {
                      LCD_I2C_setCursor(0, 1);
                      LCD_I2C_print("near ");
                      RGB_RED_SetHigh();
            }
        }
    }
    return 1;
}
