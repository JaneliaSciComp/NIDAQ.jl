# Julia wrapper for header: NIDAQmx.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function DAQmxLoadTask(taskName::Ptr{UInt8},taskHandle::Ptr{TaskHandle})
    ccall((:DAQmxLoadTask,NIDAQmx),int32,(Ptr{UInt8},Ptr{TaskHandle}),taskName,taskHandle)
end

function DAQmxCreateTask(taskName::Ptr{UInt8},taskHandle::Ptr{TaskHandle})
    ccall((:DAQmxCreateTask,NIDAQmx),int32,(Ptr{UInt8},Ptr{TaskHandle}),taskName,taskHandle)
end

function DAQmxAddGlobalChansToTask(taskHandle::TaskHandle,channelNames::Ptr{UInt8})
    ccall((:DAQmxAddGlobalChansToTask,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channelNames)
end

function DAQmxStartTask(taskHandle::TaskHandle)
    ccall((:DAQmxStartTask,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxStopTask(taskHandle::TaskHandle)
    ccall((:DAQmxStopTask,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxClearTask(taskHandle::TaskHandle)
    ccall((:DAQmxClearTask,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxWaitUntilTaskDone(taskHandle::TaskHandle,timeToWait::float64)
    ccall((:DAQmxWaitUntilTaskDone,NIDAQmx),int32,(TaskHandle,float64),taskHandle,timeToWait)
end

function DAQmxIsTaskDone(taskHandle::TaskHandle,isTaskDone::Ptr{bool32})
    ccall((:DAQmxIsTaskDone,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,isTaskDone)
end

function DAQmxTaskControl(taskHandle::TaskHandle,action::int32)
    ccall((:DAQmxTaskControl,NIDAQmx),int32,(TaskHandle,int32),taskHandle,action)
end

function DAQmxGetNthTaskChannel(taskHandle::TaskHandle,index::uInt32,buffer::Ptr{UInt8},bufferSize::int32)
    ccall((:DAQmxGetNthTaskChannel,NIDAQmx),int32,(TaskHandle,uInt32,Ptr{UInt8},int32),taskHandle,index,buffer,bufferSize)
end

function DAQmxGetNthTaskDevice(taskHandle::TaskHandle,index::uInt32,buffer::Ptr{UInt8},bufferSize::int32)
    ccall((:DAQmxGetNthTaskDevice,NIDAQmx),int32,(TaskHandle,uInt32,Ptr{UInt8},int32),taskHandle,index,buffer,bufferSize)
end

function DAQmxRegisterEveryNSamplesEvent(task::TaskHandle,everyNsamplesEventType::int32,nSamples::uInt32,options::uInt32,callbackFunction::DAQmxEveryNSamplesEventCallbackPtr,callbackData::Ptr{Void})
    ccall((:DAQmxRegisterEveryNSamplesEvent,NIDAQmx),int32,(TaskHandle,int32,uInt32,uInt32,DAQmxEveryNSamplesEventCallbackPtr,Ptr{Void}),task,everyNsamplesEventType,nSamples,options,callbackFunction,callbackData)
end

function DAQmxRegisterDoneEvent(task::TaskHandle,options::uInt32,callbackFunction::DAQmxDoneEventCallbackPtr,callbackData::Ptr{Void})
    ccall((:DAQmxRegisterDoneEvent,NIDAQmx),int32,(TaskHandle,uInt32,DAQmxDoneEventCallbackPtr,Ptr{Void}),task,options,callbackFunction,callbackData)
end

function DAQmxRegisterSignalEvent(task::TaskHandle,signalID::int32,options::uInt32,callbackFunction::DAQmxSignalEventCallbackPtr,callbackData::Ptr{Void})
    ccall((:DAQmxRegisterSignalEvent,NIDAQmx),int32,(TaskHandle,int32,uInt32,DAQmxSignalEventCallbackPtr,Ptr{Void}),task,signalID,options,callbackFunction,callbackData)
end

function DAQmxCreateAIVoltageChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIVoltageChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateAICurrentChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,shuntResistorLoc::int32,extShuntResistorVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAICurrentChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,shuntResistorLoc,extShuntResistorVal,customScaleName)
end

function DAQmxCreateAIVoltageRMSChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIVoltageRMSChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateAICurrentRMSChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,shuntResistorLoc::int32,extShuntResistorVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAICurrentRMSChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,shuntResistorLoc,extShuntResistorVal,customScaleName)
end

function DAQmxCreateAIThrmcplChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,thermocoupleType::int32,cjcSource::int32,cjcVal::float64,cjcChannel::Ptr{UInt8})
    ccall((:DAQmxCreateAIThrmcplChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,thermocoupleType,cjcSource,cjcVal,cjcChannel)
end

function DAQmxCreateAIRTDChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,rtdType::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64,r0::float64)
    ccall((:DAQmxCreateAIRTDChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,int32,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,rtdType,resistanceConfig,currentExcitSource,currentExcitVal,r0)
end

function DAQmxCreateAIThrmstrChanIex(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64,a::float64,b::float64,c::float64)
    ccall((:DAQmxCreateAIThrmstrChanIex,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal,a,b,c)
end

function DAQmxCreateAIThrmstrChanVex(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,a::float64,b::float64,c::float64,r1::float64)
    ccall((:DAQmxCreateAIThrmstrChanVex,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,float64,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,voltageExcitSource,voltageExcitVal,a,b,c,r1)
end

function DAQmxCreateAIFreqVoltageChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,thresholdLevel::float64,hysteresis::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIFreqVoltageChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,float64,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,thresholdLevel,hysteresis,customScaleName)
end

function DAQmxCreateAIResistanceChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIResistanceChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIStrainGageChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,strainConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,gageFactor::float64,initialBridgeVoltage::float64,nominalGageResistance::float64,poissonRatio::float64,leadWireResistance::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIStrainGageChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,float64,float64,float64,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,strainConfig,voltageExcitSource,voltageExcitVal,gageFactor,initialBridgeVoltage,nominalGageResistance,poissonRatio,leadWireResistance,customScaleName)
end

function DAQmxCreateAIRosetteStrainGageChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,rosetteType::int32,gageOrientation::float64,rosetteMeasTypes::Ptr{int32},numRosetteMeasTypes::uInt32,strainConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,gageFactor::float64,nominalGageResistance::float64,poissonRatio::float64,leadWireResistance::float64)
    ccall((:DAQmxCreateAIRosetteStrainGageChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,float64,Ptr{int32},uInt32,int32,int32,float64,float64,float64,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,rosetteType,gageOrientation,rosetteMeasTypes,numRosetteMeasTypes,strainConfig,voltageExcitSource,voltageExcitVal,gageFactor,nominalGageResistance,poissonRatio,leadWireResistance)
end

function DAQmxCreateAIForceBridgeTwoPointLinChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,firstElectricalVal::float64,secondElectricalVal::float64,electricalUnits::int32,firstPhysicalVal::float64,secondPhysicalVal::float64,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIForceBridgeTwoPointLinChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,float64,float64,int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,firstElectricalVal,secondElectricalVal,electricalUnits,firstPhysicalVal,secondPhysicalVal,physicalUnits,customScaleName)
end

function DAQmxCreateAIForceBridgeTableChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,electricalVals::Ptr{float64},numElectricalVals::uInt32,electricalUnits::int32,physicalVals::Ptr{float64},numPhysicalVals::uInt32,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIForceBridgeTableChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,int32,Ptr{float64},uInt32,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,electricalVals,numElectricalVals,electricalUnits,physicalVals,numPhysicalVals,physicalUnits,customScaleName)
end

function DAQmxCreateAIForceBridgePolynomialChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,forwardCoeffs::Ptr{float64},numForwardCoeffs::uInt32,reverseCoeffs::Ptr{float64},numReverseCoeffs::uInt32,electricalUnits::int32,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIForceBridgePolynomialChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,Ptr{float64},uInt32,int32,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,forwardCoeffs,numForwardCoeffs,reverseCoeffs,numReverseCoeffs,electricalUnits,physicalUnits,customScaleName)
end

function DAQmxCreateAIPressureBridgeTwoPointLinChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,firstElectricalVal::float64,secondElectricalVal::float64,electricalUnits::int32,firstPhysicalVal::float64,secondPhysicalVal::float64,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIPressureBridgeTwoPointLinChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,float64,float64,int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,firstElectricalVal,secondElectricalVal,electricalUnits,firstPhysicalVal,secondPhysicalVal,physicalUnits,customScaleName)
end

function DAQmxCreateAIPressureBridgeTableChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,electricalVals::Ptr{float64},numElectricalVals::uInt32,electricalUnits::int32,physicalVals::Ptr{float64},numPhysicalVals::uInt32,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIPressureBridgeTableChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,int32,Ptr{float64},uInt32,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,electricalVals,numElectricalVals,electricalUnits,physicalVals,numPhysicalVals,physicalUnits,customScaleName)
end

function DAQmxCreateAIPressureBridgePolynomialChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,forwardCoeffs::Ptr{float64},numForwardCoeffs::uInt32,reverseCoeffs::Ptr{float64},numReverseCoeffs::uInt32,electricalUnits::int32,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIPressureBridgePolynomialChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,Ptr{float64},uInt32,int32,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,forwardCoeffs,numForwardCoeffs,reverseCoeffs,numReverseCoeffs,electricalUnits,physicalUnits,customScaleName)
end

function DAQmxCreateAITorqueBridgeTwoPointLinChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,firstElectricalVal::float64,secondElectricalVal::float64,electricalUnits::int32,firstPhysicalVal::float64,secondPhysicalVal::float64,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAITorqueBridgeTwoPointLinChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,float64,float64,int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,firstElectricalVal,secondElectricalVal,electricalUnits,firstPhysicalVal,secondPhysicalVal,physicalUnits,customScaleName)
end

function DAQmxCreateAITorqueBridgeTableChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,electricalVals::Ptr{float64},numElectricalVals::uInt32,electricalUnits::int32,physicalVals::Ptr{float64},numPhysicalVals::uInt32,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAITorqueBridgeTableChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,int32,Ptr{float64},uInt32,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,electricalVals,numElectricalVals,electricalUnits,physicalVals,numPhysicalVals,physicalUnits,customScaleName)
end

function DAQmxCreateAITorqueBridgePolynomialChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,forwardCoeffs::Ptr{float64},numForwardCoeffs::uInt32,reverseCoeffs::Ptr{float64},numReverseCoeffs::uInt32,electricalUnits::int32,physicalUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAITorqueBridgePolynomialChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,Ptr{float64},uInt32,Ptr{float64},uInt32,int32,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,forwardCoeffs,numForwardCoeffs,reverseCoeffs,numReverseCoeffs,electricalUnits,physicalUnits,customScaleName)
end

function DAQmxCreateAIBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,nominalBridgeResistance::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIBridgeChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,nominalBridgeResistance,customScaleName)
end

function DAQmxCreateAIVoltageChanWithExcit(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,bridgeConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,useExcitForScaling::bool32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIVoltageChanWithExcit,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,int32,int32,float64,bool32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,bridgeConfig,voltageExcitSource,voltageExcitVal,useExcitForScaling,customScaleName)
end

function DAQmxCreateAITempBuiltInSensorChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},units::int32)
    ccall((:DAQmxCreateAITempBuiltInSensorChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32),taskHandle,physicalChannel,nameToAssignToChannel,units)
end

function DAQmxCreateAIAccelChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIAccelChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,sensitivity,sensitivityUnits,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIVelocityIEPEChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIVelocityIEPEChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,sensitivity,sensitivityUnits,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIForceIEPEChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIForceIEPEChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,sensitivity,sensitivityUnits,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIMicrophoneChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,units::int32,micSensitivity::float64,maxSndPressLevel::float64,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIMicrophoneChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,int32,float64,float64,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,units,micSensitivity,maxSndPressLevel,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateAIPosLVDTChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,voltageExcitSource::int32,voltageExcitVal::float64,voltageExcitFreq::float64,ACExcitWireMode::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIPosLVDTChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,float64,int32,int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,sensitivity,sensitivityUnits,voltageExcitSource,voltageExcitVal,voltageExcitFreq,ACExcitWireMode,customScaleName)
end

function DAQmxCreateAIPosRVDTChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,voltageExcitSource::int32,voltageExcitVal::float64,voltageExcitFreq::float64,ACExcitWireMode::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIPosRVDTChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,float64,int32,int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,sensitivity,sensitivityUnits,voltageExcitSource,voltageExcitVal,voltageExcitFreq,ACExcitWireMode,customScaleName)
end

function DAQmxCreateAIPosEddyCurrProxProbeChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,sensitivity::float64,sensitivityUnits::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAIPosEddyCurrProxProbeChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,sensitivity,sensitivityUnits,customScaleName)
end

function DAQmxCreateAIDeviceTempChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},units::int32)
    ccall((:DAQmxCreateAIDeviceTempChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32),taskHandle,physicalChannel,nameToAssignToChannel,units)
end

function DAQmxCreateTEDSAIVoltageChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIVoltageChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateTEDSAICurrentChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,shuntResistorLoc::int32,extShuntResistorVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAICurrentChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,shuntResistorLoc,extShuntResistorVal,customScaleName)
end

function DAQmxCreateTEDSAIThrmcplChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,cjcSource::int32,cjcVal::float64,cjcChannel::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIThrmcplChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,cjcSource,cjcVal,cjcChannel)
end

function DAQmxCreateTEDSAIRTDChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64)
    ccall((:DAQmxCreateTEDSAIRTDChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal)
end

function DAQmxCreateTEDSAIThrmstrChanIex(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64)
    ccall((:DAQmxCreateTEDSAIThrmstrChanIex,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal)
end

function DAQmxCreateTEDSAIThrmstrChanVex(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,voltageExcitSource::int32,voltageExcitVal::float64,r1::float64)
    ccall((:DAQmxCreateTEDSAIThrmstrChanVex,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,voltageExcitSource,voltageExcitVal,r1)
end

function DAQmxCreateTEDSAIResistanceChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,resistanceConfig::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIResistanceChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,resistanceConfig,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIStrainGageChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,initialBridgeVoltage::float64,leadWireResistance::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIStrainGageChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,float64,float64,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,initialBridgeVoltage,leadWireResistance,customScaleName)
end

function DAQmxCreateTEDSAIForceBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIForceBridgeChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIPressureBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIPressureBridgeChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAITorqueBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAITorqueBridgeChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIBridgeChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIBridgeChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIVoltageChanWithExcit(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIVoltageChanWithExcit,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIAccelChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIAccelChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIForceIEPEChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,minVal::float64,maxVal::float64,units::int32,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIForceIEPEChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,int32,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,minVal,maxVal,units,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIMicrophoneChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},terminalConfig::int32,units::int32,maxSndPressLevel::float64,currentExcitSource::int32,currentExcitVal::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIMicrophoneChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,int32,float64,int32,float64,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,terminalConfig,units,maxSndPressLevel,currentExcitSource,currentExcitVal,customScaleName)
end

function DAQmxCreateTEDSAIPosLVDTChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,voltageExcitFreq::float64,ACExcitWireMode::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIPosLVDTChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,voltageExcitFreq,ACExcitWireMode,customScaleName)
end

function DAQmxCreateTEDSAIPosRVDTChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,voltageExcitSource::int32,voltageExcitVal::float64,voltageExcitFreq::float64,ACExcitWireMode::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateTEDSAIPosRVDTChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,voltageExcitSource,voltageExcitVal,voltageExcitFreq,ACExcitWireMode,customScaleName)
end

function DAQmxCreateAOVoltageChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAOVoltageChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateAOCurrentChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateAOCurrentChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,Ptr{UInt8}),taskHandle,physicalChannel,nameToAssignToChannel,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateAOFuncGenChan(taskHandle::TaskHandle,physicalChannel::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},_type::int32,freq::float64,amplitude::float64,offset::float64)
    ccall((:DAQmxCreateAOFuncGenChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,float64,float64,float64),taskHandle,physicalChannel,nameToAssignToChannel,_type,freq,amplitude,offset)
end

function DAQmxCreateDIChan(taskHandle::TaskHandle,lines::Ptr{UInt8},nameToAssignToLines::Ptr{UInt8},lineGrouping::int32)
    ccall((:DAQmxCreateDIChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32),taskHandle,lines,nameToAssignToLines,lineGrouping)
end

function DAQmxCreateDOChan(taskHandle::TaskHandle,lines::Ptr{UInt8},nameToAssignToLines::Ptr{UInt8},lineGrouping::int32)
    ccall((:DAQmxCreateDOChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32),taskHandle,lines,nameToAssignToLines,lineGrouping)
end

function DAQmxCreateCIFreqChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,edge::int32,measMethod::int32,measTime::float64,divisor::uInt32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateCIFreqChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,uInt32,Ptr{UInt8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,edge,measMethod,measTime,divisor,customScaleName)
end

function DAQmxCreateCIPeriodChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,edge::int32,measMethod::int32,measTime::float64,divisor::uInt32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateCIPeriodChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,float64,uInt32,Ptr{UInt8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,edge,measMethod,measTime,divisor,customScaleName)
end

function DAQmxCreateCICountEdgesChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},edge::int32,initialCount::uInt32,countDirection::int32)
    ccall((:DAQmxCreateCICountEdgesChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,uInt32,int32),taskHandle,counter,nameToAssignToChannel,edge,initialCount,countDirection)
end

function DAQmxCreateCIPulseWidthChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,startingEdge::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateCIPulseWidthChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,Ptr{UInt8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,startingEdge,customScaleName)
end

function DAQmxCreateCISemiPeriodChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateCISemiPeriodChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,Ptr{UInt8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,customScaleName)
end

function DAQmxCreateCITwoEdgeSepChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32,firstEdge::int32,secondEdge::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateCITwoEdgeSepChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32,int32,int32,Ptr{UInt8}),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units,firstEdge,secondEdge,customScaleName)
end

function DAQmxCreateCIPulseChanFreq(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32)
    ccall((:DAQmxCreateCIPulseChanFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units)
end

function DAQmxCreateCIPulseChanTime(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},minVal::float64,maxVal::float64,units::int32)
    ccall((:DAQmxCreateCIPulseChanTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},float64,float64,int32),taskHandle,counter,nameToAssignToChannel,minVal,maxVal,units)
end

function DAQmxCreateCIPulseChanTicks(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},sourceTerminal::Ptr{UInt8},minVal::float64,maxVal::float64)
    ccall((:DAQmxCreateCIPulseChanTicks,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},float64,float64),taskHandle,counter,nameToAssignToChannel,sourceTerminal,minVal,maxVal)
end

function DAQmxCreateCILinEncoderChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},decodingType::int32,ZidxEnable::bool32,ZidxVal::float64,ZidxPhase::int32,units::int32,distPerPulse::float64,initialPos::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateCILinEncoderChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,bool32,float64,int32,int32,float64,float64,Ptr{UInt8}),taskHandle,counter,nameToAssignToChannel,decodingType,ZidxEnable,ZidxVal,ZidxPhase,units,distPerPulse,initialPos,customScaleName)
end

function DAQmxCreateCIAngEncoderChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},decodingType::int32,ZidxEnable::bool32,ZidxVal::float64,ZidxPhase::int32,units::int32,pulsesPerRev::uInt32,initialAngle::float64,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateCIAngEncoderChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,bool32,float64,int32,int32,uInt32,float64,Ptr{UInt8}),taskHandle,counter,nameToAssignToChannel,decodingType,ZidxEnable,ZidxVal,ZidxPhase,units,pulsesPerRev,initialAngle,customScaleName)
end

function DAQmxCreateCIGPSTimestampChan(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},units::int32,syncMethod::int32,customScaleName::Ptr{UInt8})
    ccall((:DAQmxCreateCIGPSTimestampChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,int32,Ptr{UInt8}),taskHandle,counter,nameToAssignToChannel,units,syncMethod,customScaleName)
end

function DAQmxCreateCOPulseChanFreq(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},units::int32,idleState::int32,initialDelay::float64,freq::float64,dutyCycle::float64)
    ccall((:DAQmxCreateCOPulseChanFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,int32,float64,float64,float64),taskHandle,counter,nameToAssignToChannel,units,idleState,initialDelay,freq,dutyCycle)
end

function DAQmxCreateCOPulseChanTime(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},units::int32,idleState::int32,initialDelay::float64,lowTime::float64,highTime::float64)
    ccall((:DAQmxCreateCOPulseChanTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,int32,float64,float64,float64),taskHandle,counter,nameToAssignToChannel,units,idleState,initialDelay,lowTime,highTime)
end

