/*
 * filter_data_base.h
 *
 *  Created on: Dec 15, 2020
 *      Author: LuisMa
 */

#ifndef SRC_FILTER_L_H_
#define SRC_FILTER_L_H_


//azimuth values
#define degrees_0 0
#define degrees_90 1
#define degrees_180 2
#define degrees_270 3

#include "xil_io.h"






typedef struct 
{
    u32 h_R[40];
    u32 h_L[40];
    u32 h_R_normalization_factor,h_L_normalization_factor; 
    int order;
    u32 baseadrr_L;
    u32 baseadrr_R;
    u32 reg_offset;
    int last_index_sent;
    int azimuth ;

} filter;



#endif /* SRC_FILTER_L_H_ */
