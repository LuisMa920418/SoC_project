/************************************************************************/
/*																		*/
/*	main.c	--	ZYBO Base System demonstration	 						*/
/*																		*/
/************************************************************************/
/*	Author: Sam Bobrowicz												*/
/*	Copyright 2014, Digilent Inc.										*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		This file contains code for running a demonstration of the		*/
/*		Video output and audio capabilities of the ZYBO.				*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/* 																		*/
/*		2/25/2014(SamB): Created										*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "timer_ps.h"
#include "xparameters.h"
#include "xuartps.h"
#include "audio_fun.h"
#include "xgpio.h"

#include "filter_L.h"
#include "FIR_driver.h"

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/*
 * XPAR redefines
 */
#define AUDIO_IIC_ID XPAR_XIICPS_0_DEVICE_ID
#define AUDIO_CTRL_BASEADDR XPAR_AXI_I2S_ADI_0_S_AXI_BASEADDR
#define SCU_TIMER_ID XPAR_SCUTIMER_DEVICE_ID
#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR
#define INPUT_BASEADDR XPAR_AXI_GPIO_0_BASEADDR
#define OUTPUT_BASEADDR XPAR_AXI_GPIO_1_BASEADDR

XIicPs Iic;

u32 recDataL; /* Left audio data */
u32 recDataR; /* Right audio data */

u32 left,right;

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

int main(void)
{
	//fpass: 9600
	//Fstop: 6000

	//signed int h_low[40];
	//fpass: 12000
	//Fstop: 9600
	// signed int h_high[40];


//	signed int h_high_kaiser_44100 [40]= {-489,-1742,-2254,-1662,-120,1716,2940,2819,1177,-1424,-3823,-4717,-3244,521,5375,9205,9465,3471,-13359,-78053,78053,13359,-3471,-9465,-9205,-5375,-521,3244,4717,3823,1424,-1177,-2819,-2940,-1716,120,1662,2254,1742,489};


	
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal

//struct filter_coef filter = {h_low_kaiser_44100, h_high_kaiser_44100,5 };
	 
filter filter_instance;
   set_filter_param(&filter_instance);
	// GPIO initialization

	XGpio input, output;
    int swState = 0;
    int btnState = 0;

    XGpio_Initialize(&input, XPAR_AXI_GPIO_0_DEVICE_ID);	//initialize input XGpio variable

	xil_printf("GPIO initialized\n\r");

	// Audio initialization

	AudioInitialize(SCU_TIMER_ID, AUDIO_IIC_ID, AUDIO_CTRL_BASEADDR);

	xil_printf("Audio initialized\n\r");

	charge_coef( filter_instance,8);



	xil_printf("state low pass on\n\r");
	// At this point, the Codec is configured in Bypass mode.
	// Comment everything below to use it that way.

	// Setting register to use DAC path (and disable Bypass)
	AudioRegSet(&Iic, 4, 0b000010000);

	// Resetting and enabling TX/RX Fifos
	Xil_Out32(AUDIO_CTRL_BASEADDR + I2S_RESET_REG, 0b110); //Reset RX/TX Fifo
	Xil_Out32(AUDIO_CTRL_BASEADDR + I2S_CTRL_REG, 0b011); //Enable RX Fifo, disable mute
    u32 data = 0x000001AC;
	xil_printf("direct is : %x\n\r",data);
	int ii=0;

	xil_printf("coef %d is : %x\n\r",ii,filter_instance.h_L[ii]);

    ii++;
    xil_printf("coef %d is : %xi\n\r",ii,filter_instance.h_L[ii]);
        ii++;
        xil_printf("coef %d is : %x\n\r",ii,filter_instance.h_L[ii]);
            ii++;
            xil_printf("coef %d is : %x\n\r",ii,filter_instance.h_L[ii]);
                ii++;

                xil_printf("coef %d is : %x\n\r",ii,filter_instance.h_L[ii]);
                        ii++;
                        xil_printf("coef %d is : %x\n\r",ii,filter_instance.h_L[ii]);
                            ii++;
                            xil_printf("coef %d is : %x\n\r",ii,filter_instance.h_L[ii]);
                                ii++;



	// Variable to keep track of the state of the switches
	static int previous_state=0;
 int state =0;
int done = 0;
int count2=0;
	while(1){

		// Routine to change to volume according to sw0 state
		swState = XGpio_DiscreteRead(&input, 2);

		if(swState==0&state!=0)
		{
			charge_coef( filter_instance,8);
			state = 0;
			xil_printf("state low pass on\n\r");
			done =0;
			count2=0;
		}
		else if(swState==1&state!=1)
		{
			charge_coef( filter_instance,8);
		done = 0;
		count2=0;
						state = 1;
		xil_printf("state high pass on\n\r");
		}

/*
		if ((swState & 0b1)&!previous_state){
			AudioRegSet(&Iic,2,0b100101111);
			previous_state=1;
		}

		if ((!(swState | 0b0))&previous_state){
			AudioRegSet(&Iic,2,0b101111001);
			previous_state=0;
		}


*/



		// Recording of audio data. Width = 1 sample
		recDataL = I2SFifoRead(AUDIO_CTRL_BASEADDR);
		left =  filter_out(recDataL,AXI_FIR_L_addres);
		//left = left>>2;
		if (done == 0)
			{
				count2=  count2 +1;
				//xil_printf("data: %x\n\r",recDataL );
			//	usleep(10);
				if (count2 == 10)
				{
					done = 1;
				}
			}


		recDataR = I2SFifoRead(AUDIO_CTRL_BASEADDR);
		right =  filter_out(recDataR,AXI_FIR_R_addres);
      //  right = right>>2;

		// Playback of audio data. Width = 1 sample
		I2SFifoWrite(AUDIO_CTRL_BASEADDR, left);
		I2SFifoWrite(AUDIO_CTRL_BASEADDR, right);
	}

	return 0;
}