function DAQmxCreateCOPulseChanTicks(taskHandle::TaskHandle,counter::Ptr{UInt8},nameToAssignToChannel::Ptr{UInt8},sourceTerminal::Ptr{UInt8},idleState::int32,initialDelay::int32,lowTicks::int32,highTicks::int32)
    ccall((:DAQmxCreateCOPulseChanTicks,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},int32,int32,int32,int32),taskHandle,counter,nameToAssignToChannel,sourceTerminal,idleState,initialDelay,lowTicks,highTicks)
end

function DAQmxGetAIChanCalCalDate(taskHandle::TaskHandle,channelName::Ptr{UInt8},year::Ptr{uInt32},month::Ptr{uInt32},day::Ptr{uInt32},hour::Ptr{uInt32},minute::Ptr{uInt32})
    ccall((:DAQmxGetAIChanCalCalDate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32}),taskHandle,channelName,year,month,day,hour,minute)
end

function DAQmxSetAIChanCalCalDate(taskHandle::TaskHandle,channelName::Ptr{UInt8},year::uInt32,month::uInt32,day::uInt32,hour::uInt32,minute::uInt32)
    ccall((:DAQmxSetAIChanCalCalDate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32,uInt32,uInt32,uInt32,uInt32),taskHandle,channelName,year,month,day,hour,minute)
end

function DAQmxGetAIChanCalExpDate(taskHandle::TaskHandle,channelName::Ptr{UInt8},year::Ptr{uInt32},month::Ptr{uInt32},day::Ptr{uInt32},hour::Ptr{uInt32},minute::Ptr{uInt32})
    ccall((:DAQmxGetAIChanCalExpDate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32}),taskHandle,channelName,year,month,day,hour,minute)
end

function DAQmxSetAIChanCalExpDate(taskHandle::TaskHandle,channelName::Ptr{UInt8},year::uInt32,month::uInt32,day::uInt32,hour::uInt32,minute::uInt32)
    ccall((:DAQmxSetAIChanCalExpDate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32,uInt32,uInt32,uInt32,uInt32),taskHandle,channelName,year,month,day,hour,minute)
end

function DAQmxResetChanAttribute(taskHandle::TaskHandle,channel::Ptr{UInt8},attribute::int32)
    ccall((:DAQmxResetChanAttribute,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,attribute)
end

function DAQmxCfgSampClkTiming(taskHandle::TaskHandle,source::Ptr{UInt8},rate::float64,activeEdge::int32,sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgSampClkTiming,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64,int32,int32,uInt64),taskHandle,source,rate,activeEdge,sampleMode,sampsPerChan)
end

function DAQmxCfgHandshakingTiming(taskHandle::TaskHandle,sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgHandshakingTiming,NIDAQmx),int32,(TaskHandle,int32,uInt64),taskHandle,sampleMode,sampsPerChan)
end

function DAQmxCfgBurstHandshakingTimingImportClock(taskHandle::TaskHandle,sampleMode::int32,sampsPerChan::uInt64,sampleClkRate::float64,sampleClkSrc::Ptr{UInt8},sampleClkActiveEdge::int32,pauseWhen::int32,readyEventActiveLevel::int32)
    ccall((:DAQmxCfgBurstHandshakingTimingImportClock,NIDAQmx),int32,(TaskHandle,int32,uInt64,float64,Ptr{UInt8},int32,int32,int32),taskHandle,sampleMode,sampsPerChan,sampleClkRate,sampleClkSrc,sampleClkActiveEdge,pauseWhen,readyEventActiveLevel)
end

function DAQmxCfgBurstHandshakingTimingExportClock(taskHandle::TaskHandle,sampleMode::int32,sampsPerChan::uInt64,sampleClkRate::float64,sampleClkOutpTerm::Ptr{UInt8},sampleClkPulsePolarity::int32,pauseWhen::int32,readyEventActiveLevel::int32)
    ccall((:DAQmxCfgBurstHandshakingTimingExportClock,NIDAQmx),int32,(TaskHandle,int32,uInt64,float64,Ptr{UInt8},int32,int32,int32),taskHandle,sampleMode,sampsPerChan,sampleClkRate,sampleClkOutpTerm,sampleClkPulsePolarity,pauseWhen,readyEventActiveLevel)
end

function DAQmxCfgChangeDetectionTiming(taskHandle::TaskHandle,risingEdgeChan::Ptr{UInt8},fallingEdgeChan::Ptr{UInt8},sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgChangeDetectionTiming,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,uInt64),taskHandle,risingEdgeChan,fallingEdgeChan,sampleMode,sampsPerChan)
end

function DAQmxCfgImplicitTiming(taskHandle::TaskHandle,sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgImplicitTiming,NIDAQmx),int32,(TaskHandle,int32,uInt64),taskHandle,sampleMode,sampsPerChan)
end

function DAQmxCfgPipelinedSampClkTiming(taskHandle::TaskHandle,source::Ptr{UInt8},rate::float64,activeEdge::int32,sampleMode::int32,sampsPerChan::uInt64)
    ccall((:DAQmxCfgPipelinedSampClkTiming,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64,int32,int32,uInt64),taskHandle,source,rate,activeEdge,sampleMode,sampsPerChan)
end

function DAQmxResetTimingAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetTimingAttribute,NIDAQmx),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxResetTimingAttributeEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},attribute::int32)
    ccall((:DAQmxResetTimingAttributeEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,deviceNames,attribute)
end

function DAQmxDisableStartTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableStartTrig,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxCfgDigEdgeStartTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerEdge::int32)
    ccall((:DAQmxCfgDigEdgeStartTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,triggerSource,triggerEdge)
end

function DAQmxCfgAnlgEdgeStartTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerSlope::int32,triggerLevel::float64)
    ccall((:DAQmxCfgAnlgEdgeStartTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32,float64),taskHandle,triggerSource,triggerSlope,triggerLevel)
end

function DAQmxCfgAnlgWindowStartTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerWhen::int32,windowTop::float64,windowBottom::float64)
    ccall((:DAQmxCfgAnlgWindowStartTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32,float64,float64),taskHandle,triggerSource,triggerWhen,windowTop,windowBottom)
end

function DAQmxCfgDigPatternStartTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerPattern::Ptr{UInt8},triggerWhen::int32)
    ccall((:DAQmxCfgDigPatternStartTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32),taskHandle,triggerSource,triggerPattern,triggerWhen)
end

function DAQmxDisableRefTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableRefTrig,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxCfgDigEdgeRefTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerEdge::int32,pretriggerSamples::uInt32)
    ccall((:DAQmxCfgDigEdgeRefTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32,uInt32),taskHandle,triggerSource,triggerEdge,pretriggerSamples)
end

function DAQmxCfgAnlgEdgeRefTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerSlope::int32,triggerLevel::float64,pretriggerSamples::uInt32)
    ccall((:DAQmxCfgAnlgEdgeRefTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32,float64,uInt32),taskHandle,triggerSource,triggerSlope,triggerLevel,pretriggerSamples)
end

function DAQmxCfgAnlgWindowRefTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerWhen::int32,windowTop::float64,windowBottom::float64,pretriggerSamples::uInt32)
    ccall((:DAQmxCfgAnlgWindowRefTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32,float64,float64,uInt32),taskHandle,triggerSource,triggerWhen,windowTop,windowBottom,pretriggerSamples)
end

function DAQmxCfgDigPatternRefTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerPattern::Ptr{UInt8},triggerWhen::int32,pretriggerSamples::uInt32)
    ccall((:DAQmxCfgDigPatternRefTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},int32,uInt32),taskHandle,triggerSource,triggerPattern,triggerWhen,pretriggerSamples)
end

function DAQmxDisableAdvTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableAdvTrig,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxCfgDigEdgeAdvTrig(taskHandle::TaskHandle,triggerSource::Ptr{UInt8},triggerEdge::int32)
    ccall((:DAQmxCfgDigEdgeAdvTrig,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,triggerSource,triggerEdge)
end

function DAQmxResetTrigAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetTrigAttribute,NIDAQmx),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxSendSoftwareTrigger(taskHandle::TaskHandle,triggerID::int32)
    ccall((:DAQmxSendSoftwareTrigger,NIDAQmx),int32,(TaskHandle,int32),taskHandle,triggerID)
end

function DAQmxReadAnalogF64(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{float64},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadAnalogF64,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{float64},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadAnalogScalarF64(taskHandle::TaskHandle,timeout::float64,value::Ptr{float64},reserved::Ptr{bool32})
    ccall((:DAQmxReadAnalogScalarF64,NIDAQmx),int32,(TaskHandle,float64,Ptr{float64},Ptr{bool32}),taskHandle,timeout,value,reserved)
end

function DAQmxReadBinaryI16(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{int16},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadBinaryI16,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{int16},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadBinaryU16(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt16},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadBinaryU16,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt16},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadBinaryI32(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{int32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadBinaryI32,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{int32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadBinaryU32(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadBinaryU32,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadDigitalU8(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt8},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalU8,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt8},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadDigitalU16(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt16},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalU16,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt16},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadDigitalU32(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalU32,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadDigitalScalarU32(taskHandle::TaskHandle,timeout::float64,value::Ptr{uInt32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalScalarU32,NIDAQmx),int32,(TaskHandle,float64,Ptr{uInt32},Ptr{bool32}),taskHandle,timeout,value,reserved)
end

function DAQmxReadDigitalLines(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,fillMode::bool32,readArray::Ptr{uInt8},arraySizeInBytes::uInt32,sampsPerChanRead::Ptr{int32},numBytesPerSamp::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadDigitalLines,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt8},uInt32,Ptr{int32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,fillMode,readArray,arraySizeInBytes,sampsPerChanRead,numBytesPerSamp,reserved)
end

function DAQmxReadCounterF64(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,readArray::Ptr{float64},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCounterF64,NIDAQmx),int32,(TaskHandle,int32,float64,Ptr{float64},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCounterU32(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,readArray::Ptr{uInt32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCounterU32,NIDAQmx),int32,(TaskHandle,int32,float64,Ptr{uInt32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,readArray,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCounterScalarF64(taskHandle::TaskHandle,timeout::float64,value::Ptr{float64},reserved::Ptr{bool32})
    ccall((:DAQmxReadCounterScalarF64,NIDAQmx),int32,(TaskHandle,float64,Ptr{float64},Ptr{bool32}),taskHandle,timeout,value,reserved)
end

function DAQmxReadCounterScalarU32(taskHandle::TaskHandle,timeout::float64,value::Ptr{uInt32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCounterScalarU32,NIDAQmx),int32,(TaskHandle,float64,Ptr{uInt32},Ptr{bool32}),taskHandle,timeout,value,reserved)
end

function DAQmxReadCtrFreq(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,interleaved::bool32,readArrayFrequency::Ptr{float64},readArrayDutyCycle::Ptr{float64},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrFreq,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{float64},Ptr{float64},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,interleaved,readArrayFrequency,readArrayDutyCycle,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCtrTime(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,interleaved::bool32,readArrayHighTime::Ptr{float64},readArrayLowTime::Ptr{float64},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrTime,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{float64},Ptr{float64},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,interleaved,readArrayHighTime,readArrayLowTime,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCtrTicks(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,interleaved::bool32,readArrayHighTicks::Ptr{uInt32},readArrayLowTicks::Ptr{uInt32},arraySizeInSamps::uInt32,sampsPerChanRead::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrTicks,NIDAQmx),int32,(TaskHandle,int32,float64,bool32,Ptr{uInt32},Ptr{uInt32},uInt32,Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,interleaved,readArrayHighTicks,readArrayLowTicks,arraySizeInSamps,sampsPerChanRead,reserved)
end

function DAQmxReadCtrFreqScalar(taskHandle::TaskHandle,timeout::float64,frequency::Ptr{float64},dutyCycle::Ptr{float64},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrFreqScalar,NIDAQmx),int32,(TaskHandle,float64,Ptr{float64},Ptr{float64},Ptr{bool32}),taskHandle,timeout,frequency,dutyCycle,reserved)
end

function DAQmxReadCtrTimeScalar(taskHandle::TaskHandle,timeout::float64,highTime::Ptr{float64},lowTime::Ptr{float64},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrTimeScalar,NIDAQmx),int32,(TaskHandle,float64,Ptr{float64},Ptr{float64},Ptr{bool32}),taskHandle,timeout,highTime,lowTime,reserved)
end

function DAQmxReadCtrTicksScalar(taskHandle::TaskHandle,timeout::float64,highTicks::Ptr{uInt32},lowTicks::Ptr{uInt32},reserved::Ptr{bool32})
    ccall((:DAQmxReadCtrTicksScalar,NIDAQmx),int32,(TaskHandle,float64,Ptr{uInt32},Ptr{uInt32},Ptr{bool32}),taskHandle,timeout,highTicks,lowTicks,reserved)
end

function DAQmxReadRaw(taskHandle::TaskHandle,numSampsPerChan::int32,timeout::float64,readArray::Ptr{Void},arraySizeInBytes::uInt32,sampsRead::Ptr{int32},numBytesPerSamp::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxReadRaw,NIDAQmx),int32,(TaskHandle,int32,float64,Ptr{Void},uInt32,Ptr{int32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,timeout,readArray,arraySizeInBytes,sampsRead,numBytesPerSamp,reserved)
end

function DAQmxGetNthTaskReadChannel(taskHandle::TaskHandle,index::uInt32,buffer::Ptr{UInt8},bufferSize::int32)
    ccall((:DAQmxGetNthTaskReadChannel,NIDAQmx),int32,(TaskHandle,uInt32,Ptr{UInt8},int32),taskHandle,index,buffer,bufferSize)
end

function DAQmxResetReadAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetReadAttribute,NIDAQmx),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxConfigureLogging(taskHandle::TaskHandle,filePath::Ptr{UInt8},loggingMode::int32,groupName::Ptr{UInt8},operation::int32)
    ccall((:DAQmxConfigureLogging,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32,Ptr{UInt8},int32),taskHandle,filePath,loggingMode,groupName,operation)
end

function DAQmxStartNewFile(taskHandle::TaskHandle,filePath::Ptr{UInt8})
    ccall((:DAQmxStartNewFile,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,filePath)
end

function DAQmxWriteAnalogF64(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{float64},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteAnalogF64,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{float64},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteAnalogScalarF64(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,value::float64,reserved::Ptr{bool32})
    ccall((:DAQmxWriteAnalogScalarF64,NIDAQmx),int32,(TaskHandle,bool32,float64,float64,Ptr{bool32}),taskHandle,autoStart,timeout,value,reserved)
end

function DAQmxWriteBinaryI16(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{int16},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteBinaryI16,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{int16},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteBinaryU16(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt16},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteBinaryU16,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt16},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteBinaryI32(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{int32},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteBinaryI32,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{int32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteBinaryU32(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt32},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteBinaryU32,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteDigitalU8(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt8},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalU8,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt8},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteDigitalU16(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt16},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalU16,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt16},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteDigitalU32(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt32},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalU32,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteDigitalScalarU32(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,value::uInt32,reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalScalarU32,NIDAQmx),int32,(TaskHandle,bool32,float64,uInt32,Ptr{bool32}),taskHandle,autoStart,timeout,value,reserved)
end

function DAQmxWriteDigitalLines(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,writeArray::Ptr{uInt8},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteDigitalLines,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt8},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxWriteCtrFreq(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,frequency::Ptr{float64},dutyCycle::Ptr{float64},numSampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrFreq,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{float64},Ptr{float64},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,frequency,dutyCycle,numSampsPerChanWritten,reserved)
end

function DAQmxWriteCtrFreqScalar(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,frequency::float64,dutyCycle::float64,reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrFreqScalar,NIDAQmx),int32,(TaskHandle,bool32,float64,float64,float64,Ptr{bool32}),taskHandle,autoStart,timeout,frequency,dutyCycle,reserved)
end

function DAQmxWriteCtrTime(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,highTime::Ptr{float64},lowTime::Ptr{float64},numSampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrTime,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{float64},Ptr{float64},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,highTime,lowTime,numSampsPerChanWritten,reserved)
end

function DAQmxWriteCtrTimeScalar(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,highTime::float64,lowTime::float64,reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrTimeScalar,NIDAQmx),int32,(TaskHandle,bool32,float64,float64,float64,Ptr{bool32}),taskHandle,autoStart,timeout,highTime,lowTime,reserved)
end

function DAQmxWriteCtrTicks(taskHandle::TaskHandle,numSampsPerChan::int32,autoStart::bool32,timeout::float64,dataLayout::bool32,highTicks::Ptr{uInt32},lowTicks::Ptr{uInt32},numSampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrTicks,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,bool32,Ptr{uInt32},Ptr{uInt32},Ptr{int32},Ptr{bool32}),taskHandle,numSampsPerChan,autoStart,timeout,dataLayout,highTicks,lowTicks,numSampsPerChanWritten,reserved)
end

function DAQmxWriteCtrTicksScalar(taskHandle::TaskHandle,autoStart::bool32,timeout::float64,highTicks::uInt32,lowTicks::uInt32,reserved::Ptr{bool32})
    ccall((:DAQmxWriteCtrTicksScalar,NIDAQmx),int32,(TaskHandle,bool32,float64,uInt32,uInt32,Ptr{bool32}),taskHandle,autoStart,timeout,highTicks,lowTicks,reserved)
end

function DAQmxWriteRaw(taskHandle::TaskHandle,numSamps::int32,autoStart::bool32,timeout::float64,writeArray::Ptr{Void},sampsPerChanWritten::Ptr{int32},reserved::Ptr{bool32})
    ccall((:DAQmxWriteRaw,NIDAQmx),int32,(TaskHandle,int32,bool32,float64,Ptr{Void},Ptr{int32},Ptr{bool32}),taskHandle,numSamps,autoStart,timeout,writeArray,sampsPerChanWritten,reserved)
end

function DAQmxResetWriteAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetWriteAttribute,NIDAQmx),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxExportSignal(taskHandle::TaskHandle,signalID::int32,outputTerminal::Ptr{UInt8})
    ccall((:DAQmxExportSignal,NIDAQmx),int32,(TaskHandle,int32,Ptr{UInt8}),taskHandle,signalID,outputTerminal)
end

function DAQmxResetExportedSignalAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetExportedSignalAttribute,NIDAQmx),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxCreateLinScale(name::Ptr{UInt8},slope::float64,yIntercept::float64,preScaledUnits::int32,scaledUnits::Ptr{UInt8})
    ccall((:DAQmxCreateLinScale,NIDAQmx),int32,(Ptr{UInt8},float64,float64,int32,Ptr{UInt8}),name,slope,yIntercept,preScaledUnits,scaledUnits)
end

function DAQmxCreateMapScale(name::Ptr{UInt8},prescaledMin::float64,prescaledMax::float64,scaledMin::float64,scaledMax::float64,preScaledUnits::int32,scaledUnits::Ptr{UInt8})
    ccall((:DAQmxCreateMapScale,NIDAQmx),int32,(Ptr{UInt8},float64,float64,float64,float64,int32,Ptr{UInt8}),name,prescaledMin,prescaledMax,scaledMin,scaledMax,preScaledUnits,scaledUnits)
end

function DAQmxCreatePolynomialScale(name::Ptr{UInt8},forwardCoeffs::Ptr{float64},numForwardCoeffsIn::uInt32,reverseCoeffs::Ptr{float64},numReverseCoeffsIn::uInt32,preScaledUnits::int32,scaledUnits::Ptr{UInt8})
    ccall((:DAQmxCreatePolynomialScale,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32,Ptr{float64},uInt32,int32,Ptr{UInt8}),name,forwardCoeffs,numForwardCoeffsIn,reverseCoeffs,numReverseCoeffsIn,preScaledUnits,scaledUnits)
end

function DAQmxCreateTableScale(name::Ptr{UInt8},prescaledVals::Ptr{float64},numPrescaledValsIn::uInt32,scaledVals::Ptr{float64},numScaledValsIn::uInt32,preScaledUnits::int32,scaledUnits::Ptr{UInt8})
    ccall((:DAQmxCreateTableScale,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32,Ptr{float64},uInt32,int32,Ptr{UInt8}),name,prescaledVals,numPrescaledValsIn,scaledVals,numScaledValsIn,preScaledUnits,scaledUnits)
end

function DAQmxCalculateReversePolyCoeff(forwardCoeffs::Ptr{float64},numForwardCoeffsIn::uInt32,minValX::float64,maxValX::float64,numPointsToCompute::int32,reversePolyOrder::int32,reverseCoeffs::Ptr{float64})
    ccall((:DAQmxCalculateReversePolyCoeff,NIDAQmx),int32,(Ptr{float64},uInt32,float64,float64,int32,int32,Ptr{float64}),forwardCoeffs,numForwardCoeffsIn,minValX,maxValX,numPointsToCompute,reversePolyOrder,reverseCoeffs)
end

function DAQmxCfgInputBuffer(taskHandle::TaskHandle,numSampsPerChan::uInt32)
    ccall((:DAQmxCfgInputBuffer,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,numSampsPerChan)
end

function DAQmxCfgOutputBuffer(taskHandle::TaskHandle,numSampsPerChan::uInt32)
    ccall((:DAQmxCfgOutputBuffer,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,numSampsPerChan)
end

function DAQmxGetBufferAttribute(taskHandle::TaskHandle,attribute::int32,value::Ptr{Void})
    ccall((:DAQmxGetBufferAttribute,NIDAQmx),int32,(TaskHandle,int32,Ptr{Void}),taskHandle,attribute,value)
end

function DAQmxResetBufferAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetBufferAttribute,NIDAQmx),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxSwitchCreateScanList(scanList::Ptr{UInt8},taskHandle::Ptr{TaskHandle})
    ccall((:DAQmxSwitchCreateScanList,NIDAQmx),int32,(Ptr{UInt8},Ptr{TaskHandle}),scanList,taskHandle)
end

function DAQmxSwitchConnect(switchChannel1::Ptr{UInt8},switchChannel2::Ptr{UInt8},waitForSettling::bool32)
    ccall((:DAQmxSwitchConnect,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},bool32),switchChannel1,switchChannel2,waitForSettling)
end

function DAQmxSwitchConnectMulti(connectionList::Ptr{UInt8},waitForSettling::bool32)
    ccall((:DAQmxSwitchConnectMulti,NIDAQmx),int32,(Ptr{UInt8},bool32),connectionList,waitForSettling)
end

function DAQmxSwitchDisconnect(switchChannel1::Ptr{UInt8},switchChannel2::Ptr{UInt8},waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnect,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},bool32),switchChannel1,switchChannel2,waitForSettling)
end

function DAQmxSwitchDisconnectMulti(connectionList::Ptr{UInt8},waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnectMulti,NIDAQmx),int32,(Ptr{UInt8},bool32),connectionList,waitForSettling)
end

function DAQmxSwitchDisconnectAll(deviceName::Ptr{UInt8},waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnectAll,NIDAQmx),int32,(Ptr{UInt8},bool32),deviceName,waitForSettling)
end

