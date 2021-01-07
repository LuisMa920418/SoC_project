
#include "FIR_driver.h"
#include "filter_L.h"

void set_custom_ip_register(u32 baseaddr, u32 offset, u32 value)
{
Xil_Out32(baseaddr + offset, value);
}
u32 get_custom_ip_register(u32 baseaddr, u32 offset)
{
u32 temp = 0;
temp = Xil_In32(baseaddr + offset);
return (temp);
}



void toggle_register( u32 mask,u32 baseaddr)
{
    //set the register
    set_custom_ip_register(baseaddr, control_reg_offset, mask);
   // usleep(1);
    //clear the register
    set_custom_ip_register(baseaddr, control_reg_offset, 0);
}


void charge_coef(filter filter_instance)
{
   
   
    //clear the sihft register to start for first position, by toggling the reset shift register
    toggle_register( mask_rst_shift_register,baseaddr);
    

    //put the coefficient data
    for (int i = 0; i < 40; i++)
    {
        printf("Setting coef number: %d\n\r", i+1);
        set_custom_ip_register(baseaddr, coef_register_offset, filter_coef[i]);
      usleep(1);

     //toggle the storage enable port in the fir
      toggle_register( mask_en_store_coef,baseaddr);
 

    //  sleep(10);
     //wait for a time to continue
         usleep(1);
    }
    
 printf("Coefficients loaded\n\r");
}

u32 filter_out(u32 data,u32 baseaddr)
{
    //inputs one sample to the register and reads the results of the filtering


    //write the sig_in register
    set_custom_ip_register(baseaddr, signal_offset, data);
    usleep(1);
    //trigger the toggle to store
    toggle_register( mask_en_filtering,baseaddr);
    //wait for sometime
    //usleep(2);
    //read the result
    u32 result=0;
    result =  get_custom_ip_register(baseaddr, signal_offset);
   // usleep(2);
    return (result);
}


