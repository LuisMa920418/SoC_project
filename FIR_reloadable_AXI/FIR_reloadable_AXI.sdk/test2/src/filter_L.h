/*
 * filter_data_base.h
 *
 *  Created on: Dec 15, 2020
 *      Author: LuisMa
 */

#ifndef SRC_FILTER_L_H_
#define SRC_FILTER_L_H_


#include "timer_ps.h"
#include "xparameters.h"
#include "xuartps.h"
#include "audio_fun.h"
#include "xgpio.h"
#include "FIR_driver.h"







typedef struct 
{
   u32 h_R[40];
    u32 h_L[40];
    int order;
    u32 baseadrr_L;
    u32 baseadrr_R;
    u32 reg_offset;
    int last_index_sent;

} filter;



#endif /* SRC_FILTER_L_H_ */