function DAQmxSwitchSetTopologyAndReset(deviceName::Ptr{UInt8},newTopology::Ptr{UInt8})
    ccall((:DAQmxSwitchSetTopologyAndReset,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8}),deviceName,newTopology)
end

function DAQmxSwitchFindPath(switchChannel1::Ptr{UInt8},switchChannel2::Ptr{UInt8},path::Ptr{UInt8},pathBufferSize::uInt32,pathStatus::Ptr{int32})
    ccall((:DAQmxSwitchFindPath,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},uInt32,Ptr{int32}),switchChannel1,switchChannel2,path,pathBufferSize,pathStatus)
end

function DAQmxSwitchOpenRelays(relayList::Ptr{UInt8},waitForSettling::bool32)
    ccall((:DAQmxSwitchOpenRelays,NIDAQmx),int32,(Ptr{UInt8},bool32),relayList,waitForSettling)
end

function DAQmxSwitchCloseRelays(relayList::Ptr{UInt8},waitForSettling::bool32)
    ccall((:DAQmxSwitchCloseRelays,NIDAQmx),int32,(Ptr{UInt8},bool32),relayList,waitForSettling)
end

function DAQmxSwitchGetSingleRelayCount(relayName::Ptr{UInt8},count::Ptr{uInt32})
    ccall((:DAQmxSwitchGetSingleRelayCount,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),relayName,count)
end

function DAQmxSwitchGetMultiRelayCount(relayList::Ptr{UInt8},count::Ptr{uInt32},countArraySize::uInt32,numRelayCountsRead::Ptr{uInt32})
    ccall((:DAQmxSwitchGetMultiRelayCount,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32},uInt32,Ptr{uInt32}),relayList,count,countArraySize,numRelayCountsRead)
end

function DAQmxSwitchGetSingleRelayPos(relayName::Ptr{UInt8},relayPos::Ptr{uInt32})
    ccall((:DAQmxSwitchGetSingleRelayPos,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),relayName,relayPos)
end

function DAQmxSwitchGetMultiRelayPos(relayList::Ptr{UInt8},relayPos::Ptr{uInt32},relayPosArraySize::uInt32,numRelayPossRead::Ptr{uInt32})
    ccall((:DAQmxSwitchGetMultiRelayPos,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32},uInt32,Ptr{uInt32}),relayList,relayPos,relayPosArraySize,numRelayPossRead)
end

function DAQmxSwitchWaitForSettling(deviceName::Ptr{UInt8})
    ccall((:DAQmxSwitchWaitForSettling,NIDAQmx),int32,(Ptr{UInt8},),deviceName)
end

function DAQmxGetSwitchChanAttribute(switchChannelName::Ptr{UInt8},attribute::int32,value::Ptr{Void})
    ccall((:DAQmxGetSwitchChanAttribute,NIDAQmx),int32,(Ptr{UInt8},int32,Ptr{Void}),switchChannelName,attribute,value)
end

function DAQmxGetSwitchScanAttribute(taskHandle::TaskHandle,attribute::int32,value::Ptr{Void})
    ccall((:DAQmxGetSwitchScanAttribute,NIDAQmx),int32,(TaskHandle,int32,Ptr{Void}),taskHandle,attribute,value)
end

function DAQmxResetSwitchScanAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetSwitchScanAttribute,NIDAQmx),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxConnectTerms(sourceTerminal::Ptr{UInt8},destinationTerminal::Ptr{UInt8},signalModifiers::int32)
    ccall((:DAQmxConnectTerms,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},int32),sourceTerminal,destinationTerminal,signalModifiers)
end

function DAQmxDisconnectTerms(sourceTerminal::Ptr{UInt8},destinationTerminal::Ptr{UInt8})
    ccall((:DAQmxDisconnectTerms,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8}),sourceTerminal,destinationTerminal)
end

function DAQmxTristateOutputTerm(outputTerminal::Ptr{UInt8})
    ccall((:DAQmxTristateOutputTerm,NIDAQmx),int32,(Ptr{UInt8},),outputTerminal)
end

function DAQmxResetDevice(deviceName::Ptr{UInt8})
    ccall((:DAQmxResetDevice,NIDAQmx),int32,(Ptr{UInt8},),deviceName)
end

function DAQmxSelfTestDevice(deviceName::Ptr{UInt8})
    ccall((:DAQmxSelfTestDevice,NIDAQmx),int32,(Ptr{UInt8},),deviceName)
end

function DAQmxCreateWatchdogTimerTaskEx(deviceName::Ptr{UInt8},taskName::Ptr{UInt8},taskHandle::Ptr{TaskHandle},timeout::float64)
    ccall((:DAQmxCreateWatchdogTimerTaskEx,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},Ptr{TaskHandle},float64),deviceName,taskName,taskHandle,timeout)
end

function DAQmxControlWatchdogTask(taskHandle::TaskHandle,action::int32)
    ccall((:DAQmxControlWatchdogTask,NIDAQmx),int32,(TaskHandle,int32),taskHandle,action)
end

function DAQmxCfgWatchdogAOExpirStates(taskHandle::TaskHandle,channelNames::Ptr{UInt8},expirStateArray::Ptr{float64},outputTypeArray::Ptr{int32},arraySize::uInt32)
    ccall((:DAQmxCfgWatchdogAOExpirStates,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},Ptr{int32},uInt32),taskHandle,channelNames,expirStateArray,outputTypeArray,arraySize)
end

function DAQmxCfgWatchdogCOExpirStates(taskHandle::TaskHandle,channelNames::Ptr{UInt8},expirStateArray::Ptr{int32},arraySize::uInt32)
    ccall((:DAQmxCfgWatchdogCOExpirStates,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32},uInt32),taskHandle,channelNames,expirStateArray,arraySize)
end

function DAQmxCfgWatchdogDOExpirStates(taskHandle::TaskHandle,channelNames::Ptr{UInt8},expirStateArray::Ptr{int32},arraySize::uInt32)
    ccall((:DAQmxCfgWatchdogDOExpirStates,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32},uInt32),taskHandle,channelNames,expirStateArray,arraySize)
end

function DAQmxResetWatchdogAttribute(taskHandle::TaskHandle,lines::Ptr{UInt8},attribute::int32)
    ccall((:DAQmxResetWatchdogAttribute,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,lines,attribute)
end

function DAQmxSelfCal(deviceName::Ptr{UInt8})
    ccall((:DAQmxSelfCal,NIDAQmx),int32,(Ptr{UInt8},),deviceName)
end

function DAQmxPerformBridgeOffsetNullingCal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxPerformBridgeOffsetNullingCal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxPerformBridgeOffsetNullingCalEx(taskHandle::TaskHandle,channel::Ptr{UInt8},skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformBridgeOffsetNullingCalEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,skipUnsupportedChannels)
end

function DAQmxPerformThrmcplLeadOffsetNullingCal(taskHandle::TaskHandle,channel::Ptr{UInt8},skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformThrmcplLeadOffsetNullingCal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,skipUnsupportedChannels)
end

function DAQmxPerformStrainShuntCal(taskHandle::TaskHandle,channel::Ptr{UInt8},shuntResistorValue::float64,shuntResistorLocation::int32,skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformStrainShuntCal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64,int32,bool32),taskHandle,channel,shuntResistorValue,shuntResistorLocation,skipUnsupportedChannels)
end

function DAQmxPerformBridgeShuntCal(taskHandle::TaskHandle,channel::Ptr{UInt8},shuntResistorValue::float64,shuntResistorLocation::int32,bridgeResistance::float64,skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformBridgeShuntCal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64,int32,float64,bool32),taskHandle,channel,shuntResistorValue,shuntResistorLocation,bridgeResistance,skipUnsupportedChannels)
end

function DAQmxGetSelfCalLastDateAndTime(deviceName::Ptr{UInt8},year::Ptr{uInt32},month::Ptr{uInt32},day::Ptr{uInt32},hour::Ptr{uInt32},minute::Ptr{uInt32})
    ccall((:DAQmxGetSelfCalLastDateAndTime,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32}),deviceName,year,month,day,hour,minute)
end

function DAQmxGetExtCalLastDateAndTime(deviceName::Ptr{UInt8},year::Ptr{uInt32},month::Ptr{uInt32},day::Ptr{uInt32},hour::Ptr{uInt32},minute::Ptr{uInt32})
    ccall((:DAQmxGetExtCalLastDateAndTime,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32},Ptr{uInt32}),deviceName,year,month,day,hour,minute)
end

function DAQmxRestoreLastExtCalConst(deviceName::Ptr{UInt8})
    ccall((:DAQmxRestoreLastExtCalConst,NIDAQmx),int32,(Ptr{UInt8},),deviceName)
end

function DAQmxESeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxESeriesCalAdjust,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxMSeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxMSeriesCalAdjust,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxSSeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxSSeriesCalAdjust,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxSCBaseboardCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxSCBaseboardCalAdjust,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxAOSeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxAOSeriesCalAdjust,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxXSeriesCalAdjust(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxXSeriesCalAdjust,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxDeviceSupportsCal(deviceName::Ptr{UInt8},calSupported::Ptr{bool32})
    ccall((:DAQmxDeviceSupportsCal,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),deviceName,calSupported)
end

function DAQmxInitExtCal(deviceName::Ptr{UInt8},password::Ptr{UInt8},calHandle::Ptr{CalHandle})
    ccall((:DAQmxInitExtCal,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},Ptr{CalHandle}),deviceName,password,calHandle)
end

function DAQmxCloseExtCal(calHandle::CalHandle,action::int32)
    ccall((:DAQmxCloseExtCal,NIDAQmx),int32,(CalHandle,int32),calHandle,action)
end

function DAQmxChangeExtCalPassword(deviceName::Ptr{UInt8},password::Ptr{UInt8},newPassword::Ptr{UInt8})
    ccall((:DAQmxChangeExtCalPassword,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},Ptr{UInt8}),deviceName,password,newPassword)
end

function DAQmxDSASetCalTemp(calHandle::CalHandle,temperature::float64)
    ccall((:DAQmxDSASetCalTemp,NIDAQmx),int32,(CalHandle,float64),calHandle,temperature)
end

function DAQmxAdjustDSAAICal(calHandle::CalHandle,referenceVoltage::float64)
    ccall((:DAQmxAdjustDSAAICal,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceVoltage)
end

function DAQmxAdjustDSAAICalEx(calHandle::CalHandle,referenceVoltage::float64,inputsShorted::bool32)
    ccall((:DAQmxAdjustDSAAICalEx,NIDAQmx),int32,(CalHandle,float64,bool32),calHandle,referenceVoltage,inputsShorted)
end

function DAQmxAdjustDSAAICalWithGainAndCoupling(calHandle::CalHandle,coupling::int32,gain::float64,referenceVoltage::float64)
    ccall((:DAQmxAdjustDSAAICalWithGainAndCoupling,NIDAQmx),int32,(CalHandle,int32,float64,float64),calHandle,coupling,gain,referenceVoltage)
end

function DAQmxAdjustDSAAOCal(calHandle::CalHandle,channel::uInt32,requestedLowVoltage::float64,actualLowVoltage::float64,requestedHighVoltage::float64,actualHighVoltage::float64,gainSetting::float64)
    ccall((:DAQmxAdjustDSAAOCal,NIDAQmx),int32,(CalHandle,uInt32,float64,float64,float64,float64,float64),calHandle,channel,requestedLowVoltage,actualLowVoltage,requestedHighVoltage,actualHighVoltage,gainSetting)
end

function DAQmxAdjust4610Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64,offset::float64)
    ccall((:DAQmxAdjust4610Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64),calHandle,channelName,gain,offset)
end

function DAQmxAdjustDSATimebaseCal(calHandle::CalHandle,referenceFrequency::float64)
    ccall((:DAQmxAdjustDSATimebaseCal,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceFrequency)
end

function DAQmxAdjustDSAAOTimebaseCal(calHandle::CalHandle,measuredFrequency::float64,calComplete::Ptr{bool32})
    ccall((:DAQmxAdjustDSAAOTimebaseCal,NIDAQmx),int32,(CalHandle,float64,Ptr{bool32}),calHandle,measuredFrequency,calComplete)
end

function DAQmxSetupDSAAOTimebaseCal(calHandle::CalHandle,expectedFrequency::Ptr{float64})
    ccall((:DAQmxSetupDSAAOTimebaseCal,NIDAQmx),int32,(CalHandle,Ptr{float64}),calHandle,expectedFrequency)
end

function DAQmxAdjustTIOTimebaseCal(calHandle::CalHandle,referenceFrequency::float64)
    ccall((:DAQmxAdjustTIOTimebaseCal,NIDAQmx),int32,(CalHandle,float64),calHandle,referenceFrequency)
end

function DAQmxAdjust4204Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},lowPassFreq::float64,trackHoldEnabled::bool32,inputVal::float64)
    ccall((:DAQmxAdjust4204Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,bool32,float64),calHandle,channelNames,lowPassFreq,trackHoldEnabled,inputVal)
end

function DAQmxAdjust4220Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},gain::float64,inputVal::float64)
    ccall((:DAQmxAdjust4220Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64),calHandle,channelNames,gain,inputVal)
end

function DAQmxAdjust4224Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},gain::float64,inputVal::float64)
    ccall((:DAQmxAdjust4224Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64),calHandle,channelNames,gain,inputVal)
end

function DAQmxAdjust4225Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},gain::float64,inputVal::float64)
    ccall((:DAQmxAdjust4225Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64),calHandle,channelNames,gain,inputVal)
end

function DAQmxSetup433xCal(calHandle::CalHandle,channelNames::Ptr{UInt8},excitationVoltage::float64)
    ccall((:DAQmxSetup433xCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,excitationVoltage)
end

function DAQmxAdjust433xCal(calHandle::CalHandle,refVoltage::float64,refExcitation::float64,shuntLocation::int32)
    ccall((:DAQmxAdjust433xCal,NIDAQmx),int32,(CalHandle,float64,float64,int32),calHandle,refVoltage,refExcitation,shuntLocation)
end

function DAQmxAdjust4300Cal(calHandle::CalHandle,refVoltage::float64)
    ccall((:DAQmxAdjust4300Cal,NIDAQmx),int32,(CalHandle,float64),calHandle,refVoltage)
end

function DAQmxAdjust4353Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},refVal::float64)
    ccall((:DAQmxAdjust4353Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,refVal)
end

function DAQmxAdjust4357Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},refVals::Ptr{float64},numRefVals::int32)
    ccall((:DAQmxAdjust4357Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},Ptr{float64},int32),calHandle,channelNames,refVals,numRefVals)
end

function DAQmxSetup4322Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},outputType::int32,outputVal::float64)
    ccall((:DAQmxSetup4322Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},int32,float64),calHandle,channelNames,outputType,outputVal)
end

function DAQmxAdjust4322Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},refVal::float64)
    ccall((:DAQmxAdjust4322Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,refVal)
end

function DAQmxGet4322CalAdjustPoints(calHandle::CalHandle,outputType::int32,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet4322CalAdjustPoints,NIDAQmx),int32,(CalHandle,int32,Ptr{float64},uInt32),calHandle,outputType,adjustmentPoints,bufferSize)
end

function DAQmxConnectSCExpressCalAccChans(calHandle::CalHandle,channelNames::Ptr{UInt8},connection::Ptr{UInt8})
    ccall((:DAQmxConnectSCExpressCalAccChans,NIDAQmx),int32,(CalHandle,Ptr{UInt8},Ptr{UInt8}),calHandle,channelNames,connection)
end

function DAQmxDisconnectSCExpressCalAccChans(calHandle::CalHandle)
    ccall((:DAQmxDisconnectSCExpressCalAccChans,NIDAQmx),int32,(CalHandle,),calHandle)
end

function DAQmxGetPossibleSCExpressCalAccConnections(deviceName::Ptr{UInt8},channelNames::Ptr{UInt8},connections::Ptr{UInt8},connectionsBufferSize::uInt32)
    ccall((:DAQmxGetPossibleSCExpressCalAccConnections,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},uInt32),deviceName,channelNames,connections,connectionsBufferSize)
end

function DAQmxSetSCExpressCalAccBridgeOutput(calHandle::CalHandle,voltsPerVolt::float64)
    ccall((:DAQmxSetSCExpressCalAccBridgeOutput,NIDAQmx),int32,(CalHandle,float64),calHandle,voltsPerVolt)
end

function DAQmxGet9201CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9201CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxCSeriesSetCalTemp(calHandle::CalHandle,temperature::float64)
    ccall((:DAQmxCSeriesSetCalTemp,NIDAQmx),int32,(CalHandle,float64),calHandle,temperature)
end

function DAQmxAdjust9201Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9201Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9203CalAdjustPoints(calHandle::CalHandle,rangeMin::float64,rangeMax::float64,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9203CalAdjustPoints,NIDAQmx),int32,(CalHandle,float64,float64,Ptr{float64},uInt32),calHandle,rangeMin,rangeMax,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9203GainCal(calHandle::CalHandle,channelNames::Ptr{UInt8},rangeMin::float64,rangeMax::float64,value::float64)
    ccall((:DAQmxAdjust9203GainCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64,float64),calHandle,channelNames,rangeMin,rangeMax,value)
end

function DAQmxAdjust9203OffsetCal(calHandle::CalHandle,channelNames::Ptr{UInt8},rangeMin::float64,rangeMax::float64)
    ccall((:DAQmxAdjust9203OffsetCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64),calHandle,channelNames,rangeMin,rangeMax)
end

function DAQmxAdjust9205Cal(calHandle::CalHandle,value::float64)
    ccall((:DAQmxAdjust9205Cal,NIDAQmx),int32,(CalHandle,float64),calHandle,value)
end

function DAQmxAdjust9206Cal(calHandle::CalHandle,value::float64)
    ccall((:DAQmxAdjust9206Cal,NIDAQmx),int32,(CalHandle,float64),calHandle,value)
end

function DAQmxGet9207CalAdjustPoints(calHandle::CalHandle,channelNames::Ptr{UInt8},adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9207CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{UInt8},Ptr{float64},uInt32),calHandle,channelNames,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9207GainCal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9207GainCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxAdjust9207OffsetCal(calHandle::CalHandle,channelNames::Ptr{UInt8})
    ccall((:DAQmxAdjust9207OffsetCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8}),calHandle,channelNames)
end

function DAQmxGet9208CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9208CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9208GainCal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9208GainCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxAdjust9208OffsetCal(calHandle::CalHandle,channelNames::Ptr{UInt8})
    ccall((:DAQmxAdjust9208OffsetCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8}),calHandle,channelNames)
end

function DAQmxAdjust9211Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9211Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9213CalAdjustPoints(calHandle::CalHandle,rangeMin::float64,rangeMax::float64,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9213CalAdjustPoints,NIDAQmx),int32,(CalHandle,float64,float64,Ptr{float64},uInt32),calHandle,rangeMin,rangeMax,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9213Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},rangeMin::float64,rangeMax::float64,value::float64)
    ccall((:DAQmxAdjust9213Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64,float64),calHandle,channelNames,rangeMin,rangeMax,value)
end

function DAQmxGet9214CalAdjustPoints(calHandle::CalHandle,channelNames::Ptr{UInt8},adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9214CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{UInt8},Ptr{float64},uInt32),calHandle,channelNames,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9214Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9214Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9215CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9215CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9215Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9215Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9217CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9217CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9217Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9217Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxSetup9219Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},rangeMin::float64,rangeMax::float64,measType::int32,bridgeConfig::int32)
    ccall((:DAQmxSetup9219Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64,int32,int32),calHandle,channelNames,rangeMin,rangeMax,measType,bridgeConfig)
end

function DAQmxGet9219CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9219CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9219Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9219Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9220CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9220CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9220Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9220Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9221CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9221CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9221Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9221Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9222CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9222CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9222Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9222Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9223CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9223CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9223Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9223Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9225CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9225CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9225Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9225Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9227CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9227CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9227Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9227Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9229CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9229CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9229Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9229Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9232CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9232CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9232Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9232Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9234CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9234CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9234GainCal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9234GainCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxAdjust9234OffsetCal(calHandle::CalHandle,channelNames::Ptr{UInt8})
    ccall((:DAQmxAdjust9234OffsetCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8}),calHandle,channelNames)
end

function DAQmxGet9239CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9239CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxAdjust9239Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9239Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9242CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9242CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9242Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxSetup9242Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxAdjust9242Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9242Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9244CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{float64},bufferSize::uInt32)
    ccall((:DAQmxGet9244CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{float64},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9244Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxSetup9244Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxAdjust9244Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9244Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9263CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{int32},bufferSize::uInt32)
    ccall((:DAQmxGet9263CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{int32},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9263Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::int32)
    ccall((:DAQmxSetup9263Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},int32),calHandle,channelNames,value)
end

function DAQmxAdjust9263Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9263Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9264CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{int32},bufferSize::uInt32)
    ccall((:DAQmxGet9264CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{int32},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9264Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::int32)
    ccall((:DAQmxSetup9264Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},int32),calHandle,channelNames,value)
end

function DAQmxAdjust9264Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9264Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9265CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{int32},bufferSize::uInt32)
    ccall((:DAQmxGet9265CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{int32},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9265Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::int32)
    ccall((:DAQmxSetup9265Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},int32),calHandle,channelNames,value)
end

function DAQmxAdjust9265Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9265Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxGet9269CalAdjustPoints(calHandle::CalHandle,adjustmentPoints::Ptr{int32},bufferSize::uInt32)
    ccall((:DAQmxGet9269CalAdjustPoints,NIDAQmx),int32,(CalHandle,Ptr{int32},uInt32),calHandle,adjustmentPoints,bufferSize)
end

function DAQmxSetup9269Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::int32)
    ccall((:DAQmxSetup9269Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},int32),calHandle,channelNames,value)
end

function DAQmxAdjust9269Cal(calHandle::CalHandle,channelNames::Ptr{UInt8},value::float64)
    ccall((:DAQmxAdjust9269Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelNames,value)
end

function DAQmxSetup1102Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1102Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1102Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1102Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1104Cal(calHandle::CalHandle,channelName::Ptr{UInt8})
    ccall((:DAQmxSetup1104Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8}),calHandle,channelName)
end

function DAQmxAdjust1104Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1104Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1112Cal(calHandle::CalHandle,channelName::Ptr{UInt8})
    ccall((:DAQmxSetup1112Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8}),calHandle,channelName)
end

function DAQmxAdjust1112Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1112Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1122Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1122Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1122Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1122Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1124Cal(calHandle::CalHandle,channelName::Ptr{UInt8},range::int32,dacValue::uInt32)
    ccall((:DAQmxSetup1124Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},int32,uInt32),calHandle,channelName,range,dacValue)
end

function DAQmxAdjust1124Cal(calHandle::CalHandle,measOutput::float64)
    ccall((:DAQmxAdjust1124Cal,NIDAQmx),int32,(CalHandle,float64),calHandle,measOutput)
end

function DAQmxSetup1125Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1125Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1125Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1125Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1126Cal(calHandle::CalHandle,channelName::Ptr{UInt8},upperFreqLimit::float64)
    ccall((:DAQmxSetup1126Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,upperFreqLimit)
end

function DAQmxAdjust1126Cal(calHandle::CalHandle,refFreq::float64,measOutput::float64)
    ccall((:DAQmxAdjust1126Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refFreq,measOutput)
end

function DAQmxSetup1141Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1141Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1141Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1141Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1142Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1142Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1142Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1142Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1143Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1143Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1143Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1143Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1502Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1502Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1502Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1502Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1503Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1503Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1503Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1503Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxAdjust1503CurrentCal(calHandle::CalHandle,channelName::Ptr{UInt8},measCurrent::float64)
    ccall((:DAQmxAdjust1503CurrentCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,measCurrent)
end

function DAQmxSetup1520Cal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup1520Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust1520Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1520Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1521Cal(calHandle::CalHandle,channelName::Ptr{UInt8})
    ccall((:DAQmxSetup1521Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8}),calHandle,channelName)
end

function DAQmxAdjust1521Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust1521Cal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup153xCal(calHandle::CalHandle,channelName::Ptr{UInt8},gain::float64)
    ccall((:DAQmxSetup153xCal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64),calHandle,channelName,gain)
end

function DAQmxAdjust153xCal(calHandle::CalHandle,refVoltage::float64,measOutput::float64)
    ccall((:DAQmxAdjust153xCal,NIDAQmx),int32,(CalHandle,float64,float64),calHandle,refVoltage,measOutput)
end

function DAQmxSetup1540Cal(calHandle::CalHandle,channelName::Ptr{UInt8},excitationVoltage::float64,excitationFreq::float64)
    ccall((:DAQmxSetup1540Cal,NIDAQmx),int32,(CalHandle,Ptr{UInt8},float64,float64),calHandle,channelName,excitationVoltage,excitationFreq)
end

function DAQmxAdjust1540Cal(calHandle::CalHandle,refVoltage::float64,measOutput::float64,inputCalSource::int32)
    ccall((:DAQmxAdjust1540Cal,NIDAQmx),int32,(CalHandle,float64,float64,int32),calHandle,refVoltage,measOutput,inputCalSource)
end

function DAQmxConfigureTEDS(physicalChannel::Ptr{UInt8},filePath::Ptr{UInt8})
    ccall((:DAQmxConfigureTEDS,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8}),physicalChannel,filePath)
end

function DAQmxClearTEDS(physicalChannel::Ptr{UInt8})
    ccall((:DAQmxClearTEDS,NIDAQmx),int32,(Ptr{UInt8},),physicalChannel)
end

function DAQmxWriteToTEDSFromArray(physicalChannel::Ptr{UInt8},bitStream::Ptr{uInt8},arraySize::uInt32,basicTEDSOptions::int32)
    ccall((:DAQmxWriteToTEDSFromArray,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt8},uInt32,int32),physicalChannel,bitStream,arraySize,basicTEDSOptions)
end

function DAQmxWriteToTEDSFromFile(physicalChannel::Ptr{UInt8},filePath::Ptr{UInt8},basicTEDSOptions::int32)
    ccall((:DAQmxWriteToTEDSFromFile,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},int32),physicalChannel,filePath,basicTEDSOptions)
end

function DAQmxWaitForNextSampleClock(taskHandle::TaskHandle,timeout::float64,isLate::Ptr{bool32})
    ccall((:DAQmxWaitForNextSampleClock,NIDAQmx),int32,(TaskHandle,float64,Ptr{bool32}),taskHandle,timeout,isLate)
end

function DAQmxResetRealTimeAttribute(taskHandle::TaskHandle,attribute::int32)
    ccall((:DAQmxResetRealTimeAttribute,NIDAQmx),int32,(TaskHandle,int32),taskHandle,attribute)
end

function DAQmxIsReadOrWriteLate(errorCode::int32)
    ccall((:DAQmxIsReadOrWriteLate,NIDAQmx),bool32,(int32,),errorCode)
end

function DAQmxSaveTask(taskHandle::TaskHandle,saveAs::Ptr{UInt8},author::Ptr{UInt8},options::uInt32)
    ccall((:DAQmxSaveTask,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,saveAs,author,options)
end

function DAQmxSaveGlobalChan(taskHandle::TaskHandle,channelName::Ptr{UInt8},saveAs::Ptr{UInt8},author::Ptr{UInt8},options::uInt32)
    ccall((:DAQmxSaveGlobalChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channelName,saveAs,author,options)
end

function DAQmxSaveScale(scaleName::Ptr{UInt8},saveAs::Ptr{UInt8},author::Ptr{UInt8},options::uInt32)
    ccall((:DAQmxSaveScale,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},uInt32),scaleName,saveAs,author,options)
end

function DAQmxDeleteSavedTask(taskName::Ptr{UInt8})
    ccall((:DAQmxDeleteSavedTask,NIDAQmx),int32,(Ptr{UInt8},),taskName)
end

function DAQmxDeleteSavedGlobalChan(channelName::Ptr{UInt8})
    ccall((:DAQmxDeleteSavedGlobalChan,NIDAQmx),int32,(Ptr{UInt8},),channelName)
end

function DAQmxDeleteSavedScale(scaleName::Ptr{UInt8})
    ccall((:DAQmxDeleteSavedScale,NIDAQmx),int32,(Ptr{UInt8},),scaleName)
end

function DAQmxSetAnalogPowerUpStatesWithOutputType(channelNames::Ptr{UInt8},stateArray::Ptr{float64},channelTypeArray::Ptr{int32},arraySize::uInt32)
    ccall((:DAQmxSetAnalogPowerUpStatesWithOutputType,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},Ptr{int32},uInt32),channelNames,stateArray,channelTypeArray,arraySize)
end

function DAQmxGetAnalogPowerUpStatesWithOutputType(channelNames::Ptr{UInt8},stateArray::Ptr{float64},channelTypeArray::Ptr{int32},arraySizePtr::Ptr{uInt32})
    ccall((:DAQmxGetAnalogPowerUpStatesWithOutputType,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},Ptr{int32},Ptr{uInt32}),channelNames,stateArray,channelTypeArray,arraySizePtr)
end

function DAQmxSetDigitalLogicFamilyPowerUpState(deviceName::Ptr{UInt8},logicFamily::int32)
    ccall((:DAQmxSetDigitalLogicFamilyPowerUpState,NIDAQmx),int32,(Ptr{UInt8},int32),deviceName,logicFamily)
end

function DAQmxGetDigitalLogicFamilyPowerUpState(deviceName::Ptr{UInt8},logicFamily::Ptr{int32})
    ccall((:DAQmxGetDigitalLogicFamilyPowerUpState,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),deviceName,logicFamily)
end

function DAQmxAddNetworkDevice(IPAddress::Ptr{UInt8},deviceName::Ptr{UInt8},attemptReservation::bool32,timeout::float64,deviceNameOut::Ptr{UInt8},deviceNameOutBufferSize::uInt32)
    ccall((:DAQmxAddNetworkDevice,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},bool32,float64,Ptr{UInt8},uInt32),IPAddress,deviceName,attemptReservation,timeout,deviceNameOut,deviceNameOutBufferSize)
end

function DAQmxDeleteNetworkDevice(deviceName::Ptr{UInt8})
    ccall((:DAQmxDeleteNetworkDevice,NIDAQmx),int32,(Ptr{UInt8},),deviceName)
end

function DAQmxReserveNetworkDevice(deviceName::Ptr{UInt8},overrideReservation::bool32)
    ccall((:DAQmxReserveNetworkDevice,NIDAQmx),int32,(Ptr{UInt8},bool32),deviceName,overrideReservation)
end

function DAQmxUnreserveNetworkDevice(deviceName::Ptr{UInt8})
    ccall((:DAQmxUnreserveNetworkDevice,NIDAQmx),int32,(Ptr{UInt8},),deviceName)
end

function DAQmxAutoConfigureCDAQSyncConnections(chassisDevicesPorts::Ptr{UInt8},timeout::float64)
    ccall((:DAQmxAutoConfigureCDAQSyncConnections,NIDAQmx),int32,(Ptr{UInt8},float64),chassisDevicesPorts,timeout)
end

function DAQmxGetAutoConfiguredCDAQSyncConnections(portList::Ptr{UInt8},portListSize::uInt32)
    ccall((:DAQmxGetAutoConfiguredCDAQSyncConnections,NIDAQmx),int32,(Ptr{UInt8},uInt32),portList,portListSize)
end

function DAQmxAreConfiguredCDAQSyncPortsDisconnected(chassisDevicesPorts::Ptr{UInt8},timeout::float64,disconnectedPortsExist::Ptr{bool32})
    ccall((:DAQmxAreConfiguredCDAQSyncPortsDisconnected,NIDAQmx),int32,(Ptr{UInt8},float64,Ptr{bool32}),chassisDevicesPorts,timeout,disconnectedPortsExist)
end

function DAQmxGetDisconnectedCDAQSyncPorts(portList::Ptr{UInt8},portListSize::uInt32)
    ccall((:DAQmxGetDisconnectedCDAQSyncPorts,NIDAQmx),int32,(Ptr{UInt8},uInt32),portList,portListSize)
end

function DAQmxAddCDAQSyncConnection(portList::Ptr{UInt8})
    ccall((:DAQmxAddCDAQSyncConnection,NIDAQmx),int32,(Ptr{UInt8},),portList)
end

function DAQmxRemoveCDAQSyncConnection(portList::Ptr{UInt8})
    ccall((:DAQmxRemoveCDAQSyncConnection,NIDAQmx),int32,(Ptr{UInt8},),portList)
end

function DAQmxGetErrorString(errorCode::int32,errorString::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetErrorString,NIDAQmx),int32,(int32,Ptr{UInt8},uInt32),errorCode,errorString,bufferSize)
end

function DAQmxGetExtendedErrorInfo(errorString::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExtendedErrorInfo,NIDAQmx),int32,(Ptr{UInt8},uInt32),errorString,bufferSize)
end

function DAQmxGetBufInputBufSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetBufInputBufSize,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetBufInputBufSize(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetBufInputBufSize,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetBufInputBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufInputBufSize,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetBufInputOnbrdBufSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetBufInputOnbrdBufSize,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetBufOutputBufSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetBufOutputBufSize,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetBufOutputBufSize(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetBufOutputBufSize,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetBufOutputBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufOutputBufSize,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetBufOutputOnbrdBufSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetBufOutputOnbrdBufSize,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetBufOutputOnbrdBufSize(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetBufOutputOnbrdBufSize,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetBufOutputOnbrdBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufOutputOnbrdBufSize,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSelfCalSupported(deviceName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetSelfCalSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),deviceName,data)
end

function DAQmxGetSelfCalLastTemp(deviceName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSelfCalLastTemp,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),deviceName,data)
end

function DAQmxGetExtCalRecommendedInterval(deviceName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetExtCalRecommendedInterval,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetExtCalLastTemp(deviceName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetExtCalLastTemp,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),deviceName,data)
end

function DAQmxGetCalUserDefinedInfo(deviceName::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCalUserDefinedInfo,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),deviceName,data,bufferSize)
end

function DAQmxSetCalUserDefinedInfo(deviceName::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCalUserDefinedInfo,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8}),deviceName,data)
end

function DAQmxGetCalUserDefinedInfoMaxSize(deviceName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCalUserDefinedInfoMaxSize,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetCalDevTemp(deviceName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCalDevTemp,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),deviceName,data)
end

function DAQmxGetCalAccConnectionCount(deviceName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCalAccConnectionCount,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),deviceName,data)
end

function DAQmxSetCalAccConnectionCount(deviceName::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCalAccConnectionCount,NIDAQmx),int32,(Ptr{UInt8},uInt32),deviceName,data)
end

