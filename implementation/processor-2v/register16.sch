<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D(15:0)" />
        <signal name="CE" />
        <signal name="C" />
        <signal name="R" />
        <signal name="Q(15:0)" />
        <port polarity="Input" name="D(15:0)" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="Q(15:0)" />
        <blockdef name="fd16re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="fd16re" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="D(15:0)" name="D(15:0)" />
            <blockpin signalname="R" name="R" />
            <blockpin signalname="Q(15:0)" name="Q(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="1264" name="XLXI_1" orien="R0" />
        <branch name="D(15:0)">
            <wire x2="1328" y1="1008" y2="1008" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1008" name="D(15:0)" orien="R180" />
        <branch name="CE">
            <wire x2="1328" y1="1072" y2="1072" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1072" name="CE" orien="R180" />
        <branch name="C">
            <wire x2="1328" y1="1136" y2="1136" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1136" name="C" orien="R180" />
        <branch name="R">
            <wire x2="1328" y1="1232" y2="1232" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1232" name="R" orien="R180" />
        <branch name="Q(15:0)">
            <wire x2="1744" y1="1008" y2="1008" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1008" name="Q(15:0)" orien="R0" />
    </sheet>
</drawing>