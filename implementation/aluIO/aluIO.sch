<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="G" />
        <signal name="s_button" />
        <signal name="lcdReady" />
        <signal name="lcd_rs" />
        <signal name="lcd_E" />
        <signal name="sf_ce" />
        <signal name="lcd_rw" />
        <signal name="V" />
        <signal name="sf_we" />
        <signal name="sf_oe" />
        <signal name="led1" />
        <signal name="south" />
        <signal name="switch(0)" />
        <signal name="switch(1)" />
        <signal name="switch(2)" />
        <signal name="switch(3)" />
        <signal name="led0" />
        <signal name="led2" />
        <signal name="led3" />
        <signal name="switch(3:0)" />
        <signal name="XLXN_116" />
        <signal name="XLXN_118(7:0)" />
        <signal name="XLXN_124(3:0)" />
        <signal name="shift_up" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <signal name="XLXN_147(15:0)" />
        <signal name="ovfl" />
        <signal name="zero" />
        <signal name="n_button" />
        <signal name="a_button" />
        <signal name="b_button" />
        <signal name="r_button" />
        <signal name="XLXN_368" />
        <signal name="w_button" />
        <signal name="G,G,G,G" />
        <signal name="V,V,V,V" />
        <signal name="lcd_D(3:0)" />
        <signal name="east" />
        <signal name="XLXN_384(15:0)" />
        <signal name="XLXN_385" />
        <signal name="XLXN_387(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="s_button" />
        <port polarity="Output" name="lcdReady" />
        <port polarity="Output" name="lcd_rs" />
        <port polarity="Output" name="lcd_E" />
        <port polarity="Output" name="sf_ce" />
        <port polarity="Output" name="lcd_rw" />
        <port polarity="Output" name="sf_we" />
        <port polarity="Output" name="sf_oe" />
        <port polarity="Output" name="led1" />
        <port polarity="Output" name="led0" />
        <port polarity="Output" name="led2" />
        <port polarity="Output" name="led3" />
        <port polarity="Input" name="switch(3:0)" />
        <port polarity="Output" name="ovfl" />
        <port polarity="Output" name="zero" />
        <port polarity="Input" name="n_button" />
        <port polarity="Input" name="a_button" />
        <port polarity="Input" name="b_button" />
        <port polarity="Input" name="r_button" />
        <port polarity="Input" name="w_button" />
        <port polarity="Output" name="lcd_D(3:0)" />
        <blockdef name="lcd_control">
            <timestamp>2010-10-3T2:48:53</timestamp>
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="528" y1="-480" y2="-480" x1="464" />
            <line x2="528" y1="-384" y2="-384" x1="464" />
            <line x2="528" y1="-288" y2="-288" x1="464" />
            <rect width="64" x="464" y="-204" height="24" />
            <line x2="528" y1="-192" y2="-192" x1="464" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <rect width="400" x="64" y="-512" height="512" />
        </blockdef>
        <blockdef name="debouncer">
            <timestamp>2010-10-1T20:10:55</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="debounceRotary">
            <timestamp>2009-9-3T20:35:3</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="input_2_hex_op">
            <timestamp>2010-10-4T1:29:12</timestamp>
            <rect width="64" x="368" y="-492" height="24" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="304" x="64" y="-512" height="512" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
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
        <blockdef name="final_processor">
            <timestamp>2020-11-2T20:28:34</timestamp>
            <rect width="368" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_ce" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_14">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="lcd_rw" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_17">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_we" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_18">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_oe" name="O" />
        </block>
        <block symbolname="lcd_control" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="south" name="CLEAR" />
            <blockpin signalname="V" name="Write" />
            <blockpin signalname="G,G,G,G" name="startAddress(3:0)" />
            <blockpin signalname="V,V,V,V" name="Count(3:0)" />
            <blockpin signalname="XLXN_118(7:0)" name="dataIn(7:0)" />
            <blockpin signalname="lcd_E" name="lcdEnable" />
            <blockpin signalname="lcd_rs" name="lcdRegSel" />
            <blockpin signalname="lcdReady" name="lcdReady" />
            <blockpin signalname="XLXN_124(3:0)" name="currentAddress(3:0)" />
            <blockpin signalname="lcd_D(3:0)" name="lcdData(3:0)" />
            <blockpin signalname="led1" name="row" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="switch(0)" name="I" />
            <blockpin signalname="led0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="switch(1)" name="I" />
            <blockpin signalname="led1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="switch(2)" name="I" />
            <blockpin signalname="led2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="switch(3)" name="I" />
            <blockpin signalname="led3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_61">
            <blockpin signalname="led0" name="I" />
            <blockpin signalname="shift_up" name="O" />
        </block>
        <block symbolname="input_2_hex_op" name="XLXI_64">
            <blockpin signalname="XLXN_135" name="count_up" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="east" name="shift" />
            <blockpin signalname="shift_up" name="shift_up" />
            <blockpin signalname="XLXN_136" name="count" />
            <blockpin signalname="XLXN_124(3:0)" name="posSel(3:0)" />
            <blockpin signalname="XLXN_384(15:0)" name="inputData(15:0)" />
            <blockpin signalname="XLXN_118(7:0)" name="lcdData(7:0)" />
            <blockpin name="op(2:0)" />
            <blockpin signalname="XLXN_387(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_147(15:0)" name="B(15:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="V" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="G" name="G" />
        </block>
        <block symbolname="or2" name="XLXI_129">
            <blockpin signalname="XLXN_116" name="I0" />
            <blockpin signalname="XLXN_368" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="debouncer" name="XLXI_124">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="w_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="XLXN_368" name="button_hi" />
        </block>
        <block symbolname="debouncer" name="XLXI_7">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="n_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="RESET" name="button_hi" />
        </block>
        <block symbolname="debouncer" name="XLXI_10">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="s_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="south" name="button_hi" />
        </block>
        <block symbolname="debounceRotary" name="XLXI_56">
            <blockpin signalname="a_button" name="A" />
            <blockpin signalname="b_button" name="B" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="G" name="RESET" />
            <blockpin signalname="XLXN_136" name="rot_event" />
            <blockpin signalname="XLXN_116" name="rot_event_delay" />
            <blockpin signalname="XLXN_135" name="rot_left" />
        </block>
        <block symbolname="debouncer" name="XLXI_60">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="r_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="east" name="button_hi" />
        </block>
        <block symbolname="gnd" name="XLXI_131">
            <blockpin signalname="ovfl" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_132">
            <blockpin signalname="zero" name="G" />
        </block>
        <block symbolname="final_processor" name="XLXI_134">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_116" name="reset" />
            <blockpin signalname="XLXN_387(15:0)" name="getin(15:0)" />
            <blockpin signalname="XLXN_384(15:0)" name="top_of_stack(15:0)" />
            <blockpin name="second_of_stack(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="1696" y1="480" y2="480" x1="1600" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1408" y="416" type="branch" />
            <wire x2="1408" y1="304" y2="304" x1="1280" />
            <wire x2="1408" y1="304" y2="416" x1="1408" />
            <wire x2="1408" y1="416" y2="544" x1="1408" />
            <wire x2="1696" y1="544" y2="544" x1="1408" />
        </branch>
        <branch name="lcdReady">
            <wire x2="2720" y1="672" y2="672" x1="2224" />
        </branch>
        <branch name="lcd_rs">
            <wire x2="2720" y1="576" y2="576" x1="2224" />
        </branch>
        <branch name="lcd_E">
            <wire x2="2720" y1="480" y2="480" x1="2224" />
        </branch>
        <branch name="sf_ce">
            <wire x2="2720" y1="320" y2="320" x1="2640" />
        </branch>
        <branch name="lcd_rw">
            <wire x2="2720" y1="400" y2="400" x1="2640" />
        </branch>
        <instance x="2416" y="352" name="XLXI_13" orien="R0" />
        <instance x="2416" y="432" name="XLXI_14" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="320" type="branch" />
            <wire x2="2416" y1="320" y2="320" x1="2320" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="400" type="branch" />
            <wire x2="2416" y1="400" y2="400" x1="2320" />
        </branch>
        <branch name="sf_we">
            <wire x2="2720" y1="240" y2="240" x1="2640" />
        </branch>
        <instance x="2416" y="272" name="XLXI_17" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="240" type="branch" />
            <wire x2="2416" y1="240" y2="240" x1="2320" />
        </branch>
        <branch name="sf_oe">
            <wire x2="2720" y1="160" y2="160" x1="2640" />
        </branch>
        <instance x="2416" y="192" name="XLXI_18" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2320" y="160" type="branch" />
            <wire x2="2416" y1="160" y2="160" x1="2320" />
        </branch>
        <branch name="south">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="608" type="branch" />
            <wire x2="1344" y1="608" y2="608" x1="1280" />
            <wire x2="1696" y1="608" y2="608" x1="1344" />
        </branch>
        <branch name="switch(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1456" y="2320" type="branch" />
            <wire x2="1536" y1="2320" y2="2320" x1="1456" />
        </branch>
        <branch name="switch(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1456" y="2400" type="branch" />
            <wire x2="1536" y1="2400" y2="2400" x1="1456" />
        </branch>
        <branch name="switch(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1456" y="2480" type="branch" />
            <wire x2="1536" y1="2480" y2="2480" x1="1456" />
        </branch>
        <branch name="switch(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1456" y="2560" type="branch" />
            <wire x2="1536" y1="2560" y2="2560" x1="1456" />
        </branch>
        <branch name="led0">
            <wire x2="1776" y1="2320" y2="2320" x1="1760" />
            <wire x2="1856" y1="2320" y2="2320" x1="1776" />
            <wire x2="1776" y1="2240" y2="2320" x1="1776" />
            <wire x2="1808" y1="2240" y2="2240" x1="1776" />
        </branch>
        <branch name="led1">
            <wire x2="1856" y1="2400" y2="2400" x1="1760" />
        </branch>
        <branch name="led2">
            <wire x2="1856" y1="2480" y2="2480" x1="1760" />
        </branch>
        <branch name="led3">
            <wire x2="1856" y1="2560" y2="2560" x1="1760" />
        </branch>
        <instance x="1536" y="2352" name="XLXI_3" orien="R0" />
        <instance x="1536" y="2432" name="XLXI_4" orien="R0" />
        <instance x="1536" y="2512" name="XLXI_5" orien="R0" />
        <instance x="1536" y="2592" name="XLXI_6" orien="R0" />
        <branch name="switch(3:0)">
            <wire x2="1440" y1="2160" y2="2160" x1="1280" />
        </branch>
        <branch name="XLXN_118(7:0)">
            <wire x2="1648" y1="864" y2="1040" x1="1648" />
            <wire x2="2304" y1="1040" y2="1040" x1="1648" />
            <wire x2="2304" y1="1040" y2="1264" x1="2304" />
            <wire x2="1696" y1="864" y2="864" x1="1648" />
            <wire x2="2304" y1="1264" y2="1264" x1="2208" />
        </branch>
        <branch name="XLXN_124(3:0)">
            <wire x2="1776" y1="1712" y2="1712" x1="1760" />
            <wire x2="1760" y1="1712" y2="1824" x1="1760" />
            <wire x2="2352" y1="1824" y2="1824" x1="1760" />
            <wire x2="2352" y1="768" y2="768" x1="2224" />
            <wire x2="2352" y1="768" y2="1824" x1="2352" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1680" y="1264" type="branch" />
            <wire x2="1776" y1="1264" y2="1264" x1="1680" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1680" y="1328" type="branch" />
            <wire x2="1776" y1="1328" y2="1328" x1="1680" />
        </branch>
        <branch name="shift_up">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1680" y="1392" type="branch" />
            <wire x2="1776" y1="1392" y2="1392" x1="1680" />
        </branch>
        <branch name="XLXN_135">
            <wire x2="1776" y1="1520" y2="1520" x1="1280" />
        </branch>
        <branch name="XLXN_136">
            <wire x2="1776" y1="1584" y2="1584" x1="1280" />
        </branch>
        <branch name="east">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1360" type="branch" />
            <wire x2="1360" y1="1360" y2="1360" x1="1280" />
            <wire x2="1520" y1="1360" y2="1360" x1="1360" />
            <wire x2="1520" y1="1360" y2="1456" x1="1520" />
            <wire x2="1776" y1="1456" y2="1456" x1="1520" />
        </branch>
        <instance x="1808" y="2272" name="XLXI_61" orien="R0" />
        <branch name="shift_up">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2080" y="2240" type="branch" />
            <wire x2="2080" y1="2240" y2="2240" x1="2032" />
        </branch>
        <instance x="1776" y="1744" name="XLXI_64" orien="R0">
        </instance>
        <branch name="XLXN_147(15:0)">
            <wire x2="2496" y1="1712" y2="1712" x1="2208" />
        </branch>
        <branch name="ovfl">
            <wire x2="3040" y1="1648" y2="1648" x1="2880" />
        </branch>
        <branch name="zero">
            <wire x2="3040" y1="1712" y2="1712" x1="2880" />
        </branch>
        <instance x="736" y="2384" name="XLXI_8" orien="R0" />
        <instance x="736" y="2624" name="XLXI_9" orien="R0" />
        <branch name="G">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="880" y="2480" type="branch" />
            <wire x2="880" y1="2480" y2="2480" x1="800" />
            <wire x2="800" y1="2480" y2="2496" x1="800" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="880" y="2400" type="branch" />
            <wire x2="800" y1="2384" y2="2400" x1="800" />
            <wire x2="880" y1="2400" y2="2400" x1="800" />
        </branch>
        <iomarker fontsize="28" x="1600" y="480" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="2720" y="320" name="sf_ce" orien="R0" />
        <iomarker fontsize="28" x="2720" y="400" name="lcd_rw" orien="R0" />
        <iomarker fontsize="28" x="2720" y="480" name="lcd_E" orien="R0" />
        <iomarker fontsize="28" x="2720" y="576" name="lcd_rs" orien="R0" />
        <iomarker fontsize="28" x="2720" y="672" name="lcdReady" orien="R0" />
        <iomarker fontsize="28" x="2720" y="240" name="sf_we" orien="R0" />
        <iomarker fontsize="28" x="2720" y="160" name="sf_oe" orien="R0" />
        <iomarker fontsize="28" x="1856" y="2400" name="led1" orien="R0" />
        <iomarker fontsize="28" x="1856" y="2480" name="led2" orien="R0" />
        <iomarker fontsize="28" x="1856" y="2560" name="led3" orien="R0" />
        <iomarker fontsize="28" x="1280" y="2160" name="switch(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1856" y="2320" name="led0" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1648" name="ovfl" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1712" name="zero" orien="R0" />
        <instance x="1504" y="1008" name="XLXI_129" orien="R270" />
        <branch name="w_button">
            <wire x2="896" y1="1056" y2="1056" x1="816" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="816" y="928" type="branch" />
            <wire x2="896" y1="928" y2="928" x1="816" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="816" y="992" type="branch" />
            <wire x2="896" y1="992" y2="992" x1="816" />
        </branch>
        <instance x="896" y="1088" name="XLXI_124" orien="R0">
        </instance>
        <iomarker fontsize="28" x="816" y="1056" name="w_button" orien="R180" />
        <instance x="896" y="336" name="XLXI_7" orien="R0">
        </instance>
        <branch name="n_button">
            <wire x2="896" y1="304" y2="304" x1="816" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="816" y="176" type="branch" />
            <wire x2="896" y1="176" y2="176" x1="816" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="816" y="240" type="branch" />
            <wire x2="896" y1="240" y2="240" x1="816" />
        </branch>
        <instance x="896" y="640" name="XLXI_10" orien="R0">
        </instance>
        <branch name="s_button">
            <wire x2="896" y1="608" y2="608" x1="816" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="816" y="480" type="branch" />
            <wire x2="896" y1="480" y2="480" x1="816" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="816" y="544" type="branch" />
            <wire x2="896" y1="544" y2="544" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="304" name="n_button" orien="R180" />
        <iomarker fontsize="28" x="816" y="608" name="s_button" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1584" type="branch" />
            <wire x2="896" y1="1584" y2="1584" x1="800" />
        </branch>
        <branch name="a_button">
            <wire x2="896" y1="1648" y2="1648" x1="800" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1520" type="branch" />
            <wire x2="896" y1="1520" y2="1520" x1="800" />
        </branch>
        <instance x="896" y="1744" name="XLXI_56" orien="R0">
        </instance>
        <branch name="b_button">
            <wire x2="896" y1="1712" y2="1712" x1="800" />
        </branch>
        <instance x="896" y="1392" name="XLXI_60" orien="R0">
        </instance>
        <branch name="r_button">
            <wire x2="896" y1="1360" y2="1360" x1="816" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="816" y="1232" type="branch" />
            <wire x2="896" y1="1232" y2="1232" x1="816" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="816" y="1296" type="branch" />
            <wire x2="896" y1="1296" y2="1296" x1="816" />
        </branch>
        <iomarker fontsize="28" x="800" y="1648" name="a_button" orien="R180" />
        <iomarker fontsize="28" x="800" y="1712" name="b_button" orien="R180" />
        <iomarker fontsize="28" x="816" y="1360" name="r_button" orien="R180" />
        <branch name="XLXN_116">
            <wire x2="1440" y1="1648" y2="1648" x1="1280" />
            <wire x2="1440" y1="1008" y2="1152" x1="1440" />
            <wire x2="1440" y1="1152" y2="1648" x1="1440" />
            <wire x2="2272" y1="1152" y2="1152" x1="1440" />
            <wire x2="2272" y1="1152" y2="1360" x1="2272" />
            <wire x2="2624" y1="1360" y2="1360" x1="2272" />
        </branch>
        <branch name="XLXN_368">
            <wire x2="1376" y1="1056" y2="1056" x1="1280" />
            <wire x2="1376" y1="1008" y2="1056" x1="1376" />
        </branch>
        <branch name="G,G,G,G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1600" y="736" type="branch" />
            <wire x2="1696" y1="736" y2="736" x1="1600" />
        </branch>
        <branch name="V,V,V,V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1600" y="800" type="branch" />
            <wire x2="1696" y1="800" y2="800" x1="1600" />
        </branch>
        <instance x="1696" y="960" name="XLXI_1" orien="R0">
        </instance>
        <branch name="led1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1600" y="928" type="branch" />
            <wire x2="1696" y1="928" y2="928" x1="1600" />
        </branch>
        <branch name="lcd_D(3:0)">
            <wire x2="2720" y1="864" y2="864" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2720" y="864" name="lcd_D(3:0)" orien="R0" />
        <instance x="2752" y="1584" name="XLXI_131" orien="R90" />
        <instance x="2752" y="1648" name="XLXI_132" orien="R90" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1312" type="branch" />
            <wire x2="2592" y1="1312" y2="1312" x1="2576" />
            <wire x2="2624" y1="1296" y2="1296" x1="2592" />
            <wire x2="2592" y1="1296" y2="1312" x1="2592" />
        </branch>
        <instance x="2624" y="1456" name="XLXI_134" orien="R0">
        </instance>
        <branch name="XLXN_384(15:0)">
            <wire x2="1696" y1="1168" y2="1648" x1="1696" />
            <wire x2="1776" y1="1648" y2="1648" x1="1696" />
            <wire x2="3184" y1="1168" y2="1168" x1="1696" />
            <wire x2="3184" y1="1168" y2="1296" x1="3184" />
            <wire x2="3184" y1="1296" y2="1296" x1="3120" />
        </branch>
        <branch name="XLXN_387(15:0)">
            <wire x2="2592" y1="1648" y2="1648" x1="2208" />
            <wire x2="2624" y1="1424" y2="1424" x1="2592" />
            <wire x2="2592" y1="1424" y2="1648" x1="2592" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="672" type="branch" />
            <wire x2="1696" y1="672" y2="672" x1="1632" />
        </branch>
    </sheet>
</drawing>