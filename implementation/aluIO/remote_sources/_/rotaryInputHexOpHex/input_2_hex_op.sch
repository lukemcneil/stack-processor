<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="count_up" />
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="shift" />
        <signal name="shift_up" />
        <signal name="count" />
        <signal name="A(15:12)" />
        <signal name="A(11:8)" />
        <signal name="A(7:4)" />
        <signal name="A(3:0)" />
        <signal name="G,op(2:0)" />
        <signal name="B(3:0)" />
        <signal name="B(7:4)" />
        <signal name="B(11:8)" />
        <signal name="B(15:12)" />
        <signal name="op(2:0)" />
        <signal name="G,G,G,G" />
        <signal name="inputData(15:12)" />
        <signal name="inputData(11:8)" />
        <signal name="inputData(7:4)" />
        <signal name="inputData(3:0)" />
        <signal name="posSel(3:0)" />
        <signal name="inputData(15:0)" />
        <signal name="V,op(2:0)" />
        <signal name="G,G,V,V,V,V,G,V" />
        <signal name="G,G,V,G,G,G,G,G" />
        <signal name="XLXN_58(3:0)" />
        <signal name="XLXN_61(7:0)" />
        <signal name="XLXN_62(7:0)" />
        <signal name="lcdData(7:0)" />
        <signal name="G" />
        <signal name="V" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="A(15:0)" />
        <signal name="B(15:0)" />
        <signal name="sel(1:0)" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="sel(0)" />
        <signal name="posSel(2)" />
        <signal name="posSel(1)" />
        <signal name="posSel(3)" />
        <signal name="posSel(0)" />
        <signal name="XLXN_77" />
        <signal name="sel(1)" />
        <port polarity="Input" name="count_up" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="shift" />
        <port polarity="Input" name="shift_up" />
        <port polarity="Input" name="count" />
        <port polarity="Output" name="op(2:0)" />
        <port polarity="Input" name="posSel(3:0)" />
        <port polarity="Input" name="inputData(15:0)" />
        <port polarity="Output" name="lcdData(7:0)" />
        <port polarity="Output" name="A(15:0)" />
        <port polarity="Output" name="B(15:0)" />
        <blockdef name="mux4b16">
            <timestamp>2010-10-2T22:11:35</timestamp>
            <rect width="256" x="64" y="-1088" height="1088" />
            <rect width="64" x="0" y="-1068" height="24" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <rect width="64" x="0" y="-1004" height="24" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <rect width="64" x="0" y="-940" height="24" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-876" height="24" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-1068" height="24" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="hexROM">
            <timestamp>2010-10-3T22:50:38</timestamp>
            <rect width="224" x="32" y="32" height="92" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="opROM">
            <timestamp>2010-10-3T22:51:36</timestamp>
            <rect width="224" x="32" y="32" height="92" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="mux8b4">
            <timestamp>2010-9-30T10:17:32</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="shift9">
            <timestamp>2010-10-3T14:20:20</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-576" height="640" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="IOcounter4">
            <timestamp>2013-9-27T1:9:16</timestamp>
            <rect width="252" x="32" y="32" height="240" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="128" y2="128" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="32" y1="224" y2="224" x1="0" />
            <line x2="288" y1="80" y2="80" style="linewidth:W" x1="320" />
        </blockdef>
        <blockdef name="IOcounter3">
            <timestamp>2013-9-27T1:3:36</timestamp>
            <rect width="252" x="32" y="32" height="240" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="128" y2="128" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="32" y1="224" y2="224" x1="0" />
            <line x2="288" y1="80" y2="80" style="linewidth:W" x1="320" />
        </blockdef>
        <block symbolname="mux4b16" name="XLXI_30">
            <blockpin signalname="A(15:12)" name="a(3:0)" />
            <blockpin signalname="A(11:8)" name="b(3:0)" />
            <blockpin signalname="A(7:4)" name="c(3:0)" />
            <blockpin signalname="A(3:0)" name="d(3:0)" />
            <blockpin signalname="G,op(2:0)" name="e(3:0)" />
            <blockpin signalname="V,op(2:0)" name="f(3:0)" />
            <blockpin signalname="B(15:12)" name="g(3:0)" />
            <blockpin signalname="B(11:8)" name="h(3:0)" />
            <blockpin signalname="B(7:4)" name="i(3:0)" />
            <blockpin signalname="B(3:0)" name="j(3:0)" />
            <blockpin signalname="G,G,G,G" name="k(3:0)" />
            <blockpin signalname="inputData(15:12)" name="l(3:0)" />
            <blockpin signalname="inputData(11:8)" name="m(3:0)" />
            <blockpin signalname="inputData(7:4)" name="n(3:0)" />
            <blockpin signalname="inputData(3:0)" name="o(3:0)" />
            <blockpin signalname="G,G,G,G" name="p(3:0)" />
            <blockpin signalname="posSel(3:0)" name="s(3:0)" />
            <blockpin signalname="XLXN_58(3:0)" name="r(3:0)" />
        </block>
        <block symbolname="hexROM" name="XLXI_33">
            <blockpin signalname="XLXN_58(3:0)" name="a(3:0)" />
            <blockpin signalname="XLXN_62(7:0)" name="spo(7:0)" />
        </block>
        <block symbolname="opROM" name="XLXI_34">
            <blockpin signalname="XLXN_58(3:0)" name="a(3:0)" />
            <blockpin signalname="XLXN_61(7:0)" name="spo(7:0)" />
        </block>
        <block symbolname="mux8b4" name="XLXI_35">
            <blockpin signalname="XLXN_62(7:0)" name="IA(7:0)" />
            <blockpin signalname="XLXN_61(7:0)" name="IB(7:0)" />
            <blockpin signalname="G,G,V,V,V,V,G,V" name="IC(7:0)" />
            <blockpin signalname="G,G,V,G,G,G,G,G" name="ID(7:0)" />
            <blockpin signalname="sel(1:0)" name="Sel(1:0)" />
            <blockpin signalname="lcdData(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_31">
            <blockpin signalname="G" name="G" />
        </block>
        <block symbolname="shift9" name="XLXI_43">
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="shift" name="count" />
            <blockpin signalname="shift_up" name="up" />
            <blockpin signalname="count" name="enable" />
            <blockpin signalname="XLXN_82" name="sel0" />
            <blockpin signalname="XLXN_83" name="sel1" />
            <blockpin signalname="XLXN_84" name="sel2" />
            <blockpin signalname="XLXN_85" name="sel3" />
            <blockpin signalname="XLXN_86" name="sel4" />
            <blockpin signalname="XLXN_87" name="sel5" />
            <blockpin signalname="XLXN_88" name="sel6" />
            <blockpin signalname="XLXN_89" name="sel7" />
            <blockpin signalname="XLXN_90" name="sel8" />
        </block>
        <block symbolname="vcc" name="XLXI_46">
            <blockpin signalname="V" name="P" />
        </block>
        <block symbolname="and4" name="XLXI_37">
            <blockpin signalname="posSel(3)" name="I0" />
            <blockpin signalname="posSel(2)" name="I1" />
            <blockpin signalname="posSel(1)" name="I2" />
            <blockpin signalname="posSel(0)" name="I3" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_41">
            <blockpin signalname="posSel(3)" name="I0" />
            <blockpin signalname="posSel(1)" name="I1" />
            <blockpin signalname="posSel(2)" name="I2" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_42">
            <blockpin signalname="posSel(2)" name="I0" />
            <blockpin signalname="posSel(0)" name="I1" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_47">
            <blockpin signalname="XLXN_66" name="I0" />
            <blockpin signalname="XLXN_65" name="I1" />
            <blockpin signalname="sel(0)" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_48">
            <blockpin signalname="posSel(3)" name="I0" />
            <blockpin signalname="posSel(1)" name="I1" />
            <blockpin signalname="XLXN_77" name="I2" />
            <blockpin signalname="sel(1)" name="O" />
        </block>
        <block symbolname="IOcounter4" name="XLXI_77">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_90" name="ce" />
            <blockpin signalname="B(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="IOcounter4" name="XLXI_78">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_89" name="ce" />
            <blockpin signalname="B(7:4)" name="q(3:0)" />
        </block>
        <block symbolname="IOcounter4" name="XLXI_79">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_88" name="ce" />
            <blockpin signalname="B(11:8)" name="q(3:0)" />
        </block>
        <block symbolname="IOcounter4" name="XLXI_80">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_87" name="ce" />
            <blockpin signalname="B(15:12)" name="q(3:0)" />
        </block>
        <block symbolname="IOcounter4" name="XLXI_81">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_85" name="ce" />
            <blockpin signalname="A(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="IOcounter4" name="XLXI_82">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_84" name="ce" />
            <blockpin signalname="A(7:4)" name="q(3:0)" />
        </block>
        <block symbolname="IOcounter4" name="XLXI_83">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_83" name="ce" />
            <blockpin signalname="A(11:8)" name="q(3:0)" />
        </block>
        <block symbolname="IOcounter4" name="XLXI_84">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_82" name="ce" />
            <blockpin signalname="A(15:12)" name="q(3:0)" />
        </block>
        <block symbolname="IOcounter3" name="XLXI_85">
            <blockpin signalname="count_up" name="up" />
            <blockpin signalname="RESET" name="sclr" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_86" name="ce" />
            <blockpin signalname="op(2:0)" name="q(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="count_up">
            <wire x2="2000" y1="320" y2="320" x1="1760" />
            <wire x2="2048" y1="320" y2="320" x1="2000" />
            <wire x2="2000" y1="320" y2="640" x1="2000" />
            <wire x2="2048" y1="640" y2="640" x1="2000" />
            <wire x2="2000" y1="640" y2="960" x1="2000" />
            <wire x2="2000" y1="960" y2="1280" x1="2000" />
            <wire x2="2000" y1="1280" y2="1680" x1="2000" />
            <wire x2="2000" y1="1680" y2="2080" x1="2000" />
            <wire x2="2000" y1="2080" y2="2400" x1="2000" />
            <wire x2="2000" y1="2400" y2="2720" x1="2000" />
            <wire x2="2048" y1="2720" y2="2720" x1="2000" />
            <wire x2="2000" y1="2720" y2="3040" x1="2000" />
            <wire x2="2048" y1="3040" y2="3040" x1="2000" />
            <wire x2="2048" y1="2400" y2="2400" x1="2000" />
            <wire x2="2048" y1="2080" y2="2080" x1="2000" />
            <wire x2="2048" y1="1680" y2="1680" x1="2000" />
            <wire x2="2048" y1="1280" y2="1280" x1="2000" />
            <wire x2="2048" y1="960" y2="960" x1="2000" />
        </branch>
        <branch name="CLK">
            <wire x2="1872" y1="416" y2="416" x1="1760" />
            <wire x2="1872" y1="416" y2="736" x1="1872" />
            <wire x2="1872" y1="736" y2="1056" x1="1872" />
            <wire x2="1872" y1="1056" y2="1376" x1="1872" />
            <wire x2="1872" y1="1376" y2="1776" x1="1872" />
            <wire x2="1872" y1="1776" y2="2176" x1="1872" />
            <wire x2="1872" y1="2176" y2="2496" x1="1872" />
            <wire x2="1872" y1="2496" y2="2816" x1="1872" />
            <wire x2="1872" y1="2816" y2="3136" x1="1872" />
            <wire x2="2048" y1="3136" y2="3136" x1="1872" />
            <wire x2="2048" y1="2816" y2="2816" x1="1872" />
            <wire x2="2048" y1="2496" y2="2496" x1="1872" />
            <wire x2="2048" y1="2176" y2="2176" x1="1872" />
            <wire x2="2048" y1="1776" y2="1776" x1="1872" />
            <wire x2="2048" y1="1376" y2="1376" x1="1872" />
            <wire x2="2048" y1="1056" y2="1056" x1="1872" />
            <wire x2="2048" y1="736" y2="736" x1="1872" />
            <wire x2="2048" y1="416" y2="416" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1760" y="320" name="count_up" orien="R180" />
        <branch name="RESET">
            <wire x2="1936" y1="368" y2="368" x1="1760" />
            <wire x2="2048" y1="368" y2="368" x1="1936" />
            <wire x2="1936" y1="368" y2="688" x1="1936" />
            <wire x2="1936" y1="688" y2="1008" x1="1936" />
            <wire x2="1936" y1="1008" y2="1328" x1="1936" />
            <wire x2="1936" y1="1328" y2="1728" x1="1936" />
            <wire x2="1936" y1="1728" y2="2128" x1="1936" />
            <wire x2="1936" y1="2128" y2="2448" x1="1936" />
            <wire x2="1936" y1="2448" y2="2768" x1="1936" />
            <wire x2="1936" y1="2768" y2="3088" x1="1936" />
            <wire x2="2048" y1="3088" y2="3088" x1="1936" />
            <wire x2="2048" y1="2768" y2="2768" x1="1936" />
            <wire x2="2048" y1="2448" y2="2448" x1="1936" />
            <wire x2="2048" y1="2128" y2="2128" x1="1936" />
            <wire x2="2048" y1="1728" y2="1728" x1="1936" />
            <wire x2="2048" y1="1328" y2="1328" x1="1936" />
            <wire x2="2048" y1="1008" y2="1008" x1="1936" />
            <wire x2="2048" y1="688" y2="688" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1760" y="368" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="1760" y="416" name="CLK" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="640" y="464" type="branch" />
            <wire x2="736" y1="464" y2="464" x1="640" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="640" y="624" type="branch" />
            <wire x2="736" y1="624" y2="624" x1="640" />
        </branch>
        <branch name="shift">
            <wire x2="736" y1="784" y2="784" x1="640" />
        </branch>
        <branch name="shift_up">
            <wire x2="736" y1="944" y2="944" x1="640" />
        </branch>
        <branch name="count">
            <wire x2="736" y1="1040" y2="1040" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="784" name="shift" orien="R180" />
        <iomarker fontsize="28" x="640" y="944" name="shift_up" orien="R180" />
        <iomarker fontsize="28" x="640" y="1040" name="count" orien="R180" />
        <instance x="2976" y="1376" name="XLXI_30" orien="R0">
        </instance>
        <branch name="A(15:12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="320" type="branch" />
            <wire x2="2480" y1="320" y2="320" x1="2368" />
            <wire x2="2976" y1="320" y2="320" x1="2480" />
        </branch>
        <branch name="A(11:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="640" type="branch" />
            <wire x2="2480" y1="640" y2="640" x1="2368" />
            <wire x2="2656" y1="640" y2="640" x1="2480" />
            <wire x2="2656" y1="384" y2="640" x1="2656" />
            <wire x2="2976" y1="384" y2="384" x1="2656" />
        </branch>
        <branch name="A(7:4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="960" type="branch" />
            <wire x2="2480" y1="960" y2="960" x1="2368" />
            <wire x2="2672" y1="960" y2="960" x1="2480" />
            <wire x2="2672" y1="448" y2="960" x1="2672" />
            <wire x2="2976" y1="448" y2="448" x1="2672" />
        </branch>
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="1280" type="branch" />
            <wire x2="2480" y1="1280" y2="1280" x1="2368" />
            <wire x2="2688" y1="1280" y2="1280" x1="2480" />
            <wire x2="2688" y1="512" y2="1280" x1="2688" />
            <wire x2="2976" y1="512" y2="512" x1="2688" />
        </branch>
        <branch name="B(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="3040" type="branch" />
            <wire x2="2480" y1="3040" y2="3040" x1="2368" />
            <wire x2="2784" y1="3040" y2="3040" x1="2480" />
            <wire x2="2784" y1="896" y2="3040" x1="2784" />
            <wire x2="2976" y1="896" y2="896" x1="2784" />
        </branch>
        <branch name="B(7:4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="2720" type="branch" />
            <wire x2="2480" y1="2720" y2="2720" x1="2368" />
            <wire x2="2768" y1="2720" y2="2720" x1="2480" />
            <wire x2="2768" y1="832" y2="2720" x1="2768" />
            <wire x2="2976" y1="832" y2="832" x1="2768" />
        </branch>
        <branch name="B(11:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="2400" type="branch" />
            <wire x2="2480" y1="2400" y2="2400" x1="2368" />
            <wire x2="2752" y1="2400" y2="2400" x1="2480" />
            <wire x2="2752" y1="768" y2="2400" x1="2752" />
            <wire x2="2976" y1="768" y2="768" x1="2752" />
        </branch>
        <branch name="B(15:12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="2080" type="branch" />
            <wire x2="2480" y1="2080" y2="2080" x1="2368" />
            <wire x2="2736" y1="2080" y2="2080" x1="2480" />
            <wire x2="2736" y1="704" y2="2080" x1="2736" />
            <wire x2="2976" y1="704" y2="704" x1="2736" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2480" y="1680" type="branch" />
            <wire x2="2480" y1="1680" y2="1680" x1="2368" />
        </branch>
        <branch name="G,G,G,G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="3360" type="branch" />
            <wire x2="2800" y1="3360" y2="3360" x1="2320" />
            <wire x2="2976" y1="960" y2="960" x1="2800" />
            <wire x2="2800" y1="960" y2="3360" x1="2800" />
        </branch>
        <branch name="inputData(15:12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="3520" type="branch" />
            <wire x2="2816" y1="3520" y2="3520" x1="2320" />
            <wire x2="2976" y1="1024" y2="1024" x1="2816" />
            <wire x2="2816" y1="1024" y2="3520" x1="2816" />
        </branch>
        <branch name="inputData(11:8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="3680" type="branch" />
            <wire x2="2832" y1="3680" y2="3680" x1="2320" />
            <wire x2="2976" y1="1088" y2="1088" x1="2832" />
            <wire x2="2832" y1="1088" y2="3680" x1="2832" />
        </branch>
        <branch name="inputData(7:4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="3840" type="branch" />
            <wire x2="2848" y1="3840" y2="3840" x1="2320" />
            <wire x2="2848" y1="1152" y2="3840" x1="2848" />
            <wire x2="2976" y1="1152" y2="1152" x1="2848" />
        </branch>
        <branch name="inputData(3:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="4000" type="branch" />
            <wire x2="2864" y1="4000" y2="4000" x1="2320" />
            <wire x2="2976" y1="1216" y2="1216" x1="2864" />
            <wire x2="2864" y1="1216" y2="4000" x1="2864" />
        </branch>
        <branch name="G,G,G,G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="4160" type="branch" />
            <wire x2="2880" y1="4160" y2="4160" x1="2320" />
            <wire x2="2880" y1="1280" y2="4160" x1="2880" />
            <wire x2="2976" y1="1280" y2="1280" x1="2880" />
        </branch>
        <branch name="inputData(15:0)">
            <wire x2="1440" y1="3520" y2="3520" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="3520" name="inputData(15:0)" orien="R180" />
        <iomarker fontsize="28" x="2320" y="4400" name="posSel(3:0)" orien="R180" />
        <branch name="G,op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="1600" type="branch" />
            <wire x2="2704" y1="1600" y2="1600" x1="2640" />
            <wire x2="2976" y1="576" y2="576" x1="2704" />
            <wire x2="2704" y1="576" y2="1600" x1="2704" />
        </branch>
        <branch name="V,op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="1760" type="branch" />
            <wire x2="2720" y1="1760" y2="1760" x1="2640" />
            <wire x2="2976" y1="640" y2="640" x1="2720" />
            <wire x2="2720" y1="640" y2="1760" x1="2720" />
        </branch>
        <instance x="3648" y="240" name="XLXI_33" orien="R0">
        </instance>
        <instance x="3648" y="400" name="XLXI_34" orien="R0">
        </instance>
        <branch name="G,G,V,V,V,V,G,V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3840" y="640" type="branch" />
            <wire x2="3936" y1="640" y2="640" x1="3840" />
            <wire x2="3936" y1="640" y2="656" x1="3936" />
            <wire x2="4176" y1="656" y2="656" x1="3936" />
        </branch>
        <branch name="G,G,V,G,G,G,G,G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3840" y="720" type="branch" />
            <wire x2="4176" y1="720" y2="720" x1="3840" />
        </branch>
        <branch name="XLXN_58(3:0)">
            <wire x2="3600" y1="320" y2="320" x1="3360" />
            <wire x2="3648" y1="320" y2="320" x1="3600" />
            <wire x2="3600" y1="320" y2="480" x1="3600" />
            <wire x2="3648" y1="480" y2="480" x1="3600" />
        </branch>
        <instance x="4176" y="816" name="XLXI_35" orien="R0">
        </instance>
        <branch name="XLXN_61(7:0)">
            <wire x2="4000" y1="480" y2="480" x1="3936" />
            <wire x2="4000" y1="480" y2="592" x1="4000" />
            <wire x2="4176" y1="592" y2="592" x1="4000" />
        </branch>
        <branch name="XLXN_62(7:0)">
            <wire x2="4064" y1="320" y2="320" x1="3936" />
            <wire x2="4064" y1="320" y2="528" x1="4064" />
            <wire x2="4176" y1="528" y2="528" x1="4064" />
        </branch>
        <branch name="lcdData(7:0)">
            <wire x2="4720" y1="528" y2="528" x1="4560" />
        </branch>
        <iomarker fontsize="28" x="4720" y="528" name="lcdData(7:0)" orien="R0" />
        <instance x="576" y="2384" name="XLXI_31" orien="R0" />
        <branch name="G">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="720" y="2240" type="branch" />
            <wire x2="720" y1="2240" y2="2240" x1="640" />
            <wire x2="640" y1="2240" y2="2256" x1="640" />
        </branch>
        <instance x="736" y="1008" name="XLXI_43" orien="R0">
        </instance>
        <instance x="576" y="2144" name="XLXI_46" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="720" y="2160" type="branch" />
            <wire x2="640" y1="2144" y2="2160" x1="640" />
            <wire x2="720" y1="2160" y2="2160" x1="640" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="1136" y1="464" y2="464" x1="1120" />
            <wire x2="2048" y1="464" y2="464" x1="1136" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="1584" y1="528" y2="528" x1="1120" />
            <wire x2="1584" y1="528" y2="784" x1="1584" />
            <wire x2="2048" y1="784" y2="784" x1="1584" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="1568" y1="592" y2="592" x1="1120" />
            <wire x2="1568" y1="592" y2="1104" x1="1568" />
            <wire x2="2048" y1="1104" y2="1104" x1="1568" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="1552" y1="656" y2="656" x1="1120" />
            <wire x2="1552" y1="656" y2="1424" x1="1552" />
            <wire x2="2048" y1="1424" y2="1424" x1="1552" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="1536" y1="720" y2="720" x1="1120" />
            <wire x2="1536" y1="720" y2="1824" x1="1536" />
            <wire x2="2048" y1="1824" y2="1824" x1="1536" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="1520" y1="784" y2="784" x1="1120" />
            <wire x2="1520" y1="784" y2="2224" x1="1520" />
            <wire x2="2048" y1="2224" y2="2224" x1="1520" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="1504" y1="848" y2="848" x1="1120" />
            <wire x2="1504" y1="848" y2="2544" x1="1504" />
            <wire x2="2048" y1="2544" y2="2544" x1="1504" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="1488" y1="912" y2="912" x1="1120" />
            <wire x2="1488" y1="912" y2="2864" x1="1488" />
            <wire x2="2048" y1="2864" y2="2864" x1="1488" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="1472" y1="976" y2="976" x1="1120" />
            <wire x2="1472" y1="976" y2="3184" x1="1472" />
            <wire x2="2048" y1="3184" y2="3184" x1="1472" />
        </branch>
        <branch name="A(15:0)">
            <wire x2="4720" y1="1920" y2="1920" x1="4480" />
        </branch>
        <branch name="op(2:0)">
            <wire x2="4720" y1="2000" y2="2000" x1="4480" />
        </branch>
        <branch name="B(15:0)">
            <wire x2="4720" y1="2080" y2="2080" x1="4480" />
        </branch>
        <iomarker fontsize="28" x="4720" y="1920" name="A(15:0)" orien="R0" />
        <iomarker fontsize="28" x="4720" y="2000" name="op(2:0)" orien="R0" />
        <iomarker fontsize="28" x="4720" y="2080" name="B(15:0)" orien="R0" />
        <branch name="posSel(3:0)">
            <wire x2="2896" y1="4400" y2="4400" x1="2320" />
            <wire x2="2976" y1="1344" y2="1344" x1="2896" />
            <wire x2="2896" y1="1344" y2="4400" x1="2896" />
        </branch>
        <branch name="sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4080" y="784" type="branch" />
            <wire x2="4176" y1="784" y2="784" x1="4080" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="4176" y1="1024" y2="1024" x1="4032" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="4096" y1="1296" y2="1296" x1="4032" />
            <wire x2="4096" y1="1088" y2="1296" x1="4096" />
            <wire x2="4176" y1="1088" y2="1088" x1="4096" />
        </branch>
        <branch name="sel(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4496" y="1056" type="branch" />
            <wire x2="4496" y1="1056" y2="1056" x1="4432" />
        </branch>
        <branch name="posSel(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="960" type="branch" />
            <wire x2="3776" y1="960" y2="960" x1="3696" />
        </branch>
        <branch name="posSel(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1024" type="branch" />
            <wire x2="3776" y1="1024" y2="1024" x1="3696" />
        </branch>
        <branch name="posSel(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1088" type="branch" />
            <wire x2="3776" y1="1088" y2="1088" x1="3696" />
        </branch>
        <branch name="posSel(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1200" type="branch" />
            <wire x2="3776" y1="1200" y2="1200" x1="3696" />
        </branch>
        <branch name="posSel(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1264" type="branch" />
            <wire x2="3776" y1="1264" y2="1264" x1="3696" />
        </branch>
        <branch name="posSel(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1328" type="branch" />
            <wire x2="3776" y1="1328" y2="1328" x1="3696" />
        </branch>
        <branch name="posSel(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1392" type="branch" />
            <wire x2="3776" y1="1392" y2="1392" x1="3696" />
        </branch>
        <branch name="posSel(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1568" type="branch" />
            <wire x2="3776" y1="1568" y2="1568" x1="3696" />
        </branch>
        <branch name="posSel(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1632" type="branch" />
            <wire x2="3776" y1="1632" y2="1632" x1="3696" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="4176" y1="1600" y2="1600" x1="4032" />
        </branch>
        <branch name="sel(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4496" y="1664" type="branch" />
            <wire x2="4496" y1="1664" y2="1664" x1="4432" />
        </branch>
        <branch name="posSel(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1696" type="branch" />
            <wire x2="4032" y1="1696" y2="1696" x1="3696" />
            <wire x2="4176" y1="1664" y2="1664" x1="4032" />
            <wire x2="4032" y1="1664" y2="1696" x1="4032" />
        </branch>
        <branch name="posSel(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1760" type="branch" />
            <wire x2="4096" y1="1760" y2="1760" x1="3696" />
            <wire x2="4176" y1="1728" y2="1728" x1="4096" />
            <wire x2="4096" y1="1728" y2="1760" x1="4096" />
        </branch>
        <instance x="3776" y="1456" name="XLXI_37" orien="R0" />
        <instance x="3776" y="1152" name="XLXI_41" orien="R0" />
        <instance x="3776" y="1696" name="XLXI_42" orien="R0" />
        <instance x="4176" y="1152" name="XLXI_47" orien="R0" />
        <instance x="4176" y="1792" name="XLXI_48" orien="R0" />
        <instance x="2048" y="2960" name="XLXI_77" orien="R0">
        </instance>
        <instance x="2048" y="2640" name="XLXI_78" orien="R0">
        </instance>
        <instance x="2048" y="2320" name="XLXI_79" orien="R0">
        </instance>
        <instance x="2048" y="2000" name="XLXI_80" orien="R0">
        </instance>
        <instance x="2048" y="1200" name="XLXI_81" orien="R0">
        </instance>
        <instance x="2048" y="880" name="XLXI_82" orien="R0">
        </instance>
        <instance x="2048" y="560" name="XLXI_83" orien="R0">
        </instance>
        <instance x="2048" y="240" name="XLXI_84" orien="R0">
        </instance>
        <instance x="2048" y="1600" name="XLXI_85" orien="R0">
        </instance>
    </sheet>
</drawing>