function DAQmxGetCalRecommendedAccConnectionCountLimit(deviceName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCalRecommendedAccConnectionCountLimit,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetAIMax(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIMax(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIMax(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIMin(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIMin(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIMin(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAICustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAICustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAICustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAICustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetAICustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAICustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIMeasType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIMeasType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIVoltageUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIVoltageUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIVoltageUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIVoltageUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIVoltageUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIVoltageUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIVoltagedBRef(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIVoltagedBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIVoltagedBRef(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIVoltagedBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIVoltagedBRef(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIVoltagedBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIVoltageACRMSUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIVoltageACRMSUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIVoltageACRMSUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIVoltageACRMSUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIVoltageACRMSUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIVoltageACRMSUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAITempUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAITempUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAITempUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAITempUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAITempUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAITempUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIThrmcplType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIThrmcplType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIThrmcplType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIThrmcplType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIThrmcplType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIThrmcplScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIThrmcplScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIThrmcplScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIThrmcplScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIThrmcplScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplCJCSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIThrmcplCJCSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIThrmcplCJCVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmcplCJCVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmcplCJCVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIThrmcplCJCVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmcplCJCVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIThrmcplCJCVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplCJCChan(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIThrmcplCJCChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxGetAIRTDType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIRTDType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRTDType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIRTDType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRTDType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRTDType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRTDR0(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIRTDR0,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRTDR0(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIRTDR0,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRTDR0(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRTDR0,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRTDA(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIRTDA,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRTDA(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIRTDA,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRTDA(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRTDA,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRTDB(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIRTDB,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRTDB(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIRTDB,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRTDB(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRTDB,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRTDC(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIRTDC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRTDC(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIRTDC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRTDC(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRTDC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmstrA(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmstrA,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmstrA(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIThrmstrA,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmstrA(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIThrmstrA,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmstrB(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmstrB,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmstrB(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIThrmstrB,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmstrB(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIThrmstrB,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmstrC(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmstrC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmstrC(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIThrmstrC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmstrC(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIThrmstrC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmstrR1(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmstrR1,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmstrR1(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIThrmstrR1,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmstrR1(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIThrmstrR1,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIForceReadFromChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIForceReadFromChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIForceReadFromChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAICurrentUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAICurrentUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAICurrentUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAICurrentUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAICurrentUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAICurrentUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAICurrentACRMSUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAICurrentACRMSUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAICurrentACRMSUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAICurrentACRMSUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAICurrentACRMSUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAICurrentACRMSUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIStrainUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIStrainUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIStrainUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIStrainUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIStrainUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIStrainUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIStrainGageForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIStrainGageForceReadFromChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIStrainGageForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIStrainGageForceReadFromChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIStrainGageForceReadFromChan(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIStrainGageForceReadFromChan,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIStrainGageGageFactor(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIStrainGageGageFactor,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIStrainGageGageFactor(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIStrainGageGageFactor,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIStrainGageGageFactor(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIStrainGageGageFactor,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIStrainGagePoissonRatio(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIStrainGagePoissonRatio,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIStrainGagePoissonRatio(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIStrainGagePoissonRatio,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIStrainGagePoissonRatio(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIStrainGagePoissonRatio,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIStrainGageCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIStrainGageCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIStrainGageCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIStrainGageCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIStrainGageCfg(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIStrainGageCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRosetteStrainGageRosetteType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIRosetteStrainGageRosetteType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIRosetteStrainGageOrientation(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIRosetteStrainGageOrientation,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRosetteStrainGageOrientation(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIRosetteStrainGageOrientation,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRosetteStrainGageOrientation(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRosetteStrainGageOrientation,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRosetteStrainGageStrainChans(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIRosetteStrainGageStrainChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxGetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIRosetteStrainGageRosetteMeasType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIRosetteStrainGageRosetteMeasType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRosetteStrainGageRosetteMeasType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIResistanceUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIResistanceUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIResistanceUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIResistanceUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIResistanceUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIResistanceUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIFreqThreshVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIFreqThreshVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIFreqThreshVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIFreqThreshVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIFreqThreshVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIFreqThreshVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIFreqHyst(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIFreqHyst,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIFreqHyst(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIFreqHyst,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIFreqHyst(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIFreqHyst,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILVDTUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAILVDTUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAILVDTUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAILVDTUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAILVDTUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILVDTUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAILVDTSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAILVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAILVDTSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAILVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILVDTSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAILVDTSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAILVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAILVDTSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAILVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILVDTSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRVDTUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIRVDTUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRVDTUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIRVDTUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRVDTUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRVDTUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIRVDTSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIRVDTSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRVDTSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRVDTSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIRVDTSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIRVDTSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRVDTSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRVDTSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIEddyCurrentProxProbeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIEddyCurrentProxProbeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIEddyCurrentProxProbeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIEddyCurrentProxProbeSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIEddyCurrentProxProbeSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIEddyCurrentProxProbeSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIEddyCurrentProxProbeSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIEddyCurrentProxProbeSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIEddyCurrentProxProbeSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAISoundPressureMaxSoundPressureLvl,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAISoundPressureMaxSoundPressureLvl,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAISoundPressureMaxSoundPressureLvl,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAISoundPressureUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAISoundPressureUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAISoundPressureUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAISoundPressureUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAISoundPressureUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAISoundPressureUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAISoundPressuredBRef(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAISoundPressuredBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAISoundPressuredBRef(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAISoundPressuredBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAISoundPressuredBRef(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAISoundPressuredBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIMicrophoneSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIMicrophoneSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIMicrophoneSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIMicrophoneSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIMicrophoneSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIMicrophoneSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIAccelUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIAccelUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIAccelUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIAccelUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIAccelUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIAccelUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIAcceldBRef(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIAcceldBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIAcceldBRef(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIAcceldBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIAcceldBRef(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIAcceldBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIAccelSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIAccelSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIAccelSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIAccelSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIAccelSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIAccelSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIAccelSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIAccelSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIAccelSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIAccelSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIAccelSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIAccelSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIVelocityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIVelocityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIVelocityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIVelocityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIVelocityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIVelocityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIVelocityIEPESensordBRef(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIVelocityIEPESensordBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIVelocityIEPESensordBRef(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIVelocityIEPESensordBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIVelocityIEPESensordBRef(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIVelocityIEPESensordBRef,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIVelocityIEPESensorSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIVelocityIEPESensorSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIVelocityIEPESensorSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIVelocityIEPESensorSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIVelocityIEPESensorSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIVelocityIEPESensorSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIForceUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIForceUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIForceUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIForceUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIForceUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIForceUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIForceIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIForceIEPESensorSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIForceIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIForceIEPESensorSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIForceIEPESensorSensitivity(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIForceIEPESensorSensitivity,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIForceIEPESensorSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIForceIEPESensorSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIForceIEPESensorSensitivityUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIPressureUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIPressureUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIPressureUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIPressureUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIPressureUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIPressureUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAITorqueUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAITorqueUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAITorqueUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAITorqueUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAITorqueUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAITorqueUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIBridgeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeElectricalUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeElectricalUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeElectricalUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIBridgeElectricalUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeElectricalUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeElectricalUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgePhysicalUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgePhysicalUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgePhysicalUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIBridgePhysicalUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgePhysicalUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgePhysicalUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIBridgeScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeTwoPointLinFirstElectricalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinFirstElectricalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeTwoPointLinFirstElectricalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeTwoPointLinFirstPhysicalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinFirstPhysicalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeTwoPointLinFirstPhysicalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeTwoPointLinSecondElectricalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinSecondElectricalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeTwoPointLinSecondElectricalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeTwoPointLinSecondPhysicalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinSecondPhysicalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeTwoPointLinSecondPhysicalVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTableElectricalVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgeTableElectricalVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIBridgeTableElectricalVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgeTableElectricalVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIBridgeTableElectricalVals(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeTableElectricalVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeTablePhysicalVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgeTablePhysicalVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIBridgeTablePhysicalVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgeTablePhysicalVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIBridgeTablePhysicalVals(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeTablePhysicalVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgePolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgePolyForwardCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIBridgePolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgePolyForwardCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIBridgePolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgePolyForwardCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgePolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgePolyReverseCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIBridgePolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgePolyReverseCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIBridgePolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgePolyReverseCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIIsTEDS(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIIsTEDS,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetAITEDSUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAITEDSUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxGetAICoupling(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAICoupling,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAICoupling(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAICoupling,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAICoupling(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAICoupling,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAITermCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAITermCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAITermCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAITermCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAITermCfg(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAITermCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIInputSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIInputSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAIInputSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAIInputSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetAIInputSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIInputSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIResistanceCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIResistanceCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIResistanceCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIResistanceCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIResistanceCfg(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIResistanceCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILeadWireResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAILeadWireResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAILeadWireResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAILeadWireResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAILeadWireResistance(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILeadWireResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIBridgeCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeCfg(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeNomResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeNomResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeNomResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeNomResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeNomResistance(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeNomResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeInitialVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeInitialVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeInitialVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeInitialVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeInitialVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeInitialVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeInitialRatio(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeInitialRatio,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeInitialRatio(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeInitialRatio,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeInitialRatio(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeInitialRatio,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIBridgeShuntCalEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIBridgeShuntCalEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeShuntCalEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalSelect(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeShuntCalSelect,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalSelect(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIBridgeShuntCalSelect,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalSelect(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeShuntCalSelect,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeShuntCalGainAdjust,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalGainAdjust,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeShuntCalGainAdjust,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalAResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalAResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalAResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalAActualResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalAActualResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalAActualResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeBalanceCoarsePot,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIBridgeBalanceCoarsePot,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeBalanceCoarsePot,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIBridgeBalanceFinePot(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIBridgeBalanceFinePot,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIBridgeBalanceFinePot(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIBridgeBalanceFinePot,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIBridgeBalanceFinePot(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIBridgeBalanceFinePot,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAICurrentShuntLoc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAICurrentShuntLoc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAICurrentShuntLoc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAICurrentShuntLoc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAICurrentShuntLoc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAICurrentShuntLoc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAICurrentShuntResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAICurrentShuntResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAICurrentShuntResistance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAICurrentShuntResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAICurrentShuntResistance(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAICurrentShuntResistance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIExcitSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIExcitSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIExcitSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIExcitSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIExcitSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIExcitVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIExcitVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIExcitVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIExcitVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIExcitVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIExcitVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIExcitUseForScaling(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIExcitUseForScaling,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitUseForScaling(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIExcitUseForScaling,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIExcitUseForScaling(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIExcitUseForScaling,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIExcitUseMultiplexed(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIExcitUseMultiplexed,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitUseMultiplexed(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIExcitUseMultiplexed,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIExcitUseMultiplexed(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIExcitUseMultiplexed,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIExcitActualVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIExcitActualVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIExcitActualVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIExcitActualVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIExcitActualVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIExcitActualVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIExcitDCorAC(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIExcitDCorAC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitDCorAC(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIExcitDCorAC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIExcitDCorAC(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIExcitDCorAC,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIExcitVoltageOrCurrent(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIExcitVoltageOrCurrent,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIExcitVoltageOrCurrent(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIExcitVoltageOrCurrent,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIExcitVoltageOrCurrent(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIExcitVoltageOrCurrent,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIACExcitFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIACExcitFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIACExcitFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIACExcitFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIACExcitFreq(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIACExcitFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIACExcitSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIACExcitSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIACExcitSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIACExcitSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIACExcitSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIACExcitSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIACExcitWireMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIACExcitWireMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIACExcitWireMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIACExcitWireMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIACExcitWireMode(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIACExcitWireMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIOpenThrmcplDetectEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIOpenThrmcplDetectEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIOpenThrmcplDetectEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIThrmcplLeadOffsetVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIThrmcplLeadOffsetVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIThrmcplLeadOffsetVoltage,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIAtten(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIAtten,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIAtten(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIAtten,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIAtten(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIAtten,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIProbeAtten(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIProbeAtten,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIProbeAtten(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIProbeAtten,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIProbeAtten(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIProbeAtten,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILowpassEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAILowpassEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAILowpassEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAILowpassEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAILowpassEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILowpassEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILowpassCutoffFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAILowpassCutoffFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAILowpassCutoffFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAILowpassCutoffFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAILowpassCutoffFreq(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILowpassCutoffFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAILowpassSwitchCapClkSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAILowpassSwitchCapClkSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILowpassSwitchCapClkSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAILowpassSwitchCapExtClkFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAILowpassSwitchCapExtClkFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILowpassSwitchCapExtClkFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAILowpassSwitchCapExtClkDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAILowpassSwitchCapExtClkDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILowpassSwitchCapExtClkDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAILowpassSwitchCapOutClkDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAILowpassSwitchCapOutClkDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILowpassSwitchCapOutClkDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIFilterDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIFilterDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxGetAIFilterDelayUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIFilterDelayUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIFilterDelayUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIFilterDelayUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIFilterDelayUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIFilterDelayUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRemoveFilterDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIRemoveFilterDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIRemoveFilterDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIRemoveFilterDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIRemoveFilterDelay(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRemoveFilterDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIFilterDelayAdjustment(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIFilterDelayAdjustment,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIFilterDelayAdjustment(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIFilterDelayAdjustment,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIFilterDelayAdjustment(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIFilterDelayAdjustment,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIAveragingWinSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIAveragingWinSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIAveragingWinSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAIAveragingWinSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIAveragingWinSize(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIAveragingWinSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIResolutionUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIResolutionUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIResolution(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIResolution,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxGetAIRawSampSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIRawSampSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetAIRawSampJustification(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIRawSampJustification,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAIADCTimingMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIADCTimingMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIADCTimingMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIADCTimingMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIADCTimingMode(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIADCTimingMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIADCCustomTimingMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIADCCustomTimingMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIADCCustomTimingMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAIADCCustomTimingMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIADCCustomTimingMode(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIADCCustomTimingMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIDitherEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIDitherEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIDitherEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIDitherEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIDitherEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIDitherEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalHasValidCalInfo(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIChanCalHasValidCalInfo,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetAIChanCalEnableCal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIChanCalEnableCal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIChanCalEnableCal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIChanCalEnableCal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIChanCalEnableCal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalEnableCal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalApplyCalIfExp(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIChanCalApplyCalIfExp,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIChanCalApplyCalIfExp(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIChanCalApplyCalIfExp,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIChanCalApplyCalIfExp(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalApplyCalIfExp,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIChanCalScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIChanCalScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIChanCalScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIChanCalScaleType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalScaleType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalTablePreScaledVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalTablePreScaledVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalTablePreScaledVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalTablePreScaledVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalTablePreScaledVals(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalTablePreScaledVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalTableScaledVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalTableScaledVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalTableScaledVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalTableScaledVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalTableScaledVals(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalTableScaledVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalPolyForwardCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalPolyForwardCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalPolyForwardCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalPolyReverseCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalPolyReverseCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalPolyReverseCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalOperatorName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIChanCalOperatorName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAIChanCalOperatorName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAIChanCalOperatorName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetAIChanCalOperatorName(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalOperatorName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalDesc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIChanCalDesc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAIChanCalDesc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAIChanCalDesc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetAIChanCalDesc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalDesc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalVerifRefVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalVerifRefVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalVerifRefVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalVerifRefVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalVerifRefVals(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalVerifRefVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIChanCalVerifAcqVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalVerifAcqVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxSetAIChanCalVerifAcqVals(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalVerifAcqVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxResetAIChanCalVerifAcqVals(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIChanCalVerifAcqVals,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRngHigh(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIRngHigh,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRngHigh(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIRngHigh,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRngHigh(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRngHigh,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRngLow(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIRngLow,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIRngLow(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIRngLow,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIRngLow(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRngLow,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIDCOffset(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIDCOffset,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIDCOffset(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIDCOffset,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIDCOffset(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIDCOffset,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIGain(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIGain,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAIGain(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIGain,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAIGain(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIGain,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAISampAndHoldEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAISampAndHoldEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAISampAndHoldEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAISampAndHoldEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAISampAndHoldEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAISampAndHoldEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIAutoZeroMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIAutoZeroMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIAutoZeroMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIAutoZeroMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIAutoZeroMode(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIAutoZeroMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIDataXferCustomThreshold(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIDataXferCustomThreshold,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIDataXferCustomThreshold(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAIDataXferCustomThreshold,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIDataXferCustomThreshold(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIDataXferCustomThreshold,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIRawDataCompressionType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIRawDataCompressionType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAIRawDataCompressionType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIRawDataCompressionType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAIRawDataCompressionType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIRawDataCompressionType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAILossyLSBRemovalCompressedSampSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAILossyLSBRemovalCompressedSampSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAILossyLSBRemovalCompressedSampSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAIDevScalingCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIDevScalingCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxGetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIEnhancedAliasRejectionEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIEnhancedAliasRejectionEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAIEnhancedAliasRejectionEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOMax(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOMax(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOMax(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOMin(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOMin(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOMin(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOCustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAOCustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAOCustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAOCustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetAOCustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOCustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOOutputType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOOutputType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetAOVoltageUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOVoltageUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOVoltageUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAOVoltageUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAOVoltageUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOVoltageUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOVoltageCurrentLimit(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOVoltageCurrentLimit,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOVoltageCurrentLimit(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOVoltageCurrentLimit,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOVoltageCurrentLimit(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOVoltageCurrentLimit,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOCurrentUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOCurrentUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOCurrentUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAOCurrentUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAOCurrentUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOCurrentUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOFuncGenType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAOFuncGenType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFuncGenType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOFuncGenFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenFreq(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFuncGenFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenAmplitude(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenAmplitude,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenAmplitude(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOFuncGenAmplitude,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenAmplitude(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFuncGenAmplitude,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenOffset(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenOffset,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenOffset(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOFuncGenOffset,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenOffset(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFuncGenOffset,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenSquareDutyCycle,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOFuncGenSquareDutyCycle,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFuncGenSquareDutyCycle,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenModulationType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOFuncGenModulationType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenModulationType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAOFuncGenModulationType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenModulationType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFuncGenModulationType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFuncGenFMDeviation(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOFuncGenFMDeviation,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFuncGenFMDeviation(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOFuncGenFMDeviation,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFuncGenFMDeviation(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFuncGenFMDeviation,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOOutputImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOOutputImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOOutputImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOOutputImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOOutputImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOOutputImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOLoadImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOLoadImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOLoadImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOLoadImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOLoadImpedance(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOLoadImpedance,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOIdleOutputBehavior(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOIdleOutputBehavior,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOIdleOutputBehavior(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAOIdleOutputBehavior,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAOIdleOutputBehavior(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOIdleOutputBehavior,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOTermCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOTermCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOTermCfg(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAOTermCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAOTermCfg(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOTermCfg,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOResolutionUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOResolutionUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOResolutionUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAOResolutionUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAOResolutionUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOResolutionUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOResolution(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOResolution,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxGetAODACRngHigh(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAODACRngHigh,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAODACRngHigh(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAODACRngHigh,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAODACRngHigh(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACRngHigh,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACRngLow(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAODACRngLow,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAODACRngLow(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAODACRngLow,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAODACRngLow(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACRngLow,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACRefConnToGnd(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAODACRefConnToGnd,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAODACRefConnToGnd(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAODACRefConnToGnd,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAODACRefConnToGnd(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACRefConnToGnd,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACRefAllowConnToGnd(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAODACRefAllowConnToGnd,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAODACRefAllowConnToGnd(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAODACRefAllowConnToGnd,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAODACRefAllowConnToGnd(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACRefAllowConnToGnd,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACRefSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAODACRefSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAODACRefSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAODACRefSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAODACRefSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACRefSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACRefExtSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAODACRefExtSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAODACRefExtSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAODACRefExtSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetAODACRefExtSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACRefExtSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACRefVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAODACRefVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAODACRefVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAODACRefVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAODACRefVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACRefVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACOffsetSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAODACOffsetSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAODACOffsetSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAODACOffsetSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAODACOffsetSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACOffsetSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACOffsetExtSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAODACOffsetExtSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetAODACOffsetExtSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAODACOffsetExtSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetAODACOffsetExtSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACOffsetExtSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODACOffsetVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAODACOffsetVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAODACOffsetVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAODACOffsetVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAODACOffsetVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODACOffsetVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOReglitchEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAOReglitchEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAOReglitchEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAOReglitchEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAOReglitchEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOReglitchEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFilterDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOFilterDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFilterDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOFilterDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFilterDelay(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFilterDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFilterDelayUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAOFilterDelayUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAOFilterDelayUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAOFilterDelayUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAOFilterDelayUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFilterDelayUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOFilterDelayAdjustment(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOFilterDelayAdjustment,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOFilterDelayAdjustment(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOFilterDelayAdjustment,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOFilterDelayAdjustment(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOFilterDelayAdjustment,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOGain(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOGain,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetAOGain(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAOGain,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetAOGain(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOGain,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetAODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetAODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetAOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetAOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetAODevScalingCoeff(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAODevScalingCoeff,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64},uInt32),taskHandle,channel,data,arraySizeInElements)
end

function DAQmxGetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAOEnhancedImageRejectionEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAOEnhancedImageRejectionEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetAOEnhancedImageRejectionEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIInvertLines(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDIInvertLines,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIInvertLines(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDIInvertLines,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIInvertLines(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIInvertLines,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDINumLines(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDINumLines,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetDIDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDIDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDIDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDIDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetDIDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetDIDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIDigFltrEnableBusMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDIDigFltrEnableBusMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIDigFltrEnableBusMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDIDigFltrEnableBusMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrEnableBusMode(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIDigFltrEnableBusMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDIDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetDIDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetDIDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDIDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetDIDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetDIDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetDIDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDIDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDIDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDITristate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDITristate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDITristate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDITristate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDITristate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDITristate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDILogicFamily(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDILogicFamily,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDILogicFamily(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDILogicFamily,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDILogicFamily(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDILogicFamily,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetDIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetDIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetDIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetDIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetDIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetDIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDIAcquireOn(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDIAcquireOn,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDIAcquireOn(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDIAcquireOn,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDIAcquireOn(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDIAcquireOn,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOOutputDriveType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDOOutputDriveType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOOutputDriveType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDOOutputDriveType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDOOutputDriveType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOOutputDriveType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOInvertLines(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDOInvertLines,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOInvertLines(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDOInvertLines,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOInvertLines(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOInvertLines,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDONumLines(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDONumLines,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetDOTristate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDOTristate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOTristate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDOTristate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOTristate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOTristate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOLineStatesStartState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDOLineStatesStartState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOLineStatesStartState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDOLineStatesStartState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDOLineStatesStartState(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOLineStatesStartState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOLineStatesPausedState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDOLineStatesPausedState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOLineStatesPausedState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDOLineStatesPausedState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDOLineStatesPausedState(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOLineStatesPausedState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOLineStatesDoneState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDOLineStatesDoneState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOLineStatesDoneState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDOLineStatesDoneState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDOLineStatesDoneState(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOLineStatesDoneState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOLogicFamily(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDOLogicFamily,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOLogicFamily(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDOLogicFamily,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDOLogicFamily(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOLogicFamily,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOOvercurrentLimit(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDOOvercurrentLimit,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetDOOvercurrentLimit(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetDOOvercurrentLimit,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetDOOvercurrentLimit(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOOvercurrentLimit,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOOvercurrentAutoReenable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDOOvercurrentAutoReenable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOOvercurrentAutoReenable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDOOvercurrentAutoReenable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOOvercurrentAutoReenable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOOvercurrentAutoReenable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOOvercurrentReenablePeriod(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDOOvercurrentReenablePeriod,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetDOOvercurrentReenablePeriod(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetDOOvercurrentReenablePeriod,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetDOOvercurrentReenablePeriod(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOOvercurrentReenablePeriod,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetDOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetDOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetDOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetDOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetDOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetDOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetDOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetDOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetDOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetDOGenerateOn(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDOGenerateOn,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetDOGenerateOn(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDOGenerateOn,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetDOGenerateOn(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetDOGenerateOn,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIMax(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIMax(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIMax(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIMax,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIMin(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIMin(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIMin(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIMin,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICustomScaleName(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICustomScaleName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIMeasType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIMeasType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetCIFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIFreqTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIFreqTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIFreqTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIFreqTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIFreqStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIFreqStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIFreqStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqMeasMeth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIFreqMeasMeth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqMeasMeth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIFreqMeasMeth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIFreqMeasMeth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqMeasMeth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqEnableAveraging(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIFreqEnableAveraging,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqEnableAveraging(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIFreqEnableAveraging,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIFreqEnableAveraging(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqEnableAveraging,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqMeasTime(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIFreqMeasTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIFreqMeasTime(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIFreqMeasTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIFreqMeasTime(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqMeasTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIFreqDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCIFreqDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIFreqDiv(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIFreqDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIFreqDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIFreqDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIFreqDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIFreqDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIFreqDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIFreqDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIFreqDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIFreqDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIFreqDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIFreqDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPeriodUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPeriodUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPeriodTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPeriodTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPeriodTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPeriodTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPeriodStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPeriodStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodMeasMeth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPeriodMeasMeth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodMeasMeth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPeriodMeasMeth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodMeasMeth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodMeasMeth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodEnableAveraging(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPeriodEnableAveraging,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodEnableAveraging(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPeriodEnableAveraging,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodEnableAveraging(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodEnableAveraging,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodMeasTime(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPeriodMeasTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodMeasTime(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPeriodMeasTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPeriodMeasTime(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodMeasTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIPeriodDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCIPeriodDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDiv(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPeriodDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPeriodDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPeriodDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPeriodDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPeriodDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPeriodDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPeriodDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPeriodDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPeriodDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPeriodDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPeriodDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICountEdgesTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDir(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCICountEdgesDir,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDir(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCICountEdgesDir,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDir(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesDir,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDirTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesDirTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesDirTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICountEdgesDirTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDirTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesDirTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountDirDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountDirDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountDirDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesInitialCnt(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCICountEdgesInitialCnt,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesInitialCnt(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCICountEdgesInitialCnt,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesInitialCnt(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesInitialCnt,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCICountEdgesActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCICountEdgesActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountResetEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetResetCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCICountEdgesCountResetResetCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetResetCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCICountEdgesCountResetResetCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetResetCount(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetResetCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountResetTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesCountResetTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICountEdgesCountResetTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCICountEdgesCountResetActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCICountEdgesCountResetActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesCountResetDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesCountResetDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICountEdgesDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICountEdgesDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICountEdgesDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICountEdgesDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICountEdgesDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICountEdgesDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICountEdgesDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICountEdgesDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICountEdgesDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICountEdgesDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICountEdgesDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIAngEncoderUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIAngEncoderUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIAngEncoderUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIAngEncoderUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIAngEncoderUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIAngEncoderUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIAngEncoderPulsesPerRev,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCIAngEncoderPulsesPerRev,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIAngEncoderPulsesPerRev,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIAngEncoderInitialAngle(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIAngEncoderInitialAngle,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIAngEncoderInitialAngle(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIAngEncoderInitialAngle,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIAngEncoderInitialAngle(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIAngEncoderInitialAngle,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCILinEncoderUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCILinEncoderUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCILinEncoderUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCILinEncoderUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCILinEncoderUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCILinEncoderUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCILinEncoderDistPerPulse(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCILinEncoderDistPerPulse,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCILinEncoderDistPerPulse(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCILinEncoderDistPerPulse,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCILinEncoderDistPerPulse(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCILinEncoderDistPerPulse,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCILinEncoderInitialPos(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCILinEncoderInitialPos,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCILinEncoderInitialPos(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCILinEncoderInitialPos,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCILinEncoderInitialPos(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCILinEncoderInitialPos,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderDecodingType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIEncoderDecodingType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderDecodingType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIEncoderDecodingType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderDecodingType(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderDecodingType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderAInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderAInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIEncoderAInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderAInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderAInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIEncoderAInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderAInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderAInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIEncoderAInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderAInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderAInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIEncoderAInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderAInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderAInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIEncoderAInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderAInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderAInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIEncoderAInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderAInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderBInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderBInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIEncoderBInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderBInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderBInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIEncoderBInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderBInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderBInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIEncoderBInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderBInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderBInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIEncoderBInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderBInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderBInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIEncoderBInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderBInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderBInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIEncoderBInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderBInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderZInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderZInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIEncoderZInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZInputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderZInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIEncoderZInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZInputDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderZInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIEncoderZInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZInputDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderZInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIEncoderZInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZInputDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderZInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIEncoderZInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZInputDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderZInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIEncoderZInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZInputDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZIndexEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIEncoderZIndexEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZIndexEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIEncoderZIndexEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZIndexEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZIndexEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZIndexVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIEncoderZIndexVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZIndexVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIEncoderZIndexVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZIndexVal(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZIndexVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIEncoderZIndexPhase(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIEncoderZIndexPhase,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIEncoderZIndexPhase(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIEncoderZIndexPhase,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIEncoderZIndexPhase(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIEncoderZIndexPhase,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseWidthUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPulseWidthUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseWidthUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseWidthTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseWidthTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPulseWidthTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseWidthTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseWidthStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPulseWidthStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseWidthStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseWidthDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPulseWidthDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseWidthDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseWidthDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPulseWidthDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseWidthDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseWidthDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPulseWidthDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseWidthDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseWidthDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPulseWidthDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseWidthDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseWidthDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPulseWidthDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseWidthDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITimestampUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCITimestampUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCITimestampUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCITimestampUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCITimestampUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITimestampUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCITwoEdgeSepUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCITwoEdgeSepUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepFirstTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCITwoEdgeSepFirstTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepFirstTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCITwoEdgeSepFirstEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCITwoEdgeSepFirstEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepFirstEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCITwoEdgeSepFirstDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepFirstDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepSecondTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCITwoEdgeSepSecondTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepSecondTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCITwoEdgeSepSecondEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCITwoEdgeSepSecondEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepSecondEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCITwoEdgeSepSecondDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITwoEdgeSepSecondDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCISemiPeriodUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCISemiPeriodUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCISemiPeriodUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCISemiPeriodTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCISemiPeriodTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCISemiPeriodTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCISemiPeriodTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCISemiPeriodStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCISemiPeriodStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodStartingEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCISemiPeriodStartingEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCISemiPeriodDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCISemiPeriodDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCISemiPeriodDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCISemiPeriodDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCISemiPeriodDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCISemiPeriodDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCISemiPeriodDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCISemiPeriodDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCISemiPeriodDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCISemiPeriodDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCISemiPeriodDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCISemiPeriodDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCISemiPeriodDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCISemiPeriodDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCISemiPeriodDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPulseFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseFreqTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseFreqTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPulseFreqTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseFreqTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseFreqStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPulseFreqStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseFreqStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseFreqDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPulseFreqDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseFreqDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseFreqDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPulseFreqDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseFreqDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseFreqDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPulseFreqDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseFreqDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseFreqDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPulseFreqDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseFreqDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseFreqDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPulseFreqDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseFreqDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseTimeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPulseTimeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTimeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTimeTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseTimeTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPulseTimeTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTimeTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseTimeStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPulseTimeStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTimeStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseTimeDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPulseTimeDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTimeDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseTimeDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPulseTimeDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTimeDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTimeDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPulseTimeDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTimeDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseTimeDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPulseTimeDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTimeDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseTimeDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPulseTimeDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTimeDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTicksTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseTicksTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPulseTicksTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTicksTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIPulseTicksStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIPulseTicksStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksStartEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTicksStartEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseTicksDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPulseTicksDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTicksDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseTicksDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPulseTicksDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTicksDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTicksDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIPulseTicksDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTicksDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCIPulseTicksDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCIPulseTicksDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTicksDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIPulseTicksDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIPulseTicksDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPulseTicksDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCITimestampInitialSeconds(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCITimestampInitialSeconds,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCITimestampInitialSeconds(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCITimestampInitialSeconds,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCITimestampInitialSeconds(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCITimestampInitialSeconds,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIGPSSyncMethod(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIGPSSyncMethod,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIGPSSyncMethod(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIGPSSyncMethod,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIGPSSyncMethod(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIGPSSyncMethod,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIGPSSyncSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCIGPSSyncSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCIGPSSyncSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCIGPSSyncSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCIGPSSyncSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIGPSSyncSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICtrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICtrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICtrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICtrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCICtrTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCICtrTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICtrTimebaseDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICtrTimebaseDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICtrTimebaseDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICtrTimebaseDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCICtrTimebaseDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCICtrTimebaseDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCICtrTimebaseDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCICtrTimebaseDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCICtrTimebaseDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCICtrTimebaseDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCICount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCICount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetCIOutputState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIOutputState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetCITCReached(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCITCReached,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCICtrTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCICtrTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCICtrTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIDataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIDataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCIDataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIDataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCINumPossiblyInvalidSamps(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCINumPossiblyInvalidSamps,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetCIDupCountPrevent(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCIDupCountPrevent,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCIDupCountPrevent(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCIDupCountPrevent,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCIDupCountPrevent(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIDupCountPrevent,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCIPrescaler(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCIPrescaler,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCIPrescaler(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCIPrescaler,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCIPrescaler(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCIPrescaler,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOOutputType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCOOutputType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetCOPulseIdleState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCOPulseIdleState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseIdleState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCOPulseIdleState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCOPulseIdleState(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseIdleState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCOPulseTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCOPulseTerm(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCOPulseTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCOPulseTerm(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCOPulseTimeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCOPulseTimeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCOPulseTimeUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseTimeUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseHighTime(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseHighTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseHighTime(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOPulseHighTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseHighTime(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseHighTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseLowTime(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseLowTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseLowTime(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOPulseLowTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseLowTime(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseLowTime,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseTimeInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseTimeInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseTimeInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOPulseTimeInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseTimeInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseTimeInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseDutyCyc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseDutyCyc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseDutyCyc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOPulseDutyCyc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseDutyCyc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseDutyCyc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCOPulseFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCOPulseFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCOPulseFreqUnits(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseFreqUnits,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseFreq(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOPulseFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseFreq(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseFreq,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseFreqInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOPulseFreqInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOPulseFreqInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOPulseFreqInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOPulseFreqInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseFreqInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseHighTicks(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOPulseHighTicks,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseHighTicks(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCOPulseHighTicks,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOPulseHighTicks(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseHighTicks,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseLowTicks(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOPulseLowTicks,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseLowTicks(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCOPulseLowTicks,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOPulseLowTicks(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseLowTicks,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseTicksInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOPulseTicksInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOPulseTicksInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCOPulseTicksInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOPulseTicksInitialDelay(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPulseTicksInitialDelay,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCOCtrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCOCtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCOCtrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOCtrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOCtrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCOCtrTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCOCtrTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCOCtrTimebaseDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOCtrTimebaseDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetCOCtrTimebaseDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetCOCtrTimebaseDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetCOCtrTimebaseDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCOCtrTimebaseDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCOCtrTimebaseDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxGetCOOutputState(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCOOutputState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetCOAutoIncrCnt(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOAutoIncrCnt,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOAutoIncrCnt(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCOAutoIncrCnt,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOAutoIncrCnt(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOAutoIncrCnt,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOCtrTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCOCtrTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOCtrTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPulseDone(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCOPulseDone,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCOEnableInitialDelayOnRetrigger,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCOEnableInitialDelayOnRetrigger,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOEnableInitialDelayOnRetrigger,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOConstrainedGenMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCOConstrainedGenMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCOConstrainedGenMode(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCOConstrainedGenMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCOConstrainedGenMode(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOConstrainedGenMode,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOUseOnlyOnBrdMem(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOUseOnlyOnBrdMem,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCODataXferMech(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCODataXferMech,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetCODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxSetCODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetCODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,channel,data)
end

function DAQmxResetCODataXferReqCond(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCODataXferReqCond,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOUsbXferReqSize(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOUsbXferReqSize,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOUsbXferReqCount(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOUsbXferReqCount,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxSetCOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetCOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,channel,data)
end

function DAQmxResetCOMemMapEnable(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOMemMapEnable,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCOPrescaler(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCOPrescaler,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,channel,data)
end

function DAQmxSetCOPrescaler(taskHandle::TaskHandle,channel::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetCOPrescaler,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,channel,data)
end

function DAQmxResetCOPrescaler(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetCOPrescaler,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetCORdyForNewVal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetCORdyForNewVal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetChanType(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetChanType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,channel,data)
end

function DAQmxGetPhysicalChanName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetPhysicalChanName(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetPhysicalChanName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxGetChanDescr(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetChanDescr,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,channel,data,bufferSize)
end

function DAQmxSetChanDescr(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetChanDescr,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,channel,data)
end

function DAQmxResetChanDescr(taskHandle::TaskHandle,channel::Ptr{UInt8})
    ccall((:DAQmxResetChanDescr,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,channel)
end

function DAQmxGetChanIsGlobal(taskHandle::TaskHandle,channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetChanIsGlobal,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,channel,data)
end

function DAQmxGetExportedAIConvClkOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedAIConvClkOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedAIConvClkOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedAIConvClkOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedAIConvClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIConvClkOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAIConvClkPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAIConvClkPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxGetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExported10MHzRefClkOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExported10MHzRefClkOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExported10MHzRefClkOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExported20MHzTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExported20MHzTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExported20MHzTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkOutputBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedSampClkOutputBehavior,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedSampClkOutputBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedSampClkOutputBehavior,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedSampClkOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkOutputBehavior,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedSampClkOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedSampClkOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedSampClkOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedSampClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkDelayOffset(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedSampClkDelayOffset,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedSampClkDelayOffset(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedSampClkDelayOffset,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedSampClkDelayOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkDelayOffset,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedSampClkPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedSampClkPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedSampClkPulsePolarity,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedSampClkPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkPulsePolarity,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedSampClkTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedSampClkTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedDividedSampClkTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedDividedSampClkTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDividedSampClkTimebaseOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedAdvTrigOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedAdvTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedAdvTrigOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedAdvTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvTrigPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAdvTrigPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxGetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAdvTrigPulseWidthUnits,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedAdvTrigPulseWidthUnits,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigPulseWidthUnits,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvTrigPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedAdvTrigPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedAdvTrigPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedAdvTrigPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedAdvTrigPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedPauseTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedPauseTrigOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedPauseTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedPauseTrigOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedPauseTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedPauseTrigOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedPauseTrigLvlActiveLvl,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedPauseTrigLvlActiveLvl,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedPauseTrigLvlActiveLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRefTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedRefTrigOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedRefTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedRefTrigOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedRefTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRefTrigOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRefTrigPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedRefTrigPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedRefTrigPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedRefTrigPulsePolarity,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedRefTrigPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRefTrigPulsePolarity,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedStartTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedStartTrigOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedStartTrigOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedStartTrigOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedStartTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedStartTrigOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedStartTrigPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedStartTrigPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedStartTrigPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedStartTrigPulsePolarity,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedStartTrigPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedStartTrigPulsePolarity,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedAdvCmpltEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedAdvCmpltEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvCmpltEventDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedAdvCmpltEventDelay,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedAdvCmpltEventDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedAdvCmpltEventDelay,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedAdvCmpltEventDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventDelay,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAdvCmpltEventPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedAdvCmpltEventPulsePolarity,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventPulsePolarity,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedAdvCmpltEventPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedAdvCmpltEventPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedAIHoldCmpltEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedAIHoldCmpltEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIHoldCmpltEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedAIHoldCmpltEventPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedAIHoldCmpltEventPulsePolarity,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIHoldCmpltEventPulsePolarity,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedChangeDetectEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedChangeDetectEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedChangeDetectEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedChangeDetectEventPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedChangeDetectEventPulsePolarity,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedChangeDetectEventPulsePolarity,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedCtrOutEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedCtrOutEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedCtrOutEventOutputBehavior,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedCtrOutEventOutputBehavior,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventOutputBehavior,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedCtrOutEventPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedCtrOutEventPulsePolarity,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventPulsePolarity,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedCtrOutEventToggleIdleState,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedCtrOutEventToggleIdleState,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventToggleIdleState,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedHshkEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedHshkEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedHshkEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedHshkEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventOutputBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedHshkEventOutputBehavior,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedHshkEventOutputBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedHshkEventOutputBehavior,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedHshkEventOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventOutputBehavior,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedHshkEventDelay,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedHshkEventDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedHshkEventDelay,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedHshkEventDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventDelay,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedHshkEventInterlockedAssertedLvl,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedHshkEventInterlockedAssertedLvl,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedAssertedLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetExportedHshkEventInterlockedAssertOnStart,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetExportedHshkEventInterlockedAssertOnStart,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedAssertOnStart,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedHshkEventInterlockedDeassertDelay,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedHshkEventInterlockedDeassertDelay,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedDeassertDelay,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventPulsePolarity(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedHshkEventPulsePolarity,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedHshkEventPulsePolarity(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedHshkEventPulsePolarity,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedHshkEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventPulsePolarity,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedHshkEventPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetExportedHshkEventPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetExportedHshkEventPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetExportedHshkEventPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetExportedHshkEventPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedRdyForXferEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedRdyForXferEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedRdyForXferEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedRdyForXferEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedRdyForXferEventDeassertCond,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedRdyForXferEventDeassertCond,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventDeassertCond,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetExportedRdyForXferEventDeassertCondCustomThreshold,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetExportedRdyForXferEventDeassertCondCustomThreshold,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventDeassertCondCustomThreshold,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedDataActiveEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedDataActiveEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDataActiveEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedDataActiveEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedDataActiveEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDataActiveEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedRdyForStartEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedRdyForStartEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForStartEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetExportedRdyForStartEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetExportedRdyForStartEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForStartEventLvlActiveLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedSyncPulseEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedSyncPulseEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSyncPulseEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetExportedWatchdogExpiredEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetExportedWatchdogExpiredEventOutputTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedWatchdogExpiredEventOutputTerm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDevIsSimulated(device::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDevIsSimulated,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),device,data)
end

function DAQmxGetDevProductCategory(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevProductCategory,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevProductType(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevProductType,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevProductNum(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevProductNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevSerialNum(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevSerialNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevAccessoryProductTypes(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevAccessoryProductTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevAccessoryProductNums(device::Ptr{UInt8},data::Ptr{uInt32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAccessoryProductNums,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAccessorySerialNums(device::Ptr{UInt8},data::Ptr{uInt32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAccessorySerialNums,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetCarrierSerialNum(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetCarrierSerialNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevChassisModuleDevNames(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevChassisModuleDevNames,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevAnlgTrigSupported(device::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDevAnlgTrigSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),device,data)
end

function DAQmxGetDevDigTrigSupported(device::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDevDigTrigSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),device,data)
end

function DAQmxGetDevAIPhysicalChans(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevAIPhysicalChans,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevAISupportedMeasTypes(device::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAISupportedMeasTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIMaxSingleChanRate(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevAIMaxSingleChanRate,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevAIMaxMultiChanRate(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevAIMaxMultiChanRate,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevAIMinRate(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevAIMinRate,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevAISimultaneousSamplingSupported(device::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDevAISimultaneousSamplingSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),device,data)
end

function DAQmxGetDevAISampModes(device::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAISampModes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAITrigUsage(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevAITrigUsage,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevAIVoltageRngs(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageRngs,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIVoltageIntExcitDiscreteVals(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageIntExcitDiscreteVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIVoltageIntExcitRangeVals(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageIntExcitRangeVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAICurrentRngs(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAICurrentRngs,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAICurrentIntExcitDiscreteVals(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAICurrentIntExcitDiscreteVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIBridgeRngs(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIBridgeRngs,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIResistanceRngs(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIResistanceRngs,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIFreqRngs(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIFreqRngs,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAIGains(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIGains,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAICouplings(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevAICouplings,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevAILowpassCutoffFreqDiscreteVals(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAILowpassCutoffFreqDiscreteVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAILowpassCutoffFreqRangeVals(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAILowpassCutoffFreqRangeVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOPhysicalChans(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevAOPhysicalChans,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevAOSupportedOutputTypes(device::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOSupportedOutputTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOSampClkSupported(device::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDevAOSampClkSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),device,data)
end

function DAQmxGetDevAOSampModes(device::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOSampModes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOMaxRate(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevAOMaxRate,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevAOMinRate(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevAOMinRate,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevAOTrigUsage(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevAOTrigUsage,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevAOVoltageRngs(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOVoltageRngs,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOCurrentRngs(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOCurrentRngs,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevAOGains(device::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOGains,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevDILines(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevDILines,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevDIPorts(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevDIPorts,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevDIMaxRate(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevDIMaxRate,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevDITrigUsage(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevDITrigUsage,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevDOLines(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevDOLines,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevDOPorts(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevDOPorts,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevDOMaxRate(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevDOMaxRate,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevDOTrigUsage(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevDOTrigUsage,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevCIPhysicalChans(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevCIPhysicalChans,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevCISupportedMeasTypes(device::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCISupportedMeasTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevCITrigUsage(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevCITrigUsage,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevCISampClkSupported(device::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDevCISampClkSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),device,data)
end

function DAQmxGetDevCISampModes(device::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCISampModes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevCIMaxSize(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevCIMaxSize,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevCIMaxTimebase(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevCIMaxTimebase,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevCOPhysicalChans(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevCOPhysicalChans,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevCOSupportedOutputTypes(device::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCOSupportedOutputTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevCOSampClkSupported(device::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDevCOSampClkSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),device,data)
end

function DAQmxGetDevCOSampModes(device::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCOSampModes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),device,data,arraySizeInElements)
end

function DAQmxGetDevCOTrigUsage(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevCOTrigUsage,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevCOMaxSize(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevCOMaxSize,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevCOMaxTimebase(device::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDevCOMaxTimebase,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),device,data)
end

function DAQmxGetDevTEDSHWTEDSSupported(device::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetDevTEDSHWTEDSSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),device,data)
end

function DAQmxGetDevNumDMAChans(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevNumDMAChans,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevBusType(device::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDevBusType,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),device,data)
end

function DAQmxGetDevPCIBusNum(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevPCIBusNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevPCIDevNum(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevPCIDevNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevPXIChassisNum(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevPXIChassisNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevPXISlotNum(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevPXISlotNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevCompactDAQChassisDevName(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevCompactDAQChassisDevName,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevCompactDAQSlotNum(device::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetDevCompactDAQSlotNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),device,data)
end

function DAQmxGetDevTCPIPHostname(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPHostname,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevTCPIPEthernetIP(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPEthernetIP,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevTCPIPWirelessIP(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPWirelessIP,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetDevTerminals(device::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDevTerminals,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),device,data,bufferSize)
end

function DAQmxGetReadRelativeTo(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetReadRelativeTo,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetReadRelativeTo(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetReadRelativeTo,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetReadRelativeTo(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadRelativeTo,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadOffset(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetReadOffset,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetReadOffset(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetReadOffset,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetReadOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadOffset,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadChannelsToRead(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetReadChannelsToRead,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetReadChannelsToRead(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetReadChannelsToRead,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetReadChannelsToRead(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadChannelsToRead,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadReadAllAvailSamp(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadReadAllAvailSamp,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetReadReadAllAvailSamp(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetReadReadAllAvailSamp,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetReadReadAllAvailSamp(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadReadAllAvailSamp,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadAutoStart(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadAutoStart,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetReadAutoStart(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetReadAutoStart,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetReadAutoStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadAutoStart,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadOverWrite(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetReadOverWrite,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetReadOverWrite(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetReadOverWrite,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetReadOverWrite(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadOverWrite,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadCurrReadPos(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetReadCurrReadPos,NIDAQmx),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxGetReadAvailSampPerChan(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetReadAvailSampPerChan,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetLoggingFilePath(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetLoggingFilePath,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetLoggingFilePath(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetLoggingFilePath,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetLoggingFilePath(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFilePath,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetLoggingMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetLoggingMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetLoggingMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetLoggingMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingTDMSGroupName(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetLoggingTDMSGroupName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetLoggingTDMSGroupName(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetLoggingTDMSGroupName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetLoggingTDMSGroupName(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingTDMSGroupName,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingTDMSOperation(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetLoggingTDMSOperation,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetLoggingTDMSOperation(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetLoggingTDMSOperation,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetLoggingTDMSOperation(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingTDMSOperation,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingPause(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetLoggingPause,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetLoggingPause(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetLoggingPause,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetLoggingPause(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingPause,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingSampsPerFile(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetLoggingSampsPerFile,NIDAQmx),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxSetLoggingSampsPerFile(taskHandle::TaskHandle,data::uInt64)
    ccall((:DAQmxSetLoggingSampsPerFile,NIDAQmx),int32,(TaskHandle,uInt64),taskHandle,data)
end

function DAQmxResetLoggingSampsPerFile(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingSampsPerFile,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingFileWriteSize(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetLoggingFileWriteSize,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetLoggingFileWriteSize(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetLoggingFileWriteSize,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetLoggingFileWriteSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFileWriteSize,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetLoggingFilePreallocationSize(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetLoggingFilePreallocationSize,NIDAQmx),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxSetLoggingFilePreallocationSize(taskHandle::TaskHandle,data::uInt64)
    ccall((:DAQmxSetLoggingFilePreallocationSize,NIDAQmx),int32,(TaskHandle,uInt64),taskHandle,data)
end

function DAQmxResetLoggingFilePreallocationSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFilePreallocationSize,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadTotalSampPerChanAcquired(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetReadTotalSampPerChanAcquired,NIDAQmx),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxGetReadCommonModeRangeErrorChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadCommonModeRangeErrorChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadCommonModeRangeErrorChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetReadCommonModeRangeErrorChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOvercurrentChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOvercurrentChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOvercurrentChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOvercurrentChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOvertemperatureChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOvertemperatureChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOvertemperatureChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOvertemperatureChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOpenCurrentLoopChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOpenCurrentLoopChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOpenCurrentLoopChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOpenCurrentLoopChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOpenThrmcplChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOpenThrmcplChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOpenThrmcplChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOpenThrmcplChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadOverloadedChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadOverloadedChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadOverloadedChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetReadOverloadedChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadAccessoryInsertionOrRemovalDetected(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadAccessoryInsertionOrRemovalDetected,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadDevsWithInsertedOrRemovedAccessories(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetReadDevsWithInsertedOrRemovedAccessories,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetReadChangeDetectHasOverflowed(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetReadChangeDetectHasOverflowed,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetReadRawDataWidth(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetReadRawDataWidth,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetReadNumChans(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetReadNumChans,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetReadDigitalLinesBytesPerChan(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetReadDigitalLinesBytesPerChan,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetReadWaitMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetReadWaitMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetReadWaitMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetReadWaitMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetReadWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadWaitMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetReadSleepTime(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetReadSleepTime,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetReadSleepTime(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetReadSleepTime,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetReadSleepTime(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadSleepTime,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetRealTimeConvLateErrorsToWarnings,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetRealTimeConvLateErrorsToWarnings,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeConvLateErrorsToWarnings,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeNumOfWarmupIters(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetRealTimeNumOfWarmupIters,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetRealTimeNumOfWarmupIters(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetRealTimeNumOfWarmupIters,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetRealTimeNumOfWarmupIters(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeNumOfWarmupIters,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetRealTimeWaitForNextSampClkWaitMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetRealTimeWaitForNextSampClkWaitMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeWaitForNextSampClkWaitMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeReportMissedSamp(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetRealTimeReportMissedSamp,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetRealTimeReportMissedSamp(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetRealTimeReportMissedSamp,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetRealTimeReportMissedSamp(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeReportMissedSamp,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRealTimeWriteRecoveryMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetRealTimeWriteRecoveryMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetRealTimeWriteRecoveryMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetRealTimeWriteRecoveryMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetRealTimeWriteRecoveryMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeWriteRecoveryMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSwitchChanUsage(switchChannelName::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetSwitchChanUsage,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),switchChannelName,data)
end

function DAQmxSetSwitchChanUsage(switchChannelName::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetSwitchChanUsage,NIDAQmx),int32,(Ptr{UInt8},int32),switchChannelName,data)
end

function DAQmxGetSwitchChanAnlgBusSharingEnable(switchChannelName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetSwitchChanAnlgBusSharingEnable,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),switchChannelName,data)
end

function DAQmxSetSwitchChanAnlgBusSharingEnable(switchChannelName::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetSwitchChanAnlgBusSharingEnable,NIDAQmx),int32,(Ptr{UInt8},bool32),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACCarryCurrent(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACCarryCurrent,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACSwitchCurrent(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACSwitchCurrent,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACCarryPwr(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACCarryPwr,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACSwitchPwr(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACSwitchPwr,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCCarryCurrent(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCCarryCurrent,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCSwitchCurrent(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCSwitchCurrent,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCCarryPwr(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCCarryPwr,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCSwitchPwr(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCSwitchPwr,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxACVoltage(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxACVoltage,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanMaxDCVoltage(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanMaxDCVoltage,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanWireMode(switchChannelName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchChanWireMode,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),switchChannelName,data)
end

function DAQmxGetSwitchChanBandwidth(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanBandwidth,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchChanImpedance(switchChannelName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchChanImpedance,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),switchChannelName,data)
end

function DAQmxGetSwitchDevSettlingTime(deviceName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchDevSettlingTime,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),deviceName,data)
end

function DAQmxSetSwitchDevSettlingTime(deviceName::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetSwitchDevSettlingTime,NIDAQmx),int32,(Ptr{UInt8},float64),deviceName,data)
end

function DAQmxGetSwitchDevAutoConnAnlgBus(deviceName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetSwitchDevAutoConnAnlgBus,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),deviceName,data)
end

function DAQmxSetSwitchDevAutoConnAnlgBus(deviceName::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetSwitchDevAutoConnAnlgBus,NIDAQmx),int32,(Ptr{UInt8},bool32),deviceName,data)
end

function DAQmxGetSwitchDevPwrDownLatchRelaysAfterSettling(deviceName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetSwitchDevPwrDownLatchRelaysAfterSettling,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),deviceName,data)
end

function DAQmxSetSwitchDevPwrDownLatchRelaysAfterSettling(deviceName::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetSwitchDevPwrDownLatchRelaysAfterSettling,NIDAQmx),int32,(Ptr{UInt8},bool32),deviceName,data)
end

function DAQmxGetSwitchDevSettled(deviceName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetSwitchDevSettled,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),deviceName,data)
end

function DAQmxGetSwitchDevRelayList(deviceName::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevRelayList,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),deviceName,data,bufferSize)
end

function DAQmxGetSwitchDevNumRelays(deviceName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchDevNumRelays,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetSwitchDevSwitchChanList(deviceName::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevSwitchChanList,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),deviceName,data,bufferSize)
end

function DAQmxGetSwitchDevNumSwitchChans(deviceName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchDevNumSwitchChans,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetSwitchDevNumRows(deviceName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchDevNumRows,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetSwitchDevNumColumns(deviceName::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetSwitchDevNumColumns,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),deviceName,data)
end

function DAQmxGetSwitchDevTopology(deviceName::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevTopology,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),deviceName,data,bufferSize)
end

function DAQmxGetSwitchDevTemperature(deviceName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetSwitchDevTemperature,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),deviceName,data)
end

function DAQmxGetSwitchScanBreakMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSwitchScanBreakMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSwitchScanBreakMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSwitchScanBreakMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSwitchScanBreakMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSwitchScanBreakMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSwitchScanRepeatMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSwitchScanRepeatMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSwitchScanRepeatMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSwitchScanRepeatMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSwitchScanRepeatMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSwitchScanRepeatMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSwitchScanWaitingForAdv(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetSwitchScanWaitingForAdv,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetScaleDescr(scaleName::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetScaleDescr,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),scaleName,data,bufferSize)
end

function DAQmxSetScaleDescr(scaleName::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetScaleDescr,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8}),scaleName,data)
end

function DAQmxGetScaleScaledUnits(scaleName::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetScaleScaledUnits,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),scaleName,data,bufferSize)
end

function DAQmxSetScaleScaledUnits(scaleName::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetScaleScaledUnits,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8}),scaleName,data)
end

function DAQmxGetScalePreScaledUnits(scaleName::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetScalePreScaledUnits,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),scaleName,data)
end

function DAQmxSetScalePreScaledUnits(scaleName::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetScalePreScaledUnits,NIDAQmx),int32,(Ptr{UInt8},int32),scaleName,data)
end

function DAQmxGetScaleType(scaleName::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetScaleType,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),scaleName,data)
end

function DAQmxGetScaleLinSlope(scaleName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetScaleLinSlope,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleLinSlope(scaleName::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetScaleLinSlope,NIDAQmx),int32,(Ptr{UInt8},float64),scaleName,data)
end

function DAQmxGetScaleLinYIntercept(scaleName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetScaleLinYIntercept,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleLinYIntercept(scaleName::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetScaleLinYIntercept,NIDAQmx),int32,(Ptr{UInt8},float64),scaleName,data)
end

function DAQmxGetScaleMapScaledMax(scaleName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetScaleMapScaledMax,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleMapScaledMax(scaleName::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetScaleMapScaledMax,NIDAQmx),int32,(Ptr{UInt8},float64),scaleName,data)
end

function DAQmxGetScaleMapPreScaledMax(scaleName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetScaleMapPreScaledMax,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleMapPreScaledMax(scaleName::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetScaleMapPreScaledMax,NIDAQmx),int32,(Ptr{UInt8},float64),scaleName,data)
end

function DAQmxGetScaleMapScaledMin(scaleName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetScaleMapScaledMin,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleMapScaledMin(scaleName::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetScaleMapScaledMin,NIDAQmx),int32,(Ptr{UInt8},float64),scaleName,data)
end

function DAQmxGetScaleMapPreScaledMin(scaleName::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetScaleMapPreScaledMin,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),scaleName,data)
end

function DAQmxSetScaleMapPreScaledMin(scaleName::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetScaleMapPreScaledMin,NIDAQmx),int32,(Ptr{UInt8},float64),scaleName,data)
end

function DAQmxGetScalePolyForwardCoeff(scaleName::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetScalePolyForwardCoeff,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxSetScalePolyForwardCoeff(scaleName::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetScalePolyForwardCoeff,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxGetScalePolyReverseCoeff(scaleName::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetScalePolyReverseCoeff,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxSetScalePolyReverseCoeff(scaleName::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetScalePolyReverseCoeff,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxGetScaleTableScaledVals(scaleName::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetScaleTableScaledVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxSetScaleTableScaledVals(scaleName::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetScaleTableScaledVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxGetScaleTablePreScaledVals(scaleName::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetScaleTablePreScaledVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxSetScaleTablePreScaledVals(scaleName::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxSetScaleTablePreScaledVals,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),scaleName,data,arraySizeInElements)
end

function DAQmxGetSysGlobalChans(data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSysGlobalChans,NIDAQmx),int32,(Ptr{UInt8},uInt32),data,bufferSize)
end

function DAQmxGetSysScales(data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSysScales,NIDAQmx),int32,(Ptr{UInt8},uInt32),data,bufferSize)
end

function DAQmxGetSysTasks(data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSysTasks,NIDAQmx),int32,(Ptr{UInt8},uInt32),data,bufferSize)
end

function DAQmxGetSysDevNames(data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSysDevNames,NIDAQmx),int32,(Ptr{UInt8},uInt32),data,bufferSize)
end

function DAQmxGetSysNIDAQMajorVersion(data::Ptr{uInt32})
    ccall((:DAQmxGetSysNIDAQMajorVersion,NIDAQmx),int32,(Ptr{uInt32},),data)
end

function DAQmxGetSysNIDAQMinorVersion(data::Ptr{uInt32})
    ccall((:DAQmxGetSysNIDAQMinorVersion,NIDAQmx),int32,(Ptr{uInt32},),data)
end

function DAQmxGetSysNIDAQUpdateVersion(data::Ptr{uInt32})
    ccall((:DAQmxGetSysNIDAQUpdateVersion,NIDAQmx),int32,(Ptr{uInt32},),data)
end

function DAQmxGetTaskName(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetTaskName,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetTaskChannels(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetTaskChannels,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetTaskNumChans(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetTaskNumChans,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetTaskDevices(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetTaskDevices,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetTaskNumDevices(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetTaskNumDevices,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetTaskComplete(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetTaskComplete,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetSampQuantSampMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampQuantSampMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampQuantSampMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampQuantSampMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampQuantSampMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampQuantSampMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampQuantSampPerChan(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetSampQuantSampPerChan,NIDAQmx),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxSetSampQuantSampPerChan(taskHandle::TaskHandle,data::uInt64)
    ccall((:DAQmxSetSampQuantSampPerChan,NIDAQmx),int32,(TaskHandle,uInt64),taskHandle,data)
end

function DAQmxResetSampQuantSampPerChan(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampQuantSampPerChan,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampTimingType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampTimingType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampTimingType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampTimingType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampTimingType(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampTimingType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSampClkRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSampClkRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSampClkRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkMaxRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkMaxRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxGetSampClkSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetSampClkSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetSampClkSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetSampClkSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkActiveEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkActiveEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkActiveEdge,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkActiveEdge,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkOverrunBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkOverrunBehavior,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkOverrunBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkOverrunBehavior,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkOverrunBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkOverrunBehavior,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkUnderflowBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkUnderflowBehavior,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkUnderflowBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkUnderflowBehavior,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkUnderflowBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkUnderflowBehavior,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseDiv(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetSampClkTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetSampClkTimebaseDiv(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetSampClkTimebaseDiv,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetSampClkTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseDiv,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetSampClkTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSampClkTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSampClkTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSampClkTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetSampClkTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetSampClkTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetSampClkTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseActiveEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkTimebaseActiveEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkTimebaseActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseActiveEdge,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetSampClkTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetSampClkTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseMasterTimebaseDiv,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkTimebaseTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTimebaseTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetSampClkDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetSampClkDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetSampClkDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetSampClkDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetSampClkDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSampClkDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSampClkDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetSampClkDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSampClkDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSampClkDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampClkDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetSampClkDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetSampClkDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetSampClkDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetSampClkDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetHshkDelayAfterXfer(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetHshkDelayAfterXfer,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetHshkDelayAfterXfer(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetHshkDelayAfterXfer,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetHshkDelayAfterXfer(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkDelayAfterXfer,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetHshkStartCond(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetHshkStartCond,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetHshkStartCond(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetHshkStartCond,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetHshkStartCond(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkStartCond,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetHshkSampleInputDataWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetHshkSampleInputDataWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetHshkSampleInputDataWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetHshkSampleInputDataWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetHshkSampleInputDataWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkSampleInputDataWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetChangeDetectDIRisingEdgePhysicalChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetChangeDetectDIRisingEdgePhysicalChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDIRisingEdgePhysicalChans,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetChangeDetectDIFallingEdgePhysicalChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetChangeDetectDIFallingEdgePhysicalChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDIFallingEdgePhysicalChans,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetChangeDetectDITristate(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetChangeDetectDITristate,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetChangeDetectDITristate(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetChangeDetectDITristate,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetChangeDetectDITristate(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDITristate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetOnDemandSimultaneousAOEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetOnDemandSimultaneousAOEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetOnDemandSimultaneousAOEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetImplicitUnderflowBehavior(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetImplicitUnderflowBehavior,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetImplicitUnderflowBehavior(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetImplicitUnderflowBehavior,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetImplicitUnderflowBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetImplicitUnderflowBehavior,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAIConvRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAIConvRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAIConvRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAIConvRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvRateEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIConvRateEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvRateEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIConvRateEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvRateEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvRateEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvMaxRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAIConvMaxRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxGetAIConvMaxRateEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIConvMaxRateEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxGetAIConvSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIConvSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAIConvSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAIConvSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAIConvSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIConvSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,deviceNames,data,bufferSize)
end

function DAQmxSetAIConvSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAIConvSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvActiveEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAIConvActiveEdge,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAIConvActiveEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAIConvActiveEdge,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAIConvActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvActiveEdge,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvActiveEdgeEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIConvActiveEdgeEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvActiveEdgeEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIConvActiveEdgeEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvActiveEdgeEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvActiveEdgeEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvTimebaseDiv(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetAIConvTimebaseDiv,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetAIConvTimebaseDiv(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetAIConvTimebaseDiv,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetAIConvTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvTimebaseDiv,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvTimebaseDivEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetAIConvTimebaseDivEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{uInt32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvTimebaseDivEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::uInt32)
    ccall((:DAQmxSetAIConvTimebaseDivEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvTimebaseDivEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvTimebaseDivEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvTimebaseSrc(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAIConvTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAIConvTimebaseSrc(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAIConvTimebaseSrc,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAIConvTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetAIConvTimebaseSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetAIConvTimebaseSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvTimebaseSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetDelayFromSampClkDelayUnits(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDelayFromSampClkDelayUnits,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDelayFromSampClkDelayUnits(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDelayFromSampClkDelayUnits,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDelayFromSampClkDelayUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetDelayFromSampClkDelayUnits,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetDelayFromSampClkDelayUnitsEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,deviceNames,data)
end

function DAQmxSetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetDelayFromSampClkDelayUnitsEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,deviceNames,data)
end

function DAQmxResetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetDelayFromSampClkDelayUnitsEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetDelayFromSampClkDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDelayFromSampClkDelay,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDelayFromSampClkDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDelayFromSampClkDelay,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDelayFromSampClkDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetDelayFromSampClkDelay,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDelayFromSampClkDelayEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetDelayFromSampClkDelayEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxSetDelayFromSampClkDelayEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetDelayFromSampClkDelayEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,deviceNames,data)
end

function DAQmxResetDelayFromSampClkDelayEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetDelayFromSampClkDelayEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAIConvDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAIConvDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAIConvDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAIConvDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigFltrEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIConvDigFltrEnableEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvDigFltrEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIConvDigFltrEnableEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigFltrEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvDigFltrEnableEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAIConvDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAIConvDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIConvDigFltrMinPulseWidthEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIConvDigFltrMinPulseWidthEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvDigFltrMinPulseWidthEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIConvDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAIConvDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAIConvDigFltrTimebaseSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8},uInt32),taskHandle,deviceNames,data,bufferSize)
end

function DAQmxSetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{UInt8})
    ccall((:DAQmxSetAIConvDigFltrTimebaseSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{UInt8}),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvDigFltrTimebaseSrcEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAIConvDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAIConvDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAIConvDigFltrTimebaseRateEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetAIConvDigFltrTimebaseRateEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvDigFltrTimebaseRateEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetAIConvDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAIConvDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAIConvDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAIConvDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAIConvDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAIConvDigSyncEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAIConvDigSyncEnableEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{bool32}),taskHandle,deviceNames,data)
end

function DAQmxSetAIConvDigSyncEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAIConvDigSyncEnableEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},bool32),taskHandle,deviceNames,data)
end

function DAQmxResetAIConvDigSyncEnableEx(taskHandle::TaskHandle,deviceNames::Ptr{UInt8})
    ccall((:DAQmxResetAIConvDigSyncEnableEx,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,deviceNames)
end

function DAQmxGetMasterTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetMasterTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetMasterTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetMasterTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetMasterTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetMasterTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetMasterTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetMasterTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetMasterTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetMasterTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetMasterTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetMasterTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefClkRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetRefClkRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetRefClkRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetRefClkRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetRefClkRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefClkRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefClkSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetRefClkSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetRefClkSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetRefClkSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetRefClkSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefClkSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSyncPulseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSyncPulseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetSyncPulseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetSyncPulseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetSyncPulseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSyncPulseSyncTime(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSyncPulseSyncTime,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxGetSyncPulseMinDelayToStart(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSyncPulseMinDelayToStart,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSyncPulseMinDelayToStart(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSyncPulseMinDelayToStart,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSyncPulseMinDelayToStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseMinDelayToStart,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSyncPulseResetTime(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSyncPulseResetTime,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxGetSyncPulseResetDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetSyncPulseResetDelay,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetSyncPulseResetDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetSyncPulseResetDelay,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetSyncPulseResetDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseResetDelay,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSyncPulseTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetSyncPulseTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetSyncClkInterval(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetSyncClkInterval,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetSyncClkInterval(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetSyncClkInterval,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetSyncClkInterval(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncClkInterval,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetSampTimingEngine(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetSampTimingEngine,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetSampTimingEngine(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetSampTimingEngine,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetSampTimingEngine(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampTimingEngine,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetStartTrigType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetStartTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetStartTrigType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetStartTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetStartTrigTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetDigEdgeStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigEdgeStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeStartTrigEdge,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeStartTrigEdge,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigEdge,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigPatternStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigPatternStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternStartTrigPattern(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternStartTrigPattern,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternStartTrigPattern(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigPatternStartTrigPattern,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigPatternStartTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigPattern,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternStartTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigPatternStartTrigWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigPatternStartTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigPatternStartTrigWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigPatternStartTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgEdgeStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgEdgeStartTrigSlope,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgEdgeStartTrigSlope,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigSlope,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeStartTrigLvl,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigLvl,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeStartTrigHyst,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigHyst,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigHyst,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgEdgeStartTrigCoupling,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgEdgeStartTrigCoupling,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigCoupling,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgEdgeStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgWinStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinStartTrigWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinStartTrigWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigTop(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinStartTrigTop,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigTop(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigTop,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigTop,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigBtm(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinStartTrigBtm,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigBtm(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigBtm,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigBtm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinStartTrigCoupling,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinStartTrigCoupling,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigCoupling,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetStartTrigDelay,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetStartTrigDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetStartTrigDelay,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetStartTrigDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigDelay,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigDelayUnits(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetStartTrigDelayUnits,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetStartTrigDelayUnits(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetStartTrigDelayUnits,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetStartTrigDelayUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigDelayUnits,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetStartTrigRetriggerable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetStartTrigRetriggerable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetStartTrigRetriggerable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetStartTrigRetriggerable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetStartTrigRetriggerable(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigRetriggerable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetRefTrigType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetRefTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetRefTrigType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetRefTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigPretrigSamples(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetRefTrigPretrigSamples,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxSetRefTrigPretrigSamples(taskHandle::TaskHandle,data::uInt32)
    ccall((:DAQmxSetRefTrigPretrigSamples,NIDAQmx),int32,(TaskHandle,uInt32),taskHandle,data)
end

function DAQmxResetRefTrigPretrigSamples(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigPretrigSamples,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetRefTrigTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetDigEdgeRefTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeRefTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeRefTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigEdgeRefTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeRefTrigEdge,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeRefTrigEdge,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigEdge,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternRefTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternRefTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternRefTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigPatternRefTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigPatternRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternRefTrigPattern(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternRefTrigPattern,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternRefTrigPattern(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigPatternRefTrigPattern,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigPatternRefTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigPattern,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternRefTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigPatternRefTrigWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigPatternRefTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigPatternRefTrigWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigPatternRefTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeRefTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgEdgeRefTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgEdgeRefTrigSlope,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgEdgeRefTrigSlope,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigSlope,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeRefTrigLvl,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigLvl,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeRefTrigHyst,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigHyst,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigHyst,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgEdgeRefTrigCoupling,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgEdgeRefTrigCoupling,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigCoupling,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgEdgeRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinRefTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinRefTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgWinRefTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinRefTrigWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinRefTrigWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigTop(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinRefTrigTop,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigTop(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigTop,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigTop,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigBtm(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinRefTrigBtm,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigBtm(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigBtm,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigBtm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinRefTrigCoupling,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinRefTrigCoupling,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigCoupling,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigAutoTrigEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetRefTrigAutoTrigEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetRefTrigAutoTrigEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetRefTrigAutoTrigEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetRefTrigAutoTrigEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigAutoTrigEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetRefTrigAutoTriggered(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetRefTrigAutoTriggered,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetRefTrigDelay(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetRefTrigDelay,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetRefTrigDelay(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetRefTrigDelay,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetRefTrigDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigDelay,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAdvTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAdvTrigType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAdvTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAdvTrigType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAdvTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetAdvTrigType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeAdvTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeAdvTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeAdvTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigEdgeAdvTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigEdgeAdvTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeAdvTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeAdvTrigEdge,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeAdvTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeAdvTrigEdge,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeAdvTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigEdge,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeAdvTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeAdvTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetHshkTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetHshkTrigType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetHshkTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetHshkTrigType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetHshkTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkTrigType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetInterlockedHshkTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetInterlockedHshkTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetInterlockedHshkTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetInterlockedHshkTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetInterlockedHshkTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetInterlockedHshkTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetInterlockedHshkTrigAssertedLvl,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetInterlockedHshkTrigAssertedLvl,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetInterlockedHshkTrigAssertedLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetPauseTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetPauseTrigType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetPauseTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetPauseTrigType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetPauseTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetPauseTrigType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetPauseTrigTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetPauseTrigTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgLvlPauseTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgLvlPauseTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgLvlPauseTrigWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgLvlPauseTrigWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgLvlPauseTrigLvl,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigLvl,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigLvl,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgLvlPauseTrigHyst,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigHyst,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigHyst,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgLvlPauseTrigCoupling,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgLvlPauseTrigCoupling,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigCoupling,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgLvlPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinPauseTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgWinPauseTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinPauseTrigWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinPauseTrigWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigTop(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinPauseTrigTop,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigTop(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigTop,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigTop,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigBtm(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinPauseTrigBtm,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigBtm(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigBtm,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigBtm,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetAnlgWinPauseTrigCoupling,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetAnlgWinPauseTrigCoupling,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigCoupling,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetAnlgWinPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetAnlgWinPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigLvlPauseTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigLvlPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigLvlPauseTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigLvlPauseTrigWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigLvlPauseTrigWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigLvlPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigLvlPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternPauseTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternPauseTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigPatternPauseTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigPatternPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternPauseTrigPattern(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternPauseTrigPattern,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigPatternPauseTrigPattern(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigPatternPauseTrigPattern,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigPatternPauseTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigPattern,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigPatternPauseTrigWhen(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigPatternPauseTrigWhen,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigPatternPauseTrigWhen(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigPatternPauseTrigWhen,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigPatternPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigWhen,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetArmStartTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetArmStartTrigType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetArmStartTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetArmStartTrigType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetArmStartTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetArmStartTrigType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetArmStartTerm(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetArmStartTerm,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeArmStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigEdgeArmStartTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeArmStartTrigEdge,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeArmStartTrigEdge,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigEdge,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrMinPulseWidth,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseRate,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetDigEdgeArmStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigSyncEnable,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetTriggerSyncType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetTriggerSyncType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetTriggerSyncType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetTriggerSyncType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetTriggerSyncType(taskHandle::TaskHandle)
    ccall((:DAQmxResetTriggerSyncType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWatchdogTimeout(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetWatchdogTimeout,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetWatchdogTimeout(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetWatchdogTimeout,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetWatchdogTimeout(taskHandle::TaskHandle)
    ccall((:DAQmxResetWatchdogTimeout,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWatchdogExpirTrigType(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWatchdogExpirTrigType,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWatchdogExpirTrigType(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWatchdogExpirTrigType,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWatchdogExpirTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetWatchdogExpirTrigType,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWatchdogExpirTrigTrigOnNetworkConnLoss,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetWatchdogExpirTrigTrigOnNetworkConnLoss,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle::TaskHandle)
    ccall((:DAQmxResetWatchdogExpirTrigTrigOnNetworkConnLoss,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeWatchdogExpirTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxSetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle,data::Ptr{UInt8})
    ccall((:DAQmxSetDigEdgeWatchdogExpirTrigSrc,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,data)
end

function DAQmxResetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeWatchdogExpirTrigSrc,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetDigEdgeWatchdogExpirTrigEdge,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetDigEdgeWatchdogExpirTrigEdge,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeWatchdogExpirTrigEdge,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWatchdogDOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetWatchdogDOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,lines,data)
end

function DAQmxSetWatchdogDOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetWatchdogDOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,lines,data)
end

function DAQmxResetWatchdogDOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8})
    ccall((:DAQmxResetWatchdogDOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,lines)
end

function DAQmxGetWatchdogAOOutputType(taskHandle::TaskHandle,lines::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetWatchdogAOOutputType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,lines,data)
end

function DAQmxSetWatchdogAOOutputType(taskHandle::TaskHandle,lines::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetWatchdogAOOutputType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,lines,data)
end

function DAQmxResetWatchdogAOOutputType(taskHandle::TaskHandle,lines::Ptr{UInt8})
    ccall((:DAQmxResetWatchdogAOOutputType,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,lines)
end

function DAQmxGetWatchdogAOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetWatchdogAOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{float64}),taskHandle,lines,data)
end

function DAQmxSetWatchdogAOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8},data::float64)
    ccall((:DAQmxSetWatchdogAOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},float64),taskHandle,lines,data)
end

function DAQmxResetWatchdogAOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8})
    ccall((:DAQmxResetWatchdogAOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,lines)
end

function DAQmxGetWatchdogCOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetWatchdogCOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},Ptr{int32}),taskHandle,lines,data)
end

function DAQmxSetWatchdogCOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8},data::int32)
    ccall((:DAQmxSetWatchdogCOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},int32),taskHandle,lines,data)
end

function DAQmxResetWatchdogCOExpirState(taskHandle::TaskHandle,lines::Ptr{UInt8})
    ccall((:DAQmxResetWatchdogCOExpirState,NIDAQmx),int32,(TaskHandle,Ptr{UInt8}),taskHandle,lines)
end

function DAQmxGetWatchdogHasExpired(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWatchdogHasExpired,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteRelativeTo(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWriteRelativeTo,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWriteRelativeTo(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWriteRelativeTo,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWriteRelativeTo(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteRelativeTo,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteOffset(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWriteOffset,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWriteOffset(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWriteOffset,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWriteOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteOffset,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteRegenMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWriteRegenMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWriteRegenMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWriteRegenMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWriteRegenMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteRegenMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteCurrWritePos(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetWriteCurrWritePos,NIDAQmx),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxGetWriteOvercurrentChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteOvercurrentChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteOvercurrentChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetWriteOvercurrentChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetWriteOvertemperatureChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteOvertemperatureChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteOvertemperatureChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetWriteOvertemperatureChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetWriteOverloadedChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteOverloadedChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteOverloadedChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetWriteOverloadedChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetWriteOpenCurrentLoopChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteOpenCurrentLoopChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteOpenCurrentLoopChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetWriteOpenCurrentLoopChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetWritePowerSupplyFaultChansExist(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWritePowerSupplyFaultChansExist,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWritePowerSupplyFaultChans(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetWritePowerSupplyFaultChans,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetWriteSpaceAvail(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetWriteSpaceAvail,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetWriteTotalSampPerChanGenerated(taskHandle::TaskHandle,data::Ptr{uInt64})
    ccall((:DAQmxGetWriteTotalSampPerChanGenerated,NIDAQmx),int32,(TaskHandle,Ptr{uInt64}),taskHandle,data)
end

function DAQmxGetWriteRawDataWidth(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetWriteRawDataWidth,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetWriteNumChans(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetWriteNumChans,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetWriteWaitMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetWriteWaitMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetWriteWaitMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetWriteWaitMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetWriteWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteWaitMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteSleepTime(taskHandle::TaskHandle,data::Ptr{float64})
    ccall((:DAQmxGetWriteSleepTime,NIDAQmx),int32,(TaskHandle,Ptr{float64}),taskHandle,data)
end

function DAQmxSetWriteSleepTime(taskHandle::TaskHandle,data::float64)
    ccall((:DAQmxSetWriteSleepTime,NIDAQmx),int32,(TaskHandle,float64),taskHandle,data)
end

function DAQmxResetWriteSleepTime(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteSleepTime,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteNextWriteIsLast(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteNextWriteIsLast,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxSetWriteNextWriteIsLast(taskHandle::TaskHandle,data::bool32)
    ccall((:DAQmxSetWriteNextWriteIsLast,NIDAQmx),int32,(TaskHandle,bool32),taskHandle,data)
end

function DAQmxResetWriteNextWriteIsLast(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteNextWriteIsLast,NIDAQmx),int32,(TaskHandle,),taskHandle)
end

function DAQmxGetWriteDigitalLinesBytesPerChan(taskHandle::TaskHandle,data::Ptr{uInt32})
    ccall((:DAQmxGetWriteDigitalLinesBytesPerChan,NIDAQmx),int32,(TaskHandle,Ptr{uInt32}),taskHandle,data)
end

function DAQmxGetWriteAccessoryInsertionOrRemovalDetected(taskHandle::TaskHandle,data::Ptr{bool32})
    ccall((:DAQmxGetWriteAccessoryInsertionOrRemovalDetected,NIDAQmx),int32,(TaskHandle,Ptr{bool32}),taskHandle,data)
end

function DAQmxGetWriteDevsWithInsertedOrRemovedAccessories(taskHandle::TaskHandle,data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetWriteDevsWithInsertedOrRemovedAccessories,NIDAQmx),int32,(TaskHandle,Ptr{UInt8},uInt32),taskHandle,data,bufferSize)
end

function DAQmxGetPhysicalChanAISupportedMeasTypes(physicalChannel::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanAISupportedMeasTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanAITermCfgs(physicalChannel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetPhysicalChanAITermCfgs,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanAIInputSrcs(physicalChannel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanAIInputSrcs,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),physicalChannel,data,bufferSize)
end

function DAQmxGetPhysicalChanAOSupportedOutputTypes(physicalChannel::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanAOSupportedOutputTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanAOSupportedPowerUpOutputTypes(physicalChannel::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanAOSupportedPowerUpOutputTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanAOTermCfgs(physicalChannel::Ptr{UInt8},data::Ptr{int32})
    ccall((:DAQmxGetPhysicalChanAOTermCfgs,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanAOManualControlEnable(physicalChannel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanAOManualControlEnable,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxSetPhysicalChanAOManualControlEnable(physicalChannel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetPhysicalChanAOManualControlEnable,NIDAQmx),int32,(Ptr{UInt8},bool32),physicalChannel,data)
end

function DAQmxResetPhysicalChanAOManualControlEnable(physicalChannel::Ptr{UInt8})
    ccall((:DAQmxResetPhysicalChanAOManualControlEnable,NIDAQmx),int32,(Ptr{UInt8},),physicalChannel)
end

function DAQmxGetPhysicalChanAOManualControlShortDetected(physicalChannel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanAOManualControlShortDetected,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanAOManualControlAmplitude(physicalChannel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetPhysicalChanAOManualControlAmplitude,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),physicalChannel,data)
end

function DAQmxGetPhysicalChanAOManualControlFreq(physicalChannel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetPhysicalChanAOManualControlFreq,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),physicalChannel,data)
end

function DAQmxGetAOPowerAmpChannelEnable(physicalChannel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAOPowerAmpChannelEnable,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxSetAOPowerAmpChannelEnable(physicalChannel::Ptr{UInt8},data::bool32)
    ccall((:DAQmxSetAOPowerAmpChannelEnable,NIDAQmx),int32,(Ptr{UInt8},bool32),physicalChannel,data)
end

function DAQmxResetAOPowerAmpChannelEnable(physicalChannel::Ptr{UInt8})
    ccall((:DAQmxResetAOPowerAmpChannelEnable,NIDAQmx),int32,(Ptr{UInt8},),physicalChannel)
end

function DAQmxGetAOPowerAmpScalingCoeff(physicalChannel::Ptr{UInt8},data::Ptr{float64},arraySizeInElements::uInt32)
    ccall((:DAQmxGetAOPowerAmpScalingCoeff,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetAOPowerAmpOvercurrent(physicalChannel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetAOPowerAmpOvercurrent,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetAOPowerAmpGain(physicalChannel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOPowerAmpGain,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),physicalChannel,data)
end

function DAQmxGetAOPowerAmpOffset(physicalChannel::Ptr{UInt8},data::Ptr{float64})
    ccall((:DAQmxGetAOPowerAmpOffset,NIDAQmx),int32,(Ptr{UInt8},Ptr{float64}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDIPortWidth(physicalChannel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanDIPortWidth,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDISampClkSupported(physicalChannel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanDISampClkSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDISampModes(physicalChannel::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanDISampModes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanDIChangeDetectSupported(physicalChannel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanDIChangeDetectSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDOPortWidth(physicalChannel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanDOPortWidth,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDOSampClkSupported(physicalChannel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPhysicalChanDOSampClkSupported,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanDOSampModes(physicalChannel::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanDOSampModes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanCISupportedMeasTypes(physicalChannel::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanCISupportedMeasTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanCOSupportedOutputTypes(physicalChannel::Ptr{UInt8},data::Ptr{int32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanCOSupportedOutputTypes,NIDAQmx),int32,(Ptr{UInt8},Ptr{int32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanTEDSMfgID(physicalChannel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanTEDSMfgID,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanTEDSModelNum(physicalChannel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanTEDSModelNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanTEDSSerialNum(physicalChannel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanTEDSSerialNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanTEDSVersionNum(physicalChannel::Ptr{UInt8},data::Ptr{uInt32})
    ccall((:DAQmxGetPhysicalChanTEDSVersionNum,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32}),physicalChannel,data)
end

function DAQmxGetPhysicalChanTEDSVersionLetter(physicalChannel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSVersionLetter,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),physicalChannel,data,bufferSize)
end

function DAQmxGetPhysicalChanTEDSBitStream(physicalChannel::Ptr{UInt8},data::Ptr{uInt8},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSBitStream,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt8},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPhysicalChanTEDSTemplateIDs(physicalChannel::Ptr{UInt8},data::Ptr{uInt32},arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSTemplateIDs,NIDAQmx),int32,(Ptr{UInt8},Ptr{uInt32},uInt32),physicalChannel,data,arraySizeInElements)
end

function DAQmxGetPersistedTaskAuthor(taskName::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetPersistedTaskAuthor,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),taskName,data,bufferSize)
end

function DAQmxGetPersistedTaskAllowInteractiveEditing(taskName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedTaskAllowInteractiveEditing,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),taskName,data)
end

function DAQmxGetPersistedTaskAllowInteractiveDeletion(taskName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedTaskAllowInteractiveDeletion,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),taskName,data)
end

function DAQmxGetPersistedChanAuthor(channel::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetPersistedChanAuthor,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),channel,data,bufferSize)
end

function DAQmxGetPersistedChanAllowInteractiveEditing(channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedChanAllowInteractiveEditing,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),channel,data)
end

function DAQmxGetPersistedChanAllowInteractiveDeletion(channel::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedChanAllowInteractiveDeletion,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),channel,data)
end

function DAQmxGetPersistedScaleAuthor(scaleName::Ptr{UInt8},data::Ptr{UInt8},bufferSize::uInt32)
    ccall((:DAQmxGetPersistedScaleAuthor,NIDAQmx),int32,(Ptr{UInt8},Ptr{UInt8},uInt32),scaleName,data,bufferSize)
end

function DAQmxGetPersistedScaleAllowInteractiveEditing(scaleName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedScaleAllowInteractiveEditing,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),scaleName,data)
end

function DAQmxGetPersistedScaleAllowInteractiveDeletion(scaleName::Ptr{UInt8},data::Ptr{bool32})
    ccall((:DAQmxGetPersistedScaleAllowInteractiveDeletion,NIDAQmx),int32,(Ptr{UInt8},Ptr{bool32}),scaleName,data)
end

function DAQmxGetSampClkTimingResponseMode(taskHandle::TaskHandle,data::Ptr{int32})
    ccall((:DAQmxGetSampClkTimingResponseMode,NIDAQmx),int32,(TaskHandle,Ptr{int32}),taskHandle,data)
end

function DAQmxSetSampClkTimingResponseMode(taskHandle::TaskHandle,data::int32)
    ccall((:DAQmxSetSampClkTimingResponseMode,NIDAQmx),int32,(TaskHandle,int32),taskHandle,data)
end

function DAQmxResetSampClkTimingResponseMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimingResponseMode,NIDAQmx),int32,(TaskHandle,),taskHandle)
end
