<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RESET" />
        <signal name="sel0" />
        <signal name="CLK" />
        <signal name="count" />
        <signal name="XLXN_30" />
        <signal name="up" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="sel1" />
        <signal name="sel2" />
        <signal name="sel3" />
        <signal name="sel4" />
        <signal name="sel5" />
        <signal name="sel6" />
        <signal name="sel7" />
        <signal name="sel8" />
        <signal name="isel0" />
        <signal name="isel1" />
        <signal name="isel2" />
        <signal name="isel3" />
        <signal name="isel4" />
        <signal name="isel5" />
        <signal name="isel6" />
        <signal name="isel7" />
        <signal name="isel8" />
        <signal name="enable" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="sel0" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="count" />
        <port polarity="Input" name="up" />
        <port polarity="Output" name="sel1" />
        <port polarity="Output" name="sel2" />
        <port polarity="Output" name="sel3" />
        <port polarity="Output" name="sel4" />
        <port polarity="Output" name="sel5" />
        <port polarity="Output" name="sel6" />
        <port polarity="Output" name="sel7" />
        <port polarity="Output" name="sel8" />
        <port polarity="Input" name="enable" />
        <blockdef name="fdcpe">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="fdcpe" name="XLXI_6">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="XLXN_30" name="CLR" />
            <blockpin signalname="XLXN_76" name="D" />
            <blockpin signalname="RESET" name="PRE" />
            <blockpin signalname="isel0" name="Q" />
        </block>
        <block symbolname="fdcpe" name="XLXI_13">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_77" name="D" />
            <blockpin signalname="XLXN_30" name="PRE" />
            <blockpin signalname="isel1" name="Q" />
        </block>
        <block symbolname="fdcpe" name="XLXI_14">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_78" name="D" />
            <blockpin signalname="XLXN_30" name="PRE" />
            <blockpin signalname="isel2" name="Q" />
        </block>
        <block symbolname="fdcpe" name="XLXI_15">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_79" name="D" />
            <blockpin signalname="XLXN_30" name="PRE" />
            <blockpin signalname="isel3" name="Q" />
        </block>
        <block symbolname="fdcpe" name="XLXI_16">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_80" name="D" />
            <blockpin signalname="XLXN_30" name="PRE" />
            <blockpin signalname="isel4" name="Q" />
        </block>
        <block symbolname="fdcpe" name="XLXI_17">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_81" name="D" />
            <blockpin signalname="XLXN_30" name="PRE" />
            <blockpin signalname="isel5" name="Q" />
        </block>
        <block symbolname="fdcpe" name="XLXI_18">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_82" name="D" />
            <blockpin signalname="XLXN_30" name="PRE" />
            <blockpin signalname="isel6" name="Q" />
        </block>
        <block symbolname="fdcpe" name="XLXI_19">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_83" name="D" />
            <blockpin signalname="XLXN_30" name="PRE" />
            <blockpin signalname="isel7" name="Q" />
        </block>
        <block symbolname="fdcpe" name="XLXI_20">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="count" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_84" name="D" />
            <blockpin signalname="XLXN_30" name="PRE" />
            <blockpin signalname="isel8" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_53">
            <blockpin signalname="XLXN_30" name="G" />
        </block>
        <block symbolname="m2_1" name="XLXI_56">
            <blockpin signalname="isel2" name="D0" />
            <blockpin signalname="isel0" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_57">
            <blockpin signalname="isel3" name="D0" />
            <blockpin signalname="isel1" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_60">
            <blockpin signalname="isel6" name="D0" />
            <blockpin signalname="isel4" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_62">
            <blockpin signalname="isel8" name="D0" />
            <blockpin signalname="isel6" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_63">
            <blockpin signalname="isel0" name="D0" />
            <blockpin signalname="isel7" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_61">
            <blockpin signalname="isel7" name="D0" />
            <blockpin signalname="isel5" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_59">
            <blockpin signalname="isel5" name="D0" />
            <blockpin signalname="isel3" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_58">
            <blockpin signalname="isel4" name="D0" />
            <blockpin signalname="isel2" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_21">
            <blockpin signalname="isel1" name="D0" />
            <blockpin signalname="isel8" name="D1" />
            <blockpin signalname="up" name="S0" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_64">
            <blockpin signalname="isel0" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_65">
            <blockpin signalname="isel1" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_66">
            <blockpin signalname="isel2" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_67">
            <blockpin signalname="isel3" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_68">
            <blockpin signalname="isel4" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_69">
            <blockpin signalname="isel5" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_70">
            <blockpin signalname="isel6" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_71">
            <blockpin signalname="isel7" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_72">
            <blockpin signalname="isel8" name="I0" />
            <blockpin signalname="enable" name="I1" />
            <blockpin signalname="sel8" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="2016" y="1952" name="XLXI_13" orien="R0" />
        <instance x="2016" y="2352" name="XLXI_14" orien="R0" />
        <instance x="2016" y="2752" name="XLXI_15" orien="R0" />
        <instance x="2016" y="3152" name="XLXI_16" orien="R0" />
        <instance x="2016" y="3552" name="XLXI_17" orien="R0" />
        <instance x="2016" y="3952" name="XLXI_18" orien="R0" />
        <instance x="2016" y="4352" name="XLXI_19" orien="R0" />
        <instance x="2016" y="4752" name="XLXI_20" orien="R0" />
        <branch name="RESET">
            <wire x2="1920" y1="1040" y2="1040" x1="1360" />
            <wire x2="1920" y1="1040" y2="1200" x1="1920" />
            <wire x2="1920" y1="1200" y2="1920" x1="1920" />
            <wire x2="2016" y1="1920" y2="1920" x1="1920" />
            <wire x2="1920" y1="1920" y2="2320" x1="1920" />
            <wire x2="2016" y1="2320" y2="2320" x1="1920" />
            <wire x2="1920" y1="2320" y2="2720" x1="1920" />
            <wire x2="2016" y1="2720" y2="2720" x1="1920" />
            <wire x2="1920" y1="2720" y2="3120" x1="1920" />
            <wire x2="2016" y1="3120" y2="3120" x1="1920" />
            <wire x2="1920" y1="3120" y2="3520" x1="1920" />
            <wire x2="2016" y1="3520" y2="3520" x1="1920" />
            <wire x2="1920" y1="3520" y2="3920" x1="1920" />
            <wire x2="2016" y1="3920" y2="3920" x1="1920" />
            <wire x2="1920" y1="3920" y2="4320" x1="1920" />
            <wire x2="1920" y1="4320" y2="4720" x1="1920" />
            <wire x2="2016" y1="4720" y2="4720" x1="1920" />
            <wire x2="2016" y1="4320" y2="4320" x1="1920" />
            <wire x2="2016" y1="1200" y2="1200" x1="1920" />
        </branch>
        <branch name="CLK">
            <wire x2="1984" y1="960" y2="960" x1="1360" />
            <wire x2="1984" y1="960" y2="1424" x1="1984" />
            <wire x2="1984" y1="1424" y2="1824" x1="1984" />
            <wire x2="2016" y1="1824" y2="1824" x1="1984" />
            <wire x2="1984" y1="1824" y2="2224" x1="1984" />
            <wire x2="2016" y1="2224" y2="2224" x1="1984" />
            <wire x2="1984" y1="2224" y2="2624" x1="1984" />
            <wire x2="2016" y1="2624" y2="2624" x1="1984" />
            <wire x2="1984" y1="2624" y2="3024" x1="1984" />
            <wire x2="2016" y1="3024" y2="3024" x1="1984" />
            <wire x2="1984" y1="3024" y2="3424" x1="1984" />
            <wire x2="2016" y1="3424" y2="3424" x1="1984" />
            <wire x2="1984" y1="3424" y2="3824" x1="1984" />
            <wire x2="2016" y1="3824" y2="3824" x1="1984" />
            <wire x2="1984" y1="3824" y2="4224" x1="1984" />
            <wire x2="1984" y1="4224" y2="4624" x1="1984" />
            <wire x2="2016" y1="4624" y2="4624" x1="1984" />
            <wire x2="2016" y1="4224" y2="4224" x1="1984" />
            <wire x2="2016" y1="1424" y2="1424" x1="1984" />
        </branch>
        <branch name="count">
            <wire x2="1856" y1="1120" y2="1120" x1="1360" />
            <wire x2="1856" y1="1120" y2="1360" x1="1856" />
            <wire x2="1856" y1="1360" y2="1760" x1="1856" />
            <wire x2="1856" y1="1760" y2="2160" x1="1856" />
            <wire x2="1856" y1="2160" y2="2560" x1="1856" />
            <wire x2="1856" y1="2560" y2="2960" x1="1856" />
            <wire x2="1856" y1="2960" y2="3360" x1="1856" />
            <wire x2="1856" y1="3360" y2="3760" x1="1856" />
            <wire x2="1856" y1="3760" y2="4160" x1="1856" />
            <wire x2="2016" y1="4160" y2="4160" x1="1856" />
            <wire x2="1856" y1="4160" y2="4560" x1="1856" />
            <wire x2="2016" y1="4560" y2="4560" x1="1856" />
            <wire x2="2016" y1="3760" y2="3760" x1="1856" />
            <wire x2="2016" y1="3360" y2="3360" x1="1856" />
            <wire x2="2016" y1="2960" y2="2960" x1="1856" />
            <wire x2="2016" y1="2560" y2="2560" x1="1856" />
            <wire x2="2016" y1="2160" y2="2160" x1="1856" />
            <wire x2="2016" y1="1760" y2="1760" x1="1856" />
            <wire x2="2016" y1="1360" y2="1360" x1="1856" />
        </branch>
        <instance x="1728" y="4848" name="XLXI_53" orien="R0" />
        <iomarker fontsize="28" x="1360" y="960" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1040" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1120" name="count" orien="R180" />
        <instance x="1424" y="1824" name="XLXI_56" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="1792" y2="1792" x1="1360" />
        </branch>
        <branch name="isel0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="1728" type="branch" />
            <wire x2="1424" y1="1728" y2="1728" x1="1360" />
        </branch>
        <branch name="isel2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="1664" type="branch" />
            <wire x2="1424" y1="1664" y2="1664" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1792" name="up" orien="R180" />
        <instance x="1424" y="2224" name="XLXI_57" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="2192" y2="2192" x1="1360" />
        </branch>
        <branch name="isel1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="2128" type="branch" />
            <wire x2="1424" y1="2128" y2="2128" x1="1360" />
        </branch>
        <branch name="isel3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="2064" type="branch" />
            <wire x2="1424" y1="2064" y2="2064" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="2192" name="up" orien="R180" />
        <instance x="1424" y="3424" name="XLXI_60" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="3392" y2="3392" x1="1360" />
        </branch>
        <branch name="isel4">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="3328" type="branch" />
            <wire x2="1424" y1="3328" y2="3328" x1="1360" />
        </branch>
        <branch name="isel6">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="3264" type="branch" />
            <wire x2="1424" y1="3264" y2="3264" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="3392" name="up" orien="R180" />
        <instance x="1424" y="4224" name="XLXI_62" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="4192" y2="4192" x1="1360" />
        </branch>
        <branch name="isel6">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="4128" type="branch" />
            <wire x2="1424" y1="4128" y2="4128" x1="1360" />
        </branch>
        <branch name="isel8">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="4064" type="branch" />
            <wire x2="1424" y1="4064" y2="4064" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="4192" name="up" orien="R180" />
        <instance x="1424" y="4624" name="XLXI_63" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="4592" y2="4592" x1="1360" />
        </branch>
        <branch name="isel7">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="4528" type="branch" />
            <wire x2="1424" y1="4528" y2="4528" x1="1360" />
        </branch>
        <branch name="isel0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="4464" type="branch" />
            <wire x2="1424" y1="4464" y2="4464" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="4592" name="up" orien="R180" />
        <instance x="1424" y="3824" name="XLXI_61" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="3792" y2="3792" x1="1360" />
        </branch>
        <branch name="isel5">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="3728" type="branch" />
            <wire x2="1424" y1="3728" y2="3728" x1="1360" />
        </branch>
        <branch name="isel7">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="3664" type="branch" />
            <wire x2="1424" y1="3664" y2="3664" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="3792" name="up" orien="R180" />
        <instance x="1424" y="3024" name="XLXI_59" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="2992" y2="2992" x1="1360" />
        </branch>
        <branch name="isel3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="2928" type="branch" />
            <wire x2="1424" y1="2928" y2="2928" x1="1360" />
        </branch>
        <branch name="isel5">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="2864" type="branch" />
            <wire x2="1424" y1="2864" y2="2864" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="2992" name="up" orien="R180" />
        <instance x="1424" y="2624" name="XLXI_58" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="2592" y2="2592" x1="1360" />
        </branch>
        <branch name="isel2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="2528" type="branch" />
            <wire x2="1424" y1="2528" y2="2528" x1="1360" />
        </branch>
        <branch name="isel4">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="2464" type="branch" />
            <wire x2="1424" y1="2464" y2="2464" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="2592" name="up" orien="R180" />
        <instance x="2016" y="1552" name="XLXI_6" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="2016" y1="1520" y2="1520" x1="1792" />
            <wire x2="1792" y1="1520" y2="1600" x1="1792" />
            <wire x2="1792" y1="1600" y2="2000" x1="1792" />
            <wire x2="1792" y1="2000" y2="2400" x1="1792" />
            <wire x2="1792" y1="2400" y2="2800" x1="1792" />
            <wire x2="2016" y1="2800" y2="2800" x1="1792" />
            <wire x2="1792" y1="2800" y2="3200" x1="1792" />
            <wire x2="2016" y1="3200" y2="3200" x1="1792" />
            <wire x2="1792" y1="3200" y2="3600" x1="1792" />
            <wire x2="2016" y1="3600" y2="3600" x1="1792" />
            <wire x2="1792" y1="3600" y2="4000" x1="1792" />
            <wire x2="1792" y1="4000" y2="4400" x1="1792" />
            <wire x2="1792" y1="4400" y2="4720" x1="1792" />
            <wire x2="2016" y1="4400" y2="4400" x1="1792" />
            <wire x2="2016" y1="4000" y2="4000" x1="1792" />
            <wire x2="2016" y1="2400" y2="2400" x1="1792" />
            <wire x2="2016" y1="2000" y2="2000" x1="1792" />
            <wire x2="2016" y1="1600" y2="1600" x1="1792" />
        </branch>
        <instance x="1424" y="1424" name="XLXI_21" orien="R0" />
        <branch name="up">
            <wire x2="1424" y1="1392" y2="1392" x1="1360" />
        </branch>
        <branch name="isel8">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="1328" type="branch" />
            <wire x2="1424" y1="1328" y2="1328" x1="1360" />
        </branch>
        <branch name="isel1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1360" y="1264" type="branch" />
            <wire x2="1424" y1="1264" y2="1264" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1392" name="up" orien="R180" />
        <branch name="XLXN_76">
            <wire x2="2016" y1="1296" y2="1296" x1="1744" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="2000" y1="1696" y2="1696" x1="1744" />
            <wire x2="2016" y1="1696" y2="1696" x1="2000" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="2016" y1="2096" y2="2096" x1="1744" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="2016" y1="2496" y2="2496" x1="1744" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="2016" y1="2896" y2="2896" x1="1744" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="2016" y1="3296" y2="3296" x1="1744" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="2016" y1="3696" y2="3696" x1="1744" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="1760" y1="4096" y2="4096" x1="1744" />
            <wire x2="2016" y1="4096" y2="4096" x1="1760" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="2016" y1="4496" y2="4496" x1="1744" />
        </branch>
        <instance x="2496" y="1360" name="XLXI_64" orien="R0" />
        <instance x="2496" y="1760" name="XLXI_65" orien="R0" />
        <instance x="2496" y="2160" name="XLXI_66" orien="R0" />
        <instance x="2496" y="2560" name="XLXI_67" orien="R0" />
        <instance x="2496" y="2960" name="XLXI_68" orien="R0" />
        <instance x="2496" y="3360" name="XLXI_69" orien="R0" />
        <instance x="2496" y="3760" name="XLXI_70" orien="R0" />
        <instance x="2496" y="4160" name="XLXI_71" orien="R0" />
        <instance x="2496" y="4560" name="XLXI_72" orien="R0" />
        <branch name="isel0">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="1296" type="branch" />
            <wire x2="2416" y1="1296" y2="1296" x1="2400" />
            <wire x2="2496" y1="1296" y2="1296" x1="2416" />
        </branch>
        <branch name="isel1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="1696" type="branch" />
            <wire x2="2416" y1="1696" y2="1696" x1="2400" />
            <wire x2="2496" y1="1696" y2="1696" x1="2416" />
        </branch>
        <branch name="isel2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="2096" type="branch" />
            <wire x2="2416" y1="2096" y2="2096" x1="2400" />
            <wire x2="2496" y1="2096" y2="2096" x1="2416" />
        </branch>
        <branch name="isel3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="2496" type="branch" />
            <wire x2="2416" y1="2496" y2="2496" x1="2400" />
            <wire x2="2496" y1="2496" y2="2496" x1="2416" />
        </branch>
        <branch name="isel4">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="2896" type="branch" />
            <wire x2="2416" y1="2896" y2="2896" x1="2400" />
            <wire x2="2496" y1="2896" y2="2896" x1="2416" />
        </branch>
        <branch name="isel5">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="3296" type="branch" />
            <wire x2="2416" y1="3296" y2="3296" x1="2400" />
            <wire x2="2496" y1="3296" y2="3296" x1="2416" />
        </branch>
        <branch name="isel6">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="3696" type="branch" />
            <wire x2="2416" y1="3696" y2="3696" x1="2400" />
            <wire x2="2496" y1="3696" y2="3696" x1="2416" />
        </branch>
        <branch name="isel7">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="4096" type="branch" />
            <wire x2="2416" y1="4096" y2="4096" x1="2400" />
            <wire x2="2496" y1="4096" y2="4096" x1="2416" />
        </branch>
        <branch name="isel8">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2416" y="4496" type="branch" />
            <wire x2="2416" y1="4496" y2="4496" x1="2400" />
            <wire x2="2496" y1="4496" y2="4496" x1="2416" />
        </branch>
        <branch name="enable">
            <wire x2="2464" y1="880" y2="880" x1="1360" />
            <wire x2="2464" y1="880" y2="1232" x1="2464" />
            <wire x2="2496" y1="1232" y2="1232" x1="2464" />
            <wire x2="2464" y1="1232" y2="1632" x1="2464" />
            <wire x2="2496" y1="1632" y2="1632" x1="2464" />
            <wire x2="2464" y1="1632" y2="2032" x1="2464" />
            <wire x2="2496" y1="2032" y2="2032" x1="2464" />
            <wire x2="2464" y1="2032" y2="2432" x1="2464" />
            <wire x2="2496" y1="2432" y2="2432" x1="2464" />
            <wire x2="2464" y1="2432" y2="2832" x1="2464" />
            <wire x2="2496" y1="2832" y2="2832" x1="2464" />
            <wire x2="2464" y1="2832" y2="3232" x1="2464" />
            <wire x2="2496" y1="3232" y2="3232" x1="2464" />
            <wire x2="2464" y1="3232" y2="3632" x1="2464" />
            <wire x2="2496" y1="3632" y2="3632" x1="2464" />
            <wire x2="2464" y1="3632" y2="4032" x1="2464" />
            <wire x2="2464" y1="4032" y2="4192" x1="2464" />
            <wire x2="2464" y1="4192" y2="4432" x1="2464" />
            <wire x2="2496" y1="4432" y2="4432" x1="2464" />
            <wire x2="2496" y1="4032" y2="4032" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="1360" y="880" name="enable" orien="R180" />
        <branch name="sel0">
            <wire x2="2768" y1="1264" y2="1264" x1="2752" />
            <wire x2="2896" y1="1264" y2="1264" x1="2768" />
        </branch>
        <branch name="sel1">
            <wire x2="2768" y1="1664" y2="1664" x1="2752" />
            <wire x2="2896" y1="1664" y2="1664" x1="2768" />
        </branch>
        <branch name="sel2">
            <wire x2="2768" y1="2064" y2="2064" x1="2752" />
            <wire x2="2896" y1="2064" y2="2064" x1="2768" />
        </branch>
        <branch name="sel3">
            <wire x2="2768" y1="2464" y2="2464" x1="2752" />
            <wire x2="2896" y1="2464" y2="2464" x1="2768" />
        </branch>
        <branch name="sel4">
            <wire x2="2768" y1="2864" y2="2864" x1="2752" />
            <wire x2="2896" y1="2864" y2="2864" x1="2768" />
        </branch>
        <branch name="sel5">
            <wire x2="2768" y1="3264" y2="3264" x1="2752" />
            <wire x2="2896" y1="3264" y2="3264" x1="2768" />
        </branch>
        <branch name="sel6">
            <wire x2="2768" y1="3664" y2="3664" x1="2752" />
            <wire x2="2896" y1="3664" y2="3664" x1="2768" />
        </branch>
        <branch name="sel7">
            <wire x2="2768" y1="4064" y2="4064" x1="2752" />
            <wire x2="2896" y1="4064" y2="4064" x1="2768" />
        </branch>
        <branch name="sel8">
            <wire x2="2768" y1="4464" y2="4464" x1="2752" />
            <wire x2="2896" y1="4464" y2="4464" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2896" y="1264" name="sel0" orien="R0" />
        <iomarker fontsize="28" x="2896" y="1664" name="sel1" orien="R0" />
        <iomarker fontsize="28" x="2896" y="2064" name="sel2" orien="R0" />
        <iomarker fontsize="28" x="2896" y="2464" name="sel3" orien="R0" />
        <iomarker fontsize="28" x="2896" y="2864" name="sel4" orien="R0" />
        <iomarker fontsize="28" x="2896" y="3264" name="sel5" orien="R0" />
        <iomarker fontsize="28" x="2896" y="3664" name="sel6" orien="R0" />
        <iomarker fontsize="28" x="2896" y="4064" name="sel7" orien="R0" />
        <iomarker fontsize="28" x="2896" y="4464" name="sel8" orien="R0" />
    </sheet>
</drawing>