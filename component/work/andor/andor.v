//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Sep 26 18:01:36 2015
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// andor
module andor(
    // Inputs
    SW,
    // Outputs
    LED
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [1:0] SW;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [5:0] LED;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         andor_MSS_0_FAB_CLK;
wire   [5:0] LED_1;
wire   [1:0] SW;
wire   [5:0] LED_1_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign LED_1_net_0 = LED_1;
assign LED[5:0]    = LED_1_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------andor_MSS
andor_MSS andor_MSS_0(
        // Outputs
        .FAB_CLK ( andor_MSS_0_FAB_CLK ) 
        );

//--------myandor
myandor myandor_0(
        // Inputs
        .clk ( andor_MSS_0_FAB_CLK ),
        .SW  ( SW ),
        // Outputs
        .LED ( LED_1 ) 
        );


endmodule
