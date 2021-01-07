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
#include "filter_data_base.h"
#include "timer_ps.h"
#include "xparameters.h"
#include "xuartps.h"
#include "audio_fun.h"
#include "xgpio.h"
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




	//signed long h_low[] = {44781,131838,-59907,-119747,10963,185918,50538,-240911,-159671,275395,323474,-264215,-554577,169836,884129,86625,-1430889,-801511,3015950,6930609,6930609,3015950,-801511,-1430889,86625,884129,169836,-554577,-264215,323474,275395,-159671,-240911,50538,185918,10963,-119747,-59907,131838,44781};
	signed int h_low[40] = {5212,-10736,-6902,-4364,-1178,2444,5120,5407,2719,-2120,-6975,-9187,-6781,398,10138,18182,19210,7549,-26177,-156160,156160,26177,-7549,-19210,-18182,-10138,-398,6781,9187,6975,2120,-2719,-5407,-5120,-2444,1178,4364,6902,10736,-5212};
	signed int h_low_blackman_window[40] = {0,-17,-96,-202,-225,-34,413,969,1295,993,-151,-1935,-3655,-4249,-2689,1553,8139,15809,22696,26922,26922,22696,15809,8139,1553,-2689,-4249,-3655,-1935,-151,993,1295,969,413,-34,-225,-202,-96,-17,0};
	signed int h_high_kaiser_44100 [40]= {-489,-1742,-2254,-1662,-120,1716,2940,2819,1177,-1424,-3823,-4717,-3244,521,5375,9205,9465,3471,-13359,-78053,78053,13359,-3471,-9465,-9205,-5375,-521,3244,4717,3823,1424,-1177,-2819,-2940,-1716,120,1662,2254,1742,489};
	//kaiser sampling freq 48kHz
	//signed int h_low_kaiser_48kHz={426,-969,-2115,-2479,-1794,-208,1725,3210,3514,2278,-277,-3324,-5637,-5973,-3500,1863,9319,17354,24127,27997,27997,24127,17354,9319,1863,-3500,-5973,-5637,-3324,-277,2278,3514,3210,1725,-208,-1794,-2479,-2115,-969,426};

	signed int h_low_kaiser_44100 [40] = {1948,1225,-226,-1754,-2583,-2184,-573,1615,3345,3629,2013,-1095,-4446,-6345,-5282,-591,7173,16280,24334,29052,29052,24334,16280,7173,-591,-5282,-6345,-4446,-1095,2013,3629,3345,1615,-573,-2184,-2583,-1754,-226,1225,1948};
    signed int h_low_kaiser[40]= {410,-985,-2123,-2477,-1782,-190,1740,3216,3509,2263,-295,-3338,-5642,-5966,-3484,1881,9333,17358,24122,27985,27985,24122,17358,9333,1881,-3484,-5966,-5642,-3338,-295,2263,3509,3216,1740,-190,-1782,-2477,-2123,-985,410};
	signed long  h_high[40] =  {1085,-1471,-1934,265,2335,196,-3376,-1588,4078,3683,-4312,-6732,3572,11001,-1065,-17404,-5391,30263,28893,-126792,126792,-28893,-30263,5391,17404,1065,-11001,-3572,6732,4312,-3683,-4078,1588,3376,-196,-2335,-265,1934,1471,-1085};

	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal

	// GPIO initialization

	XGpio input, output;
    int swState = 0;
    int btnState = 0;

    XGpio_Initialize(&input, XPAR_AXI_GPIO_0_DEVICE_ID);	//initialize input XGpio variable

	xil_printf("GPIO initialized\n\r");

	// Audio initialization

	AudioInitialize(SCU_TIMER_ID, AUDIO_IIC_ID, AUDIO_CTRL_BASEADDR);

	xil_printf("Audio initialized\n\r");
	charge_coef(h_low,AXI_FIR_R_addres);
   charge_coef(h_low,AXI_FIR_L_addres);
	xil_printf("state low pass on\n\r");
	// At this point, the Codec is configured in Bypass mode.
	// Comment everything below to use it that way.

	// Setting register to use DAC path (and disable Bypass)
	AudioRegSet(&Iic, 4, 0b000010000);

	// Resetting and enabling TX/RX Fifos
	Xil_Out32(AUDIO_CTRL_BASEADDR + I2S_RESET_REG, 0b110); //Reset RX/TX Fifo
	Xil_Out32(AUDIO_CTRL_BASEADDR + I2S_CTRL_REG, 0b011); //Enable RX Fifo, disable mute

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
			charge_coef(h_low_kaiser_44100,AXI_FIR_R_addres);
		charge_coef(h_low_kaiser_44100,AXI_FIR_L_addres);
			state = 0;
			xil_printf("state low pass on\n\r");
			done =0;
			count2=0;
		}
		else if(swState==1&state!=1)
		{
			charge_coef(h_high_kaiser_44100,AXI_FIR_R_addres);
		charge_coef(h_high_kaiser_44100,AXI_FIR_L_addres);
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
				xil_printf("data: %x\n\r",recDataL );
				usleep(10);
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


