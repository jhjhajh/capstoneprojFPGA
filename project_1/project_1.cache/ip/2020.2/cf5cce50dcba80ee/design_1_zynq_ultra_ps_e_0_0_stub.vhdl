-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Sep 28 18:41:35 2021
-- Host        : DESKTOP-JHOPN9P running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : design_1_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    saxi_lpd_aclk : in STD_LOGIC;
    saxigp6_aruser : in STD_LOGIC;
    saxigp6_awuser : in STD_LOGIC;
    saxigp6_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp6_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp6_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_awlock : in STD_LOGIC;
    saxigp6_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_awvalid : in STD_LOGIC;
    saxigp6_awready : out STD_LOGIC;
    saxigp6_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    saxigp6_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_wlast : in STD_LOGIC;
    saxigp6_wvalid : in STD_LOGIC;
    saxigp6_wready : out STD_LOGIC;
    saxigp6_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_bvalid : out STD_LOGIC;
    saxigp6_bready : in STD_LOGIC;
    saxigp6_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp6_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp6_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_arlock : in STD_LOGIC;
    saxigp6_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_arvalid : in STD_LOGIC;
    saxigp6_arready : out STD_LOGIC;
    saxigp6_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    saxigp6_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_rlast : out STD_LOGIC;
    saxigp6_rvalid : out STD_LOGIC;
    saxigp6_rready : in STD_LOGIC;
    saxigp6_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "maxihpm0_fpd_aclk,maxigp0_awid[15:0],maxigp0_awaddr[39:0],maxigp0_awlen[7:0],maxigp0_awsize[2:0],maxigp0_awburst[1:0],maxigp0_awlock,maxigp0_awcache[3:0],maxigp0_awprot[2:0],maxigp0_awvalid,maxigp0_awuser[15:0],maxigp0_awready,maxigp0_wdata[127:0],maxigp0_wstrb[15:0],maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid[15:0],maxigp0_bresp[1:0],maxigp0_bvalid,maxigp0_bready,maxigp0_arid[15:0],maxigp0_araddr[39:0],maxigp0_arlen[7:0],maxigp0_arsize[2:0],maxigp0_arburst[1:0],maxigp0_arlock,maxigp0_arcache[3:0],maxigp0_arprot[2:0],maxigp0_arvalid,maxigp0_aruser[15:0],maxigp0_arready,maxigp0_rid[15:0],maxigp0_rdata[127:0],maxigp0_rresp[1:0],maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos[3:0],maxigp0_arqos[3:0],saxi_lpd_aclk,saxigp6_aruser,saxigp6_awuser,saxigp6_awid[5:0],saxigp6_awaddr[48:0],saxigp6_awlen[7:0],saxigp6_awsize[2:0],saxigp6_awburst[1:0],saxigp6_awlock,saxigp6_awcache[3:0],saxigp6_awprot[2:0],saxigp6_awvalid,saxigp6_awready,saxigp6_wdata[31:0],saxigp6_wstrb[3:0],saxigp6_wlast,saxigp6_wvalid,saxigp6_wready,saxigp6_bid[5:0],saxigp6_bresp[1:0],saxigp6_bvalid,saxigp6_bready,saxigp6_arid[5:0],saxigp6_araddr[48:0],saxigp6_arlen[7:0],saxigp6_arsize[2:0],saxigp6_arburst[1:0],saxigp6_arlock,saxigp6_arcache[3:0],saxigp6_arprot[2:0],saxigp6_arvalid,saxigp6_arready,saxigp6_rid[5:0],saxigp6_rdata[31:0],saxigp6_rresp[1:0],saxigp6_rlast,saxigp6_rvalid,saxigp6_rready,saxigp6_awqos[3:0],saxigp6_arqos[3:0],pl_ps_irq0[0:0],pl_resetn0,pl_clk0";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v3_3_3_zynq_ultra_ps_e,Vivado 2020.2";
begin
end;
