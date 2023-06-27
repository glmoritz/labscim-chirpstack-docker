package tsch.simulations.wireless.sim;

import inet.common.geometry.common.SimpleGeographicCoordinateSystem;
import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.node.inet.AdhocHost;
import inet.node.inet.WirelessHost;
import labscim.physicallayer.LabscimRadioRecorder;
import inet.environment.common.PhysicalEnvironment;


network AlineTests
{
    parameters:
        int numClass1Hosts;
        int numClass2Hosts;
        int numClass3Hosts;
                
        int SimulationAreaX = default(1000);
        int SimulationAreaY = default(1000);
        
        @display("bgb=450,450");      
        
        @statistic[UpstreamPacketGenerated](record=histogram,vector?; interpolationmode=none);
        @statistic[UpstreamPacketLatency](record=histogram,vector?; interpolationmode=none);
        @statistic[UpstreamPacketHopcount](record=histogram,vector?; interpolationmode=none);
        @statistic[UpstreamPacketError](record=histogram,vector?; interpolationmode=none);
        
        @statistic[DownstreamPacketGenerated](record=histogram,vector?; interpolationmode=none);
        @statistic[DownstreamPacketLatency](record=histogram,vector?; interpolationmode=none);
        @statistic[DownstreamPacketHopcount](record=histogram,vector?; interpolationmode=none);
        @statistic[PacketRTT](record=histogram,vector?; interpolationmode=none);        
        
        @statistic[NodeJoin](record=histogram,vector?; interpolationmode=none);
        @statistic[NodeLeave](record=histogram,vector?; interpolationmode=none);        
        @statistic[NodeAssociated](record=histogram,vector?; interpolationmode=none);
        @statistic[NodeDisassociated](record=histogram,vector?; interpolationmode=none);
        
        @statistic[UpstreamAoIMax](record=histogram,vector?; interpolationmode=none);
        @statistic[UpstreamAoIMin](record=histogram,vector?; interpolationmode=none);        
        @statistic[UpstreamAoIArea](record=histogram,vector?; interpolationmode=none);
        
        @statistic[DownstreamAoIMax](record=histogram,vector?; interpolationmode=none);
        @statistic[DownstreamAoIMin](record=histogram,vector?; interpolationmode=none);        
        @statistic[DownstreamAoIArea](record=histogram,vector?; interpolationmode=none);
        
        	
        
    submodules:      
        
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            parameters:
                @display("p=100,300;is=s");
        }     
          
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
        
        Class1Host[numClass1Hosts]: AdhocHost {
            @display("r=,,#707070;p=250,200;i=misc/sensor2");            
        }
        
        Class2Host[numClass2Hosts]: AdhocHost {
            @display("r=,,#707070;p=250,200;i=misc/sensor2");            
        }        
        
        Class3Host[numClass3Hosts]: AdhocHost {
            @display("r=,,#707070;p=250,200;i=misc/sensor2");            
        }        
                
        
        spectrumrecorder: LabscimRadioRecorder {
            @display("r=,,#707070;p=250,200;i=misc/sensor2");            
        }    
        
        physicalEnvironment: PhysicalEnvironment {
            @display("p=40,40");
        }   
        
}
