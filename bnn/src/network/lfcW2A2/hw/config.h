/**
 * Finnthesizer Config-File Generation
 *
 **/

#ifndef __LAYER_CONFIG_H_
#define __LAYER_CONFIG_H_

/**
 * Fully-Connected Layer L0:
 *     MatW =   832 MatH =  1024
 *     SIMD =    32  PE  =    16
 *     WMEM =  1664 TMEM =    64
 *     #Ops  = 1703936   Ext Latency  =  1664
**/

#define L0_SIMD 32
#define L0_PE 16
#define L0_WMEM 1664
#define L0_TMEM 64
#define L0_MW 832
#define L0_MH 1024
#define L0_WPI 2
#define L0_API 2
#define L0_WPF 0
#define L0_APF 0

/**
 * Fully-Connected Layer L1:
 *     MatW =  1024 MatH =  1024
 *     SIMD =    16  PE  =    32
 *     WMEM =  2048 TMEM =    32
 *     #Ops  = 2097152   Ext Latency  =  2048
**/

#define L1_SIMD 16
#define L1_PE 32
#define L1_WMEM 2048
#define L1_TMEM 32
#define L1_MW 1024
#define L1_MH 1024
#define L1_WPI 2
#define L1_API 2
#define L1_WPF 0
#define L1_APF 0

/**
 * Fully-Connected Layer L2:
 *     MatW =  1024 MatH =  1024
 *     SIMD =    32  PE  =    16
 *     WMEM =  2048 TMEM =    64
 *     #Ops  = 2097152   Ext Latency  =  2048
**/

#define L2_SIMD 32
#define L2_PE 16
#define L2_WMEM 2048
#define L2_TMEM 64
#define L2_MW 1024
#define L2_MH 1024
#define L2_WPI 2
#define L2_API 2
#define L2_WPF 0
#define L2_APF 0

/**
 * Fully-Connected Layer L3:
 *     MatW =  1024 MatH =    64
 *     SIMD =     4  PE  =     8
 *     WMEM =  2048 TMEM =     8
 *     #Ops  = 131072   Ext Latency  =  2048
**/

#define L3_SIMD 4
#define L3_PE 8
#define L3_WMEM 2048
#define L3_TMEM 8
#define L3_MW 1024
#define L3_MH 64
#define L3_WPI 2
#define L3_API 1
#define L3_WPF 0
#define L3_APF 0

#endif //__LAYER_CONFIG_H_
