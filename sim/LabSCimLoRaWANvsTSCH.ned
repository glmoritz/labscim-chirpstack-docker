//
// Simulation model for IEEE 802.15.4 Time Slotted Channel Hopping (TSCH)
//
// Copyright (C) 2019  Institute of Communication Networks (ComNets),
//                     Hamburg University of Technology (TUHH)
//           (C) 2019  Leo Krueger
//           (C) 2006  Andras Varga
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.
//


package tsch.simulations.wireless.sim;
//package labscimtest;
import inet.common.geometry.common.SimpleGeographicCoordinateSystem;
import inet.visualizer.integrated.IntegratedCanvasVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.node.inet.AdhocHost;
import inet.node.inet.WirelessHost;
import labscim.physicallayer.LabscimRadioRecorder;

network LabSCimLoRaWANvsTSCH
{
    parameters:
        int numLoRaHosts;
        int numContikingHosts;
        
        int SimulationAreaX = default(1000);
        int SimulationAreaY = default(1000);
        
        @display("bgb=450,450");
        
        @statistic[LoRaUpstreamPacketGenerated](record=histogram,vector?; interpolationmode=none);
        @statistic[LoRaUpstreamPacketLatency](record=histogram,vector?; interpolationmode=none);
        @statistic[LoRaDownstreamPacketLatency](record=histogram,vector?; interpolationmode=none);
        @statistic[LoRaUpstreamPacketError](record=histogram,vector?; interpolationmode=none);
        @statistic[LoRaDownstreamPacketGenerated](record=histogram,vector?; interpolationmode=none);
        @statistic[LoRaNodeJoin](record=histogram,vector?; interpolationmode=none);
        @statistic[LoRaPacketRTT](record=histogram,vector?; interpolationmode=none);
        
        @statistic[LoRaUpstreamAoIMax](record=histogram,vector?; interpolationmode=none);
        @statistic[LoRaUpstreamAoIMin](record=histogram,vector?; interpolationmode=none);        
        @statistic[LoRaUpstreamAoIArea](record=histogram,vector?; interpolationmode=none);
        
        @statistic[LoRaDownstreamAoIMax](record=histogram,vector?; interpolationmode=none);
        @statistic[LoRaDownstreamAoIMin](record=histogram,vector?; interpolationmode=none);        
        @statistic[LoRaDownstreamAoIArea](record=histogram,vector?; interpolationmode=none);      
        
        
        @statistic[TSCHUpstreamPacketGenerated](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHUpstreamPacketLatency](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHUpstreamPacketHopcount](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHUpstreamPacketError](record=histogram,vector?; interpolationmode=none);
        
        @statistic[TSCHDownstreamPacketGenerated](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHDownstreamPacketLatency](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHDownstreamPacketHopcount](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHPacketRTT](record=histogram,vector?; interpolationmode=none);        
        
        @statistic[TSCHNodeJoin](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHNodeLeave](record=histogram,vector?; interpolationmode=none);        
        @statistic[TSCHNodeAssociated](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHNodeDisassociated](record=histogram,vector?; interpolationmode=none);
        
        @statistic[TSCHUpstreamAoIMax](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHUpstreamAoIMin](record=histogram,vector?; interpolationmode=none);        
        @statistic[TSCHUpstreamAoIArea](record=histogram,vector?; interpolationmode=none);
        
        @statistic[TSCHDownstreamAoIMax](record=histogram,vector?; interpolationmode=none);
        @statistic[TSCHDownstreamAoIMin](record=histogram,vector?; interpolationmode=none);        
        @statistic[TSCHDownstreamAoIArea](record=histogram,vector?; interpolationmode=none);
        
        	
        
    submodules:      
        
          //visualizer: IntegratedCanvasVisualizer {
        //    parameters:
        //        @display("p=100,100");
        //}        
          
        coordinateSystem: SimpleGeographicCoordinateSystem {
            parameters:
                @display("p=100,150");
        }
        
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=100,100;is=s");
        }
          
        radioMedium: <> like IRadioMedium {
            parameters:
                @display("p=100,200;is=s");
        }

        lorahost[numLoRaHosts]: AdhocHost {
            @display("r=,,#707070;p=250,200;i=misc/sensor2");            
        }
        
        contikinghost[numContikingHosts]: AdhocHost {
            @display("r=,,#707070;p=250,200;i=misc/sensor2");            
        }        
        
        spectrumrecorder: LabscimRadioRecorder {
            @display("r=,,#707070;p=250,200;i=misc/sensor2");            
        }       
        
}
