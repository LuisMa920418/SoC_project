
#ifndef FIR_driver
#define FIR_driver

#include <stdio.h>
#include "xil_io.h"

#include "filter_L.h"
#define AXI_FIR_R_addres XPAR_FIR_RELOADABLE_V1_0_0_BASEADDR
#define AXI_FIR_L_addres XPAR_FIR_RELOADABLE_V1_0_1_BASEADDR


#define signal_offset 0x00 //wrtiting i the adrres modifies signal_in and reading from, gets signal_out
#define coef_register_offset 0x04
#define control_reg_offset 0x08


//masks for toggling the registers
#define mask_en_store_coef 0X02
#define mask_en_filtering 0X01
#define mask_rst_shift_register 0X04


// Function prototypes
void set_custom_ip_register(u32 baseaddr, u32 offset, u32 value);
u32 get_custom_ip_register(u32 baseaddr, u32 offset);
void toggle_register( u32 mask,u32 baseaddr); //generated a rising edge in the regiser specified by the mask

u32 filter_out(u32 data,u32 baseaddr);






#endif
