<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CE" />
        <signal name="C" />
        <signal name="Q(15:0)" />
        <signal name="D(15:0)" />
        <signal name="R" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Q(15:0)" />
        <port polarity="Input" name="D(15:0)" />
        <port polarity="Input" name="R" />
        <blockdef name="fd16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="fd16ce" name="XLXI_3">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="R" name="CLR" />
            <blockpin signalname="D(15:0)" name="D(15:0)" />
            <blockpin signalname="Q(15:0)" name="Q(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CE">
            <wire x2="1216" y1="1040" y2="1040" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1040" name="CE" orien="R180" />
        <branch name="C">
            <wire x2="1216" y1="1104" y2="1104" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1104" name="C" orien="R180" />
        <branch name="Q(15:0)">
            <wire x2="1632" y1="976" y2="976" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1632" y="976" name="Q(15:0)" orien="R0" />
        <instance x="1216" y="1232" name="XLXI_3" orien="R0" />
        <branch name="D(15:0)">
            <wire x2="1216" y1="976" y2="976" x1="1184" />
        </branch>
        <branch name="R">
            <wire x2="1216" y1="1200" y2="1200" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1200" name="R" orien="R180" />
        <iomarker fontsize="28" x="1184" y="976" name="D(15:0)" orien="R180" />
    </sheet>
</drawing>