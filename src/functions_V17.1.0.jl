# Julia wrapper for header: NIDAQmx.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function DAQmxLoadTask(taskName, taskHandle)
    ccall((:DAQmxLoadTask, NIDAQmx), int32, (Ref{UInt8}, Ref{TaskHandle}), taskName, taskHandle)
end

function DAQmxCreateTask(taskName, taskHandle)
    ccall((:DAQmxCreateTask, NIDAQmx), int32, (Ref{UInt8}, Ref{TaskHandle}), taskName, taskHandle)
end

function DAQmxAddGlobalChansToTask(taskHandle::TaskHandle, channelNames)
    ccall((:DAQmxAddGlobalChansToTask, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channelNames)
end

function DAQmxStartTask(taskHandle::TaskHandle)
    ccall((:DAQmxStartTask, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxStopTask(taskHandle::TaskHandle)
    ccall((:DAQmxStopTask, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxClearTask(taskHandle::TaskHandle)
    ccall((:DAQmxClearTask, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxWaitUntilTaskDone(taskHandle::TaskHandle, timeToWait::float64)
    ccall((:DAQmxWaitUntilTaskDone, NIDAQmx), int32, (TaskHandle, float64), taskHandle, timeToWait)
end

function DAQmxWaitForValidTimestamp(taskHandle::TaskHandle, timestampEvent::int32, timeout::float64, timestamp)
    ccall((:DAQmxWaitForValidTimestamp, NIDAQmx), int32, (TaskHandle, int32, float64, Ref{CVIAbsoluteTime}), taskHandle, timestampEvent, timeout, timestamp)
end

function DAQmxIsTaskDone(taskHandle::TaskHandle, isTaskDone)
    ccall((:DAQmxIsTaskDone, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, isTaskDone)
end

function DAQmxTaskControl(taskHandle::TaskHandle, action::int32)
    ccall((:DAQmxTaskControl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, action)
end

function DAQmxGetNthTaskChannel(taskHandle::TaskHandle, index::uInt32, buffer, bufferSize::int32)
    ccall((:DAQmxGetNthTaskChannel, NIDAQmx), int32, (TaskHandle, uInt32, Ref{UInt8}, int32), taskHandle, index, buffer, bufferSize)
end

function DAQmxGetNthTaskDevice(taskHandle::TaskHandle, index::uInt32, buffer, bufferSize::int32)
    ccall((:DAQmxGetNthTaskDevice, NIDAQmx), int32, (TaskHandle, uInt32, Ref{UInt8}, int32), taskHandle, index, buffer, bufferSize)
end

function DAQmxRegisterEveryNSamplesEvent(task::TaskHandle, everyNsamplesEventType::int32, nSamples::uInt32, options::uInt32, callbackFunction::DAQmxEveryNSamplesEventCallbackPtr, callbackData)
    ccall((:DAQmxRegisterEveryNSamplesEvent, NIDAQmx), int32, (TaskHandle, int32, uInt32, uInt32, DAQmxEveryNSamplesEventCallbackPtr, Ref{Void}), task, everyNsamplesEventType, nSamples, options, callbackFunction, callbackData)
end

function DAQmxRegisterDoneEvent(task::TaskHandle, options::uInt32, callbackFunction::DAQmxDoneEventCallbackPtr, callbackData)
    ccall((:DAQmxRegisterDoneEvent, NIDAQmx), int32, (TaskHandle, uInt32, DAQmxDoneEventCallbackPtr, Ref{Void}), task, options, callbackFunction, callbackData)
end

function DAQmxRegisterSignalEvent(task::TaskHandle, signalID::int32, options::uInt32, callbackFunction::DAQmxSignalEventCallbackPtr, callbackData)
    ccall((:DAQmxRegisterSignalEvent, NIDAQmx), int32, (TaskHandle, int32, uInt32, DAQmxSignalEventCallbackPtr, Ref{Void}), task, signalID, options, callbackFunction, callbackData)
end

function DAQmxCreateAIVoltageChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, customScaleName)
    ccall((:DAQmxCreateAIVoltageChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAICurrentChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, shuntResistorLoc::int32, extShuntResistorVal::float64, customScaleName)
    ccall((:DAQmxCreateAICurrentChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
end

function DAQmxCreateAIVoltageRMSChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, customScaleName)
    ccall((:DAQmxCreateAIVoltageRMSChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAICurrentRMSChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, shuntResistorLoc::int32, extShuntResistorVal::float64, customScaleName)
    ccall((:DAQmxCreateAICurrentRMSChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
end

function DAQmxCreateAIThrmcplChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, thermocoupleType::int32, cjcSource::int32, cjcVal::float64, cjcChannel)
    ccall((:DAQmxCreateAIThrmcplChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, thermocoupleType, cjcSource, cjcVal, cjcChannel)
end

function DAQmxCreateAIRTDChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, rtdType::int32, resistanceConfig::int32, currentExcitSource::int32, currentExcitVal::float64, r0::float64)
    ccall((:DAQmxCreateAIRTDChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, int32, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, rtdType, resistanceConfig, currentExcitSource, currentExcitVal, r0)
end

function DAQmxCreateAIThrmstrChanIex(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, resistanceConfig::int32, currentExcitSource::int32, currentExcitVal::float64, a::float64, b::float64, c::float64)
    ccall((:DAQmxCreateAIThrmstrChanIex, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, a, b, c)
end

function DAQmxCreateAIThrmstrChanVex(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, resistanceConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, a::float64, b::float64, c::float64, r1::float64)
    ccall((:DAQmxCreateAIThrmstrChanVex, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, voltageExcitSource, voltageExcitVal, a, b, c, r1)
end

function DAQmxCreateAIFreqVoltageChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, thresholdLevel::float64, hysteresis::float64, customScaleName)
    ccall((:DAQmxCreateAIFreqVoltageChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, float64, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, thresholdLevel, hysteresis, customScaleName)
end

function DAQmxCreateAIResistanceChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, resistanceConfig::int32, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateAIResistanceChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIStrainGageChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, strainConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, gageFactor::float64, initialBridgeVoltage::float64, nominalGageResistance::float64, poissonRatio::float64, leadWireResistance::float64, customScaleName)
    ccall((:DAQmxCreateAIStrainGageChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, float64, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, strainConfig, voltageExcitSource, voltageExcitVal, gageFactor, initialBridgeVoltage, nominalGageResistance, poissonRatio, leadWireResistance, customScaleName)
end

function DAQmxCreateAIRosetteStrainGageChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, rosetteType::int32, gageOrientation::float64, rosetteMeasTypes, numRosetteMeasTypes::uInt32, strainConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, gageFactor::float64, nominalGageResistance::float64, poissonRatio::float64, leadWireResistance::float64)
    ccall((:DAQmxCreateAIRosetteStrainGageChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, float64, Ref{int32}, uInt32, int32, int32, float64, float64, float64, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, rosetteType, gageOrientation, rosetteMeasTypes, numRosetteMeasTypes, strainConfig, voltageExcitSource, voltageExcitVal, gageFactor, nominalGageResistance, poissonRatio, leadWireResistance)
end

function DAQmxCreateAIForceBridgeTwoPointLinChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, firstElectricalVal::float64, secondElectricalVal::float64, electricalUnits::int32, firstPhysicalVal::float64, secondPhysicalVal::float64, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAIForceBridgeTwoPointLinChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
end

function DAQmxCreateAIForceBridgeTableChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, electricalVals, numElectricalVals::uInt32, electricalUnits::int32, physicalVals, numPhysicalVals::uInt32, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAIForceBridgeTableChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ref{float64}, uInt32, int32, Ref{float64}, uInt32, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
end

function DAQmxCreateAIForceBridgePolynomialChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, forwardCoeffs, numForwardCoeffs::uInt32, reverseCoeffs, numReverseCoeffs::uInt32, electricalUnits::int32, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAIForceBridgePolynomialChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ref{float64}, uInt32, Ref{float64}, uInt32, int32, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
end

function DAQmxCreateAIPressureBridgeTwoPointLinChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, firstElectricalVal::float64, secondElectricalVal::float64, electricalUnits::int32, firstPhysicalVal::float64, secondPhysicalVal::float64, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAIPressureBridgeTwoPointLinChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
end

function DAQmxCreateAIPressureBridgeTableChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, electricalVals, numElectricalVals::uInt32, electricalUnits::int32, physicalVals, numPhysicalVals::uInt32, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAIPressureBridgeTableChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ref{float64}, uInt32, int32, Ref{float64}, uInt32, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
end

function DAQmxCreateAIPressureBridgePolynomialChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, forwardCoeffs, numForwardCoeffs::uInt32, reverseCoeffs, numReverseCoeffs::uInt32, electricalUnits::int32, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAIPressureBridgePolynomialChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ref{float64}, uInt32, Ref{float64}, uInt32, int32, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
end

function DAQmxCreateAITorqueBridgeTwoPointLinChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, firstElectricalVal::float64, secondElectricalVal::float64, electricalUnits::int32, firstPhysicalVal::float64, secondPhysicalVal::float64, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAITorqueBridgeTwoPointLinChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
end

function DAQmxCreateAITorqueBridgeTableChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, electricalVals, numElectricalVals::uInt32, electricalUnits::int32, physicalVals, numPhysicalVals::uInt32, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAITorqueBridgeTableChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ref{float64}, uInt32, int32, Ref{float64}, uInt32, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
end

function DAQmxCreateAITorqueBridgePolynomialChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, forwardCoeffs, numForwardCoeffs::uInt32, reverseCoeffs, numReverseCoeffs::uInt32, electricalUnits::int32, physicalUnits::int32, customScaleName)
    ccall((:DAQmxCreateAITorqueBridgePolynomialChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ref{float64}, uInt32, Ref{float64}, uInt32, int32, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
end

function DAQmxCreateAIBridgeChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, nominalBridgeResistance::float64, customScaleName)
    ccall((:DAQmxCreateAIBridgeChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, customScaleName)
end

function DAQmxCreateAIVoltageChanWithExcit(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, bridgeConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, useExcitForScaling::bool32, customScaleName)
    ccall((:DAQmxCreateAIVoltageChanWithExcit, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, int32, int32, float64, bool32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, useExcitForScaling, customScaleName)
end

function DAQmxCreateAITempBuiltInSensorChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, units::int32)
    ccall((:DAQmxCreateAITempBuiltInSensorChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32), taskHandle, physicalChannel, nameToAssignToChannel, units)
end

function DAQmxCreateAIAccelChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, sensitivity::float64, sensitivityUnits::int32, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateAIAccelChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIVelocityIEPEChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, sensitivity::float64, sensitivityUnits::int32, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateAIVelocityIEPEChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIForceIEPEChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, sensitivity::float64, sensitivityUnits::int32, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateAIForceIEPEChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIMicrophoneChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, units::int32, micSensitivity::float64, maxSndPressLevel::float64, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateAIMicrophoneChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, int32, float64, float64, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, units, micSensitivity, maxSndPressLevel, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIChargeChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, customScaleName)
    ccall((:DAQmxCreateAIChargeChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAIAccelChargeChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, sensitivity::float64, sensitivityUnits::int32, customScaleName)
    ccall((:DAQmxCreateAIAccelChargeChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, customScaleName)
end

function DAQmxCreateAIAccel4WireDCVoltageChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, sensitivity::float64, sensitivityUnits::int32, voltageExcitSource::int32, voltageExcitVal::float64, useExcitForScaling::bool32, customScaleName)
    ccall((:DAQmxCreateAIAccel4WireDCVoltageChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, float64, int32, int32, float64, bool32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, useExcitForScaling, customScaleName)
end

function DAQmxCreateAIPosLVDTChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, sensitivity::float64, sensitivityUnits::int32, voltageExcitSource::int32, voltageExcitVal::float64, voltageExcitFreq::float64, ACExcitWireMode::int32, customScaleName)
    ccall((:DAQmxCreateAIPosLVDTChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, float64, int32, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
end

function DAQmxCreateAIPosRVDTChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, sensitivity::float64, sensitivityUnits::int32, voltageExcitSource::int32, voltageExcitVal::float64, voltageExcitFreq::float64, ACExcitWireMode::int32, customScaleName)
    ccall((:DAQmxCreateAIPosRVDTChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, float64, int32, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
end

function DAQmxCreateAIPosEddyCurrProxProbeChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, sensitivity::float64, sensitivityUnits::int32, customScaleName)
    ccall((:DAQmxCreateAIPosEddyCurrProxProbeChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, customScaleName)
end

function DAQmxCreateAIDeviceTempChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, units::int32)
    ccall((:DAQmxCreateAIDeviceTempChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32), taskHandle, physicalChannel, nameToAssignToChannel, units)
end

function DAQmxCreateTEDSAIVoltageChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, customScaleName)
    ccall((:DAQmxCreateTEDSAIVoltageChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateTEDSAICurrentChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, shuntResistorLoc::int32, extShuntResistorVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAICurrentChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
end

function DAQmxCreateTEDSAIThrmcplChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, cjcSource::int32, cjcVal::float64, cjcChannel)
    ccall((:DAQmxCreateTEDSAIThrmcplChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, cjcSource, cjcVal, cjcChannel)
end

function DAQmxCreateTEDSAIRTDChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, resistanceConfig::int32, currentExcitSource::int32, currentExcitVal::float64)
    ccall((:DAQmxCreateTEDSAIRTDChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal)
end

function DAQmxCreateTEDSAIThrmstrChanIex(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, resistanceConfig::int32, currentExcitSource::int32, currentExcitVal::float64)
    ccall((:DAQmxCreateTEDSAIThrmstrChanIex, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal)
end

function DAQmxCreateTEDSAIThrmstrChanVex(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, resistanceConfig::int32, voltageExcitSource::int32, voltageExcitVal::float64, r1::float64)
    ccall((:DAQmxCreateTEDSAIThrmstrChanVex, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, voltageExcitSource, voltageExcitVal, r1)
end

function DAQmxCreateTEDSAIResistanceChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, resistanceConfig::int32, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIResistanceChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIStrainGageChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, voltageExcitSource::int32, voltageExcitVal::float64, initialBridgeVoltage::float64, leadWireResistance::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIStrainGageChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, float64, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, initialBridgeVoltage, leadWireResistance, customScaleName)
end

function DAQmxCreateTEDSAIForceBridgeChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, voltageExcitSource::int32, voltageExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIForceBridgeChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIPressureBridgeChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, voltageExcitSource::int32, voltageExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIPressureBridgeChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAITorqueBridgeChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, voltageExcitSource::int32, voltageExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAITorqueBridgeChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIBridgeChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, voltageExcitSource::int32, voltageExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIBridgeChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIVoltageChanWithExcit(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, voltageExcitSource::int32, voltageExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIVoltageChanWithExcit, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIAccelChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIAccelChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIForceIEPEChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, minVal::float64, maxVal::float64, units::int32, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIForceIEPEChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIMicrophoneChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, terminalConfig::int32, units::int32, maxSndPressLevel::float64, currentExcitSource::int32, currentExcitVal::float64, customScaleName)
    ccall((:DAQmxCreateTEDSAIMicrophoneChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, int32, float64, int32, float64, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, units, maxSndPressLevel, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIPosLVDTChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, voltageExcitSource::int32, voltageExcitVal::float64, voltageExcitFreq::float64, ACExcitWireMode::int32, customScaleName)
    ccall((:DAQmxCreateTEDSAIPosLVDTChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
end

function DAQmxCreateTEDSAIPosRVDTChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, voltageExcitSource::int32, voltageExcitVal::float64, voltageExcitFreq::float64, ACExcitWireMode::int32, customScaleName)
    ccall((:DAQmxCreateTEDSAIPosRVDTChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
end

function DAQmxCreateAOVoltageChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, customScaleName)
    ccall((:DAQmxCreateAOVoltageChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAOCurrentChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, customScaleName)
    ccall((:DAQmxCreateAOCurrentChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, Ref{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAOFuncGenChan(taskHandle::TaskHandle, physicalChannel, nameToAssignToChannel, _type::int32, freq::float64, amplitude::float64, offset::float64)
    ccall((:DAQmxCreateAOFuncGenChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, float64, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, _type, freq, amplitude, offset)
end

function DAQmxCreateDIChan(taskHandle::TaskHandle, lines, nameToAssignToLines, lineGrouping::int32)
    ccall((:DAQmxCreateDIChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32), taskHandle, lines, nameToAssignToLines, lineGrouping)
end

function DAQmxCreateDOChan(taskHandle::TaskHandle, lines, nameToAssignToLines, lineGrouping::int32)
    ccall((:DAQmxCreateDOChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32), taskHandle, lines, nameToAssignToLines, lineGrouping)
end

function DAQmxCreateCIFreqChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, edge::int32, measMethod::int32, measTime::float64, divisor::uInt32, customScaleName)
    ccall((:DAQmxCreateCIFreqChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, uInt32, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, edge, measMethod, measTime, divisor, customScaleName)
end

function DAQmxCreateCIPeriodChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, edge::int32, measMethod::int32, measTime::float64, divisor::uInt32, customScaleName)
    ccall((:DAQmxCreateCIPeriodChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, float64, uInt32, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, edge, measMethod, measTime, divisor, customScaleName)
end

function DAQmxCreateCICountEdgesChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, edge::int32, initialCount::uInt32, countDirection::int32)
    ccall((:DAQmxCreateCICountEdgesChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, uInt32, int32), taskHandle, counter, nameToAssignToChannel, edge, initialCount, countDirection)
end

function DAQmxCreateCIDutyCycleChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, minFreq::float64, maxFreq::float64, edge::int32, customScaleName)
    ccall((:DAQmxCreateCIDutyCycleChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, minFreq, maxFreq, edge, customScaleName)
end

function DAQmxCreateCIPulseWidthChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, startingEdge::int32, customScaleName)
    ccall((:DAQmxCreateCIPulseWidthChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, startingEdge, customScaleName)
end

function DAQmxCreateCISemiPeriodChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, customScaleName)
    ccall((:DAQmxCreateCISemiPeriodChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateCITwoEdgeSepChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32, firstEdge::int32, secondEdge::int32, customScaleName)
    ccall((:DAQmxCreateCITwoEdgeSepChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, int32, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, firstEdge, secondEdge, customScaleName)
end

function DAQmxCreateCIPulseChanFreq(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32)
    ccall((:DAQmxCreateCIPulseChanFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units)
end

function DAQmxCreateCIPulseChanTime(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, units::int32)
    ccall((:DAQmxCreateCIPulseChanTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units)
end

function DAQmxCreateCIPulseChanTicks(taskHandle::TaskHandle, counter, nameToAssignToChannel, sourceTerminal, minVal::float64, maxVal::float64)
    ccall((:DAQmxCreateCIPulseChanTicks, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, Ref{UInt8}, float64, float64), taskHandle, counter, nameToAssignToChannel, sourceTerminal, minVal, maxVal)
end

function DAQmxCreateCILinEncoderChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, decodingType::int32, ZidxEnable::bool32, ZidxVal::float64, ZidxPhase::int32, units::int32, distPerPulse::float64, initialPos::float64, customScaleName)
    ccall((:DAQmxCreateCILinEncoderChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, bool32, float64, int32, int32, float64, float64, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, decodingType, ZidxEnable, ZidxVal, ZidxPhase, units, distPerPulse, initialPos, customScaleName)
end

function DAQmxCreateCIAngEncoderChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, decodingType::int32, ZidxEnable::bool32, ZidxVal::float64, ZidxPhase::int32, units::int32, pulsesPerRev::uInt32, initialAngle::float64, customScaleName)
    ccall((:DAQmxCreateCIAngEncoderChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, bool32, float64, int32, int32, uInt32, float64, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, decodingType, ZidxEnable, ZidxVal, ZidxPhase, units, pulsesPerRev, initialAngle, customScaleName)
end

function DAQmxCreateCILinVelocityChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, decodingType::int32, units::int32, distPerPulse::float64, customScaleName)
    ccall((:DAQmxCreateCILinVelocityChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, float64, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, decodingType, units, distPerPulse, customScaleName)
end

function DAQmxCreateCIAngVelocityChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, minVal::float64, maxVal::float64, decodingType::int32, units::int32, pulsesPerRev::uInt32, customScaleName)
    ccall((:DAQmxCreateCIAngVelocityChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, float64, float64, int32, int32, uInt32, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, decodingType, units, pulsesPerRev, customScaleName)
end

function DAQmxCreateCIGPSTimestampChan(taskHandle::TaskHandle, counter, nameToAssignToChannel, units::int32, syncMethod::int32, customScaleName)
    ccall((:DAQmxCreateCIGPSTimestampChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, int32, Ref{UInt8}), taskHandle, counter, nameToAssignToChannel, units, syncMethod, customScaleName)
end

function DAQmxCreateCOPulseChanFreq(taskHandle::TaskHandle, counter, nameToAssignToChannel, units::int32, idleState::int32, initialDelay::float64, freq::float64, dutyCycle::float64)
    ccall((:DAQmxCreateCOPulseChanFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, int32, float64, float64, float64), taskHandle, counter, nameToAssignToChannel, units, idleState, initialDelay, freq, dutyCycle)
end

function DAQmxCreateCOPulseChanTime(taskHandle::TaskHandle, counter, nameToAssignToChannel, units::int32, idleState::int32, initialDelay::float64, lowTime::float64, highTime::float64)
    ccall((:DAQmxCreateCOPulseChanTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, int32, float64, float64, float64), taskHandle, counter, nameToAssignToChannel, units, idleState, initialDelay, lowTime, highTime)
end

function DAQmxCreateCOPulseChanTicks(taskHandle::TaskHandle, counter, nameToAssignToChannel, sourceTerminal, idleState::int32, initialDelay::int32, lowTicks::int32, highTicks::int32)
    ccall((:DAQmxCreateCOPulseChanTicks, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, Ref{UInt8}, int32, int32, int32, int32), taskHandle, counter, nameToAssignToChannel, sourceTerminal, idleState, initialDelay, lowTicks, highTicks)
end

function DAQmxGetAIChanCalCalDate(taskHandle::TaskHandle, channelName, year, month, day, hour, minute)
    ccall((:DAQmxGetAIChanCalCalDate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}), taskHandle, channelName, year, month, day, hour, minute)
end

function DAQmxSetAIChanCalCalDate(taskHandle::TaskHandle, channelName, year::uInt32, month::uInt32, day::uInt32, hour::uInt32, minute::uInt32)
    ccall((:DAQmxSetAIChanCalCalDate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32, uInt32, uInt32, uInt32, uInt32), taskHandle, channelName, year, month, day, hour, minute)
end

function DAQmxGetAIChanCalExpDate(taskHandle::TaskHandle, channelName, year, month, day, hour, minute)
    ccall((:DAQmxGetAIChanCalExpDate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}), taskHandle, channelName, year, month, day, hour, minute)
end

function DAQmxSetAIChanCalExpDate(taskHandle::TaskHandle, channelName, year::uInt32, month::uInt32, day::uInt32, hour::uInt32, minute::uInt32)
    ccall((:DAQmxSetAIChanCalExpDate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32, uInt32, uInt32, uInt32, uInt32), taskHandle, channelName, year, month, day, hour, minute)
end

function DAQmxResetChanAttribute(taskHandle::TaskHandle, channel, attribute::int32)
    ccall((:DAQmxResetChanAttribute, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, attribute)
end

function DAQmxCfgSampClkTiming(taskHandle::TaskHandle, source, rate::float64, activeEdge::int32, sampleMode::int32, sampsPerChan::uInt64)
    ccall((:DAQmxCfgSampClkTiming, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64, int32, int32, uInt64), taskHandle, source, rate, activeEdge, sampleMode, sampsPerChan)
end

function DAQmxCfgHandshakingTiming(taskHandle::TaskHandle, sampleMode::int32, sampsPerChan::uInt64)
    ccall((:DAQmxCfgHandshakingTiming, NIDAQmx), int32, (TaskHandle, int32, uInt64), taskHandle, sampleMode, sampsPerChan)
end

function DAQmxCfgBurstHandshakingTimingImportClock(taskHandle::TaskHandle, sampleMode::int32, sampsPerChan::uInt64, sampleClkRate::float64, sampleClkSrc, sampleClkActiveEdge::int32, pauseWhen::int32, readyEventActiveLevel::int32)
    ccall((:DAQmxCfgBurstHandshakingTimingImportClock, NIDAQmx), int32, (TaskHandle, int32, uInt64, float64, Ref{UInt8}, int32, int32, int32), taskHandle, sampleMode, sampsPerChan, sampleClkRate, sampleClkSrc, sampleClkActiveEdge, pauseWhen, readyEventActiveLevel)
end

function DAQmxCfgBurstHandshakingTimingExportClock(taskHandle::TaskHandle, sampleMode::int32, sampsPerChan::uInt64, sampleClkRate::float64, sampleClkOutpTerm, sampleClkPulsePolarity::int32, pauseWhen::int32, readyEventActiveLevel::int32)
    ccall((:DAQmxCfgBurstHandshakingTimingExportClock, NIDAQmx), int32, (TaskHandle, int32, uInt64, float64, Ref{UInt8}, int32, int32, int32), taskHandle, sampleMode, sampsPerChan, sampleClkRate, sampleClkOutpTerm, sampleClkPulsePolarity, pauseWhen, readyEventActiveLevel)
end

function DAQmxCfgChangeDetectionTiming(taskHandle::TaskHandle, risingEdgeChan, fallingEdgeChan, sampleMode::int32, sampsPerChan::uInt64)
    ccall((:DAQmxCfgChangeDetectionTiming, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, uInt64), taskHandle, risingEdgeChan, fallingEdgeChan, sampleMode, sampsPerChan)
end

function DAQmxCfgImplicitTiming(taskHandle::TaskHandle, sampleMode::int32, sampsPerChan::uInt64)
    ccall((:DAQmxCfgImplicitTiming, NIDAQmx), int32, (TaskHandle, int32, uInt64), taskHandle, sampleMode, sampsPerChan)
end

function DAQmxCfgPipelinedSampClkTiming(taskHandle::TaskHandle, source, rate::float64, activeEdge::int32, sampleMode::int32, sampsPerChan::uInt64)
    ccall((:DAQmxCfgPipelinedSampClkTiming, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64, int32, int32, uInt64), taskHandle, source, rate, activeEdge, sampleMode, sampsPerChan)
end

function DAQmxResetTimingAttribute(taskHandle::TaskHandle, attribute::int32)
    ccall((:DAQmxResetTimingAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxResetTimingAttributeEx(taskHandle::TaskHandle, deviceNames, attribute::int32)
    ccall((:DAQmxResetTimingAttributeEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, deviceNames, attribute)
end

function DAQmxDisableStartTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableStartTrig, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxCfgDigEdgeStartTrig(taskHandle::TaskHandle, triggerSource, triggerEdge::int32)
    ccall((:DAQmxCfgDigEdgeStartTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, triggerSource, triggerEdge)
end

function DAQmxCfgAnlgEdgeStartTrig(taskHandle::TaskHandle, triggerSource, triggerSlope::int32, triggerLevel::float64)
    ccall((:DAQmxCfgAnlgEdgeStartTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32, float64), taskHandle, triggerSource, triggerSlope, triggerLevel)
end

function DAQmxCfgAnlgMultiEdgeStartTrig(taskHandle::TaskHandle, triggerSources, triggerSlopeArray, triggerLevelArray, arraySize::uInt32)
    ccall((:DAQmxCfgAnlgMultiEdgeStartTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}, Ref{float64}, uInt32), taskHandle, triggerSources, triggerSlopeArray, triggerLevelArray, arraySize)
end

function DAQmxCfgAnlgWindowStartTrig(taskHandle::TaskHandle, triggerSource, triggerWhen::int32, windowTop::float64, windowBottom::float64)
    ccall((:DAQmxCfgAnlgWindowStartTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32, float64, float64), taskHandle, triggerSource, triggerWhen, windowTop, windowBottom)
end

function DAQmxCfgTimeStartTrig(taskHandle::TaskHandle, when::CVIAbsoluteTime, timescale::int32)
    ccall((:DAQmxCfgTimeStartTrig, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime, int32), taskHandle, when, timescale)
end

function DAQmxCfgDigPatternStartTrig(taskHandle::TaskHandle, triggerSource, triggerPattern, triggerWhen::int32)
    ccall((:DAQmxCfgDigPatternStartTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32), taskHandle, triggerSource, triggerPattern, triggerWhen)
end

function DAQmxDisableRefTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableRefTrig, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxCfgDigEdgeRefTrig(taskHandle::TaskHandle, triggerSource, triggerEdge::int32, pretriggerSamples::uInt32)
    ccall((:DAQmxCfgDigEdgeRefTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32, uInt32), taskHandle, triggerSource, triggerEdge, pretriggerSamples)
end

function DAQmxCfgAnlgEdgeRefTrig(taskHandle::TaskHandle, triggerSource, triggerSlope::int32, triggerLevel::float64, pretriggerSamples::uInt32)
    ccall((:DAQmxCfgAnlgEdgeRefTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32, float64, uInt32), taskHandle, triggerSource, triggerSlope, triggerLevel, pretriggerSamples)
end

function DAQmxCfgAnlgMultiEdgeRefTrig(taskHandle::TaskHandle, triggerSources, triggerSlopeArray, triggerLevelArray, pretriggerSamples::uInt32, arraySize::uInt32)
    ccall((:DAQmxCfgAnlgMultiEdgeRefTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}, Ref{float64}, uInt32, uInt32), taskHandle, triggerSources, triggerSlopeArray, triggerLevelArray, pretriggerSamples, arraySize)
end

function DAQmxCfgAnlgWindowRefTrig(taskHandle::TaskHandle, triggerSource, triggerWhen::int32, windowTop::float64, windowBottom::float64, pretriggerSamples::uInt32)
    ccall((:DAQmxCfgAnlgWindowRefTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32, float64, float64, uInt32), taskHandle, triggerSource, triggerWhen, windowTop, windowBottom, pretriggerSamples)
end

function DAQmxCfgDigPatternRefTrig(taskHandle::TaskHandle, triggerSource, triggerPattern, triggerWhen::int32, pretriggerSamples::uInt32)
    ccall((:DAQmxCfgDigPatternRefTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, int32, uInt32), taskHandle, triggerSource, triggerPattern, triggerWhen, pretriggerSamples)
end

function DAQmxResetTrigAttribute(taskHandle::TaskHandle, attribute::int32)
    ccall((:DAQmxResetTrigAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxReadAnalogF64(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadAnalogF64, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{float64}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadAnalogScalarF64(taskHandle::TaskHandle, timeout::float64, value, reserved)
    ccall((:DAQmxReadAnalogScalarF64, NIDAQmx), int32, (TaskHandle, float64, Ref{float64}, Ref{bool32}), taskHandle, timeout, value, reserved)
end

function DAQmxReadBinaryI16(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadBinaryI16, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{int16}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadBinaryU16(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadBinaryU16, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{uInt16}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadBinaryI32(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadBinaryI32, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{int32}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadBinaryU32(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadBinaryU32, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{uInt32}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadDigitalU8(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadDigitalU8, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{uInt8}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadDigitalU16(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadDigitalU16, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{uInt16}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadDigitalU32(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadDigitalU32, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{uInt32}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadDigitalScalarU32(taskHandle::TaskHandle, timeout::float64, value, reserved)
    ccall((:DAQmxReadDigitalScalarU32, NIDAQmx), int32, (TaskHandle, float64, Ref{uInt32}, Ref{bool32}), taskHandle, timeout, value, reserved)
end

function DAQmxReadDigitalLines(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInBytes::uInt32, sampsPerChanRead, numBytesPerSamp, reserved)
    ccall((:DAQmxReadDigitalLines, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{uInt8}, uInt32, Ref{int32}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInBytes, sampsPerChanRead, numBytesPerSamp, reserved)
end

function DAQmxReadCounterF64(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadCounterF64, NIDAQmx), int32, (TaskHandle, int32, float64, Ref{float64}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCounterU32(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadCounterU32, NIDAQmx), int32, (TaskHandle, int32, float64, Ref{uInt32}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCounterF64Ex(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadCounterF64Ex, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{float64}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCounterU32Ex(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, fillMode::bool32, readArray, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadCounterU32Ex, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{uInt32}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCounterScalarF64(taskHandle::TaskHandle, timeout::float64, value, reserved)
    ccall((:DAQmxReadCounterScalarF64, NIDAQmx), int32, (TaskHandle, float64, Ref{float64}, Ref{bool32}), taskHandle, timeout, value, reserved)
end

function DAQmxReadCounterScalarU32(taskHandle::TaskHandle, timeout::float64, value, reserved)
    ccall((:DAQmxReadCounterScalarU32, NIDAQmx), int32, (TaskHandle, float64, Ref{uInt32}, Ref{bool32}), taskHandle, timeout, value, reserved)
end

function DAQmxReadCtrFreq(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, interleaved::bool32, readArrayFrequency, readArrayDutyCycle, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadCtrFreq, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{float64}, Ref{float64}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, interleaved, readArrayFrequency, readArrayDutyCycle, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCtrTime(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, interleaved::bool32, readArrayHighTime, readArrayLowTime, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadCtrTime, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{float64}, Ref{float64}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, interleaved, readArrayHighTime, readArrayLowTime, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCtrTicks(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, interleaved::bool32, readArrayHighTicks, readArrayLowTicks, arraySizeInSamps::uInt32, sampsPerChanRead, reserved)
    ccall((:DAQmxReadCtrTicks, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ref{uInt32}, Ref{uInt32}, uInt32, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, interleaved, readArrayHighTicks, readArrayLowTicks, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCtrFreqScalar(taskHandle::TaskHandle, timeout::float64, frequency, dutyCycle, reserved)
    ccall((:DAQmxReadCtrFreqScalar, NIDAQmx), int32, (TaskHandle, float64, Ref{float64}, Ref{float64}, Ref{bool32}), taskHandle, timeout, frequency, dutyCycle, reserved)
end

function DAQmxReadCtrTimeScalar(taskHandle::TaskHandle, timeout::float64, highTime, lowTime, reserved)
    ccall((:DAQmxReadCtrTimeScalar, NIDAQmx), int32, (TaskHandle, float64, Ref{float64}, Ref{float64}, Ref{bool32}), taskHandle, timeout, highTime, lowTime, reserved)
end

function DAQmxReadCtrTicksScalar(taskHandle::TaskHandle, timeout::float64, highTicks, lowTicks, reserved)
    ccall((:DAQmxReadCtrTicksScalar, NIDAQmx), int32, (TaskHandle, float64, Ref{uInt32}, Ref{uInt32}, Ref{bool32}), taskHandle, timeout, highTicks, lowTicks, reserved)
end

function DAQmxReadRaw(taskHandle::TaskHandle, numSampsPerChan::int32, timeout::float64, readArray, arraySizeInBytes::uInt32, sampsRead, numBytesPerSamp, reserved)
    ccall((:DAQmxReadRaw, NIDAQmx), int32, (TaskHandle, int32, float64, Ref{Void}, uInt32, Ref{int32}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, timeout, readArray, arraySizeInBytes, sampsRead, numBytesPerSamp, reserved)
end

function DAQmxGetNthTaskReadChannel(taskHandle::TaskHandle, index::uInt32, buffer, bufferSize::int32)
    ccall((:DAQmxGetNthTaskReadChannel, NIDAQmx), int32, (TaskHandle, uInt32, Ref{UInt8}, int32), taskHandle, index, buffer, bufferSize)
end

function DAQmxResetReadAttribute(taskHandle::TaskHandle, attribute::int32)
    ccall((:DAQmxResetReadAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxConfigureLogging(taskHandle::TaskHandle, filePath, loggingMode::int32, groupName, operation::int32)
    ccall((:DAQmxConfigureLogging, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32, Ref{UInt8}, int32), taskHandle, filePath, loggingMode, groupName, operation)
end

function DAQmxStartNewFile(taskHandle::TaskHandle, filePath)
    ccall((:DAQmxStartNewFile, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, filePath)
end

function DAQmxWriteAnalogF64(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteAnalogF64, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{float64}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteAnalogScalarF64(taskHandle::TaskHandle, autoStart::bool32, timeout::float64, value::float64, reserved)
    ccall((:DAQmxWriteAnalogScalarF64, NIDAQmx), int32, (TaskHandle, bool32, float64, float64, Ref{bool32}), taskHandle, autoStart, timeout, value, reserved)
end

function DAQmxWriteBinaryI16(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteBinaryI16, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{int16}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteBinaryU16(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteBinaryU16, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{uInt16}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteBinaryI32(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteBinaryI32, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{int32}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteBinaryU32(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteBinaryU32, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{uInt32}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteDigitalU8(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteDigitalU8, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{uInt8}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteDigitalU16(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteDigitalU16, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{uInt16}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteDigitalU32(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteDigitalU32, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{uInt32}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteDigitalScalarU32(taskHandle::TaskHandle, autoStart::bool32, timeout::float64, value::uInt32, reserved)
    ccall((:DAQmxWriteDigitalScalarU32, NIDAQmx), int32, (TaskHandle, bool32, float64, uInt32, Ref{bool32}), taskHandle, autoStart, timeout, value, reserved)
end

function DAQmxWriteDigitalLines(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteDigitalLines, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{uInt8}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteCtrFreq(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, frequency, dutyCycle, numSampsPerChanWritten, reserved)
    ccall((:DAQmxWriteCtrFreq, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{float64}, Ref{float64}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, frequency, dutyCycle, numSampsPerChanWritten, reserved)
end

function DAQmxWriteCtrFreqScalar(taskHandle::TaskHandle, autoStart::bool32, timeout::float64, frequency::float64, dutyCycle::float64, reserved)
    ccall((:DAQmxWriteCtrFreqScalar, NIDAQmx), int32, (TaskHandle, bool32, float64, float64, float64, Ref{bool32}), taskHandle, autoStart, timeout, frequency, dutyCycle, reserved)
end

function DAQmxWriteCtrTime(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, highTime, lowTime, numSampsPerChanWritten, reserved)
    ccall((:DAQmxWriteCtrTime, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{float64}, Ref{float64}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, highTime, lowTime, numSampsPerChanWritten, reserved)
end

function DAQmxWriteCtrTimeScalar(taskHandle::TaskHandle, autoStart::bool32, timeout::float64, highTime::float64, lowTime::float64, reserved)
    ccall((:DAQmxWriteCtrTimeScalar, NIDAQmx), int32, (TaskHandle, bool32, float64, float64, float64, Ref{bool32}), taskHandle, autoStart, timeout, highTime, lowTime, reserved)
end

function DAQmxWriteCtrTicks(taskHandle::TaskHandle, numSampsPerChan::int32, autoStart::bool32, timeout::float64, dataLayout::bool32, highTicks, lowTicks, numSampsPerChanWritten, reserved)
    ccall((:DAQmxWriteCtrTicks, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ref{uInt32}, Ref{uInt32}, Ref{int32}, Ref{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, highTicks, lowTicks, numSampsPerChanWritten, reserved)
end

function DAQmxWriteCtrTicksScalar(taskHandle::TaskHandle, autoStart::bool32, timeout::float64, highTicks::uInt32, lowTicks::uInt32, reserved)
    ccall((:DAQmxWriteCtrTicksScalar, NIDAQmx), int32, (TaskHandle, bool32, float64, uInt32, uInt32, Ref{bool32}), taskHandle, autoStart, timeout, highTicks, lowTicks, reserved)
end

function DAQmxWriteRaw(taskHandle::TaskHandle, numSamps::int32, autoStart::bool32, timeout::float64, writeArray, sampsPerChanWritten, reserved)
    ccall((:DAQmxWriteRaw, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, Ref{Void}, Ref{int32}, Ref{bool32}), taskHandle, numSamps, autoStart, timeout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxResetWriteAttribute(taskHandle::TaskHandle, attribute::int32)
    ccall((:DAQmxResetWriteAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxExportSignal(taskHandle::TaskHandle, signalID::int32, outputTerminal)
    ccall((:DAQmxExportSignal, NIDAQmx), int32, (TaskHandle, int32, Ref{UInt8}), taskHandle, signalID, outputTerminal)
end

function DAQmxResetExportedSignalAttribute(taskHandle::TaskHandle, attribute::int32)
    ccall((:DAQmxResetExportedSignalAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxCreateLinScale(name, slope::float64, yIntercept::float64, preScaledUnits::int32, scaledUnits)
    ccall((:DAQmxCreateLinScale, NIDAQmx), int32, (Ref{UInt8}, float64, float64, int32, Ref{UInt8}), name, slope, yIntercept, preScaledUnits, scaledUnits)
end

function DAQmxCreateMapScale(name, prescaledMin::float64, prescaledMax::float64, scaledMin::float64, scaledMax::float64, preScaledUnits::int32, scaledUnits)
    ccall((:DAQmxCreateMapScale, NIDAQmx), int32, (Ref{UInt8}, float64, float64, float64, float64, int32, Ref{UInt8}), name, prescaledMin, prescaledMax, scaledMin, scaledMax, preScaledUnits, scaledUnits)
end

function DAQmxCreatePolynomialScale(name, forwardCoeffs, numForwardCoeffsIn::uInt32, reverseCoeffs, numReverseCoeffsIn::uInt32, preScaledUnits::int32, scaledUnits)
    ccall((:DAQmxCreatePolynomialScale, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32, Ref{float64}, uInt32, int32, Ref{UInt8}), name, forwardCoeffs, numForwardCoeffsIn, reverseCoeffs, numReverseCoeffsIn, preScaledUnits, scaledUnits)
end

function DAQmxCreateTableScale(name, prescaledVals, numPrescaledValsIn::uInt32, scaledVals, numScaledValsIn::uInt32, preScaledUnits::int32, scaledUnits)
    ccall((:DAQmxCreateTableScale, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32, Ref{float64}, uInt32, int32, Ref{UInt8}), name, prescaledVals, numPrescaledValsIn, scaledVals, numScaledValsIn, preScaledUnits, scaledUnits)
end

function DAQmxCalculateReversePolyCoeff(forwardCoeffs, numForwardCoeffsIn::uInt32, minValX::float64, maxValX::float64, numPointsToCompute::int32, reversePolyOrder::int32, reverseCoeffs)
    ccall((:DAQmxCalculateReversePolyCoeff, NIDAQmx), int32, (Ref{float64}, uInt32, float64, float64, int32, int32, Ref{float64}), forwardCoeffs, numForwardCoeffsIn, minValX, maxValX, numPointsToCompute, reversePolyOrder, reverseCoeffs)
end

function DAQmxCfgInputBuffer(taskHandle::TaskHandle, numSampsPerChan::uInt32)
    ccall((:DAQmxCfgInputBuffer, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, numSampsPerChan)
end

function DAQmxCfgOutputBuffer(taskHandle::TaskHandle, numSampsPerChan::uInt32)
    ccall((:DAQmxCfgOutputBuffer, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, numSampsPerChan)
end

function DAQmxGetBufferAttribute(taskHandle::TaskHandle, attribute::int32, value)
    ccall((:DAQmxGetBufferAttribute, NIDAQmx), int32, (TaskHandle, int32, Ref{Void}), taskHandle, attribute, value)
end

function DAQmxResetBufferAttribute(taskHandle::TaskHandle, attribute::int32)
    ccall((:DAQmxResetBufferAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxSwitchCreateScanList(scanList, taskHandle)
    ccall((:DAQmxSwitchCreateScanList, NIDAQmx), int32, (Ref{UInt8}, Ref{TaskHandle}), scanList, taskHandle)
end

function DAQmxSwitchConnect(switchChannel1, switchChannel2, waitForSettling::bool32)
    ccall((:DAQmxSwitchConnect, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, bool32), switchChannel1, switchChannel2, waitForSettling)
end

function DAQmxSwitchConnectMulti(connectionList, waitForSettling::bool32)
    ccall((:DAQmxSwitchConnectMulti, NIDAQmx), int32, (Ref{UInt8}, bool32), connectionList, waitForSettling)
end

function DAQmxSwitchDisconnect(switchChannel1, switchChannel2, waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnect, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, bool32), switchChannel1, switchChannel2, waitForSettling)
end

function DAQmxSwitchDisconnectMulti(connectionList, waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnectMulti, NIDAQmx), int32, (Ref{UInt8}, bool32), connectionList, waitForSettling)
end

function DAQmxSwitchDisconnectAll(deviceName, waitForSettling::bool32)
    ccall((:DAQmxSwitchDisconnectAll, NIDAQmx), int32, (Ref{UInt8}, bool32), deviceName, waitForSettling)
end

function DAQmxSwitchSetTopologyAndReset(deviceName, newTopology)
    ccall((:DAQmxSwitchSetTopologyAndReset, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}), deviceName, newTopology)
end

function DAQmxSwitchFindPath(switchChannel1, switchChannel2, path, pathBufferSize::uInt32, pathStatus)
    ccall((:DAQmxSwitchFindPath, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, Ref{UInt8}, uInt32, Ref{int32}), switchChannel1, switchChannel2, path, pathBufferSize, pathStatus)
end

function DAQmxSwitchOpenRelays(relayList, waitForSettling::bool32)
    ccall((:DAQmxSwitchOpenRelays, NIDAQmx), int32, (Ref{UInt8}, bool32), relayList, waitForSettling)
end

function DAQmxSwitchCloseRelays(relayList, waitForSettling::bool32)
    ccall((:DAQmxSwitchCloseRelays, NIDAQmx), int32, (Ref{UInt8}, bool32), relayList, waitForSettling)
end

function DAQmxSwitchGetSingleRelayCount(relayName, count)
    ccall((:DAQmxSwitchGetSingleRelayCount, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), relayName, count)
end

function DAQmxSwitchGetMultiRelayCount(relayList, count, countArraySize::uInt32, numRelayCountsRead)
    ccall((:DAQmxSwitchGetMultiRelayCount, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}, uInt32, Ref{uInt32}), relayList, count, countArraySize, numRelayCountsRead)
end

function DAQmxSwitchGetSingleRelayPos(relayName, relayPos)
    ccall((:DAQmxSwitchGetSingleRelayPos, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), relayName, relayPos)
end

function DAQmxSwitchGetMultiRelayPos(relayList, relayPos, relayPosArraySize::uInt32, numRelayPossRead)
    ccall((:DAQmxSwitchGetMultiRelayPos, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}, uInt32, Ref{uInt32}), relayList, relayPos, relayPosArraySize, numRelayPossRead)
end

function DAQmxSwitchWaitForSettling(deviceName)
    ccall((:DAQmxSwitchWaitForSettling, NIDAQmx), int32, (Ref{UInt8},), deviceName)
end

function DAQmxGetSwitchChanAttribute(switchChannelName, attribute::int32, value)
    ccall((:DAQmxGetSwitchChanAttribute, NIDAQmx), int32, (Ref{UInt8}, int32, Ref{Void}), switchChannelName, attribute, value)
end

function DAQmxGetSwitchScanAttribute(taskHandle::TaskHandle, attribute::int32, value)
    ccall((:DAQmxGetSwitchScanAttribute, NIDAQmx), int32, (TaskHandle, int32, Ref{Void}), taskHandle, attribute, value)
end

function DAQmxResetSwitchScanAttribute(taskHandle::TaskHandle, attribute::int32)
    ccall((:DAQmxResetSwitchScanAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxDisableAdvTrig(taskHandle::TaskHandle)
    ccall((:DAQmxDisableAdvTrig, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxCfgDigEdgeAdvTrig(taskHandle::TaskHandle, triggerSource, triggerEdge::int32)
    ccall((:DAQmxCfgDigEdgeAdvTrig, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, triggerSource, triggerEdge)
end

function DAQmxSendSoftwareTrigger(taskHandle::TaskHandle, triggerID::int32)
    ccall((:DAQmxSendSoftwareTrigger, NIDAQmx), int32, (TaskHandle, int32), taskHandle, triggerID)
end

function DAQmxConnectTerms(sourceTerminal, destinationTerminal, signalModifiers::int32)
    ccall((:DAQmxConnectTerms, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, int32), sourceTerminal, destinationTerminal, signalModifiers)
end

function DAQmxDisconnectTerms(sourceTerminal, destinationTerminal)
    ccall((:DAQmxDisconnectTerms, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}), sourceTerminal, destinationTerminal)
end

function DAQmxTristateOutputTerm(outputTerminal)
    ccall((:DAQmxTristateOutputTerm, NIDAQmx), int32, (Ref{UInt8},), outputTerminal)
end

function DAQmxResetDevice(deviceName)
    ccall((:DAQmxResetDevice, NIDAQmx), int32, (Ref{UInt8},), deviceName)
end

function DAQmxSelfTestDevice(deviceName)
    ccall((:DAQmxSelfTestDevice, NIDAQmx), int32, (Ref{UInt8},), deviceName)
end

function DAQmxCreateWatchdogTimerTaskEx(deviceName, taskName, taskHandle, timeout::float64)
    ccall((:DAQmxCreateWatchdogTimerTaskEx, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, Ref{TaskHandle}, float64), deviceName, taskName, taskHandle, timeout)
end

function DAQmxControlWatchdogTask(taskHandle::TaskHandle, action::int32)
    ccall((:DAQmxControlWatchdogTask, NIDAQmx), int32, (TaskHandle, int32), taskHandle, action)
end

function DAQmxCfgWatchdogAOExpirStates(taskHandle::TaskHandle, channelNames, expirStateArray, outputTypeArray, arraySize::uInt32)
    ccall((:DAQmxCfgWatchdogAOExpirStates, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, Ref{int32}, uInt32), taskHandle, channelNames, expirStateArray, outputTypeArray, arraySize)
end

function DAQmxCfgWatchdogCOExpirStates(taskHandle::TaskHandle, channelNames, expirStateArray, arraySize::uInt32)
    ccall((:DAQmxCfgWatchdogCOExpirStates, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}, uInt32), taskHandle, channelNames, expirStateArray, arraySize)
end

function DAQmxCfgWatchdogDOExpirStates(taskHandle::TaskHandle, channelNames, expirStateArray, arraySize::uInt32)
    ccall((:DAQmxCfgWatchdogDOExpirStates, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}, uInt32), taskHandle, channelNames, expirStateArray, arraySize)
end

function DAQmxResetWatchdogAttribute(taskHandle::TaskHandle, lines, attribute::int32)
    ccall((:DAQmxResetWatchdogAttribute, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, lines, attribute)
end

function DAQmxSelfCal(deviceName)
    ccall((:DAQmxSelfCal, NIDAQmx), int32, (Ref{UInt8},), deviceName)
end

function DAQmxPerformBridgeOffsetNullingCal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxPerformBridgeOffsetNullingCal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxPerformBridgeOffsetNullingCalEx(taskHandle::TaskHandle, channel, skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformBridgeOffsetNullingCalEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, skipUnsupportedChannels)
end

function DAQmxPerformThrmcplLeadOffsetNullingCal(taskHandle::TaskHandle, channel, skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformThrmcplLeadOffsetNullingCal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, skipUnsupportedChannels)
end

function DAQmxPerformStrainShuntCal(taskHandle::TaskHandle, channel, shuntResistorValue::float64, shuntResistorLocation::int32, skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformStrainShuntCal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64, int32, bool32), taskHandle, channel, shuntResistorValue, shuntResistorLocation, skipUnsupportedChannels)
end

function DAQmxPerformStrainShuntCalEx(taskHandle::TaskHandle, channel, shuntResistorValue::float64, shuntResistorLocation::int32, shuntResistorSelect::int32, shuntResistorSource::int32, skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformStrainShuntCalEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64, int32, int32, int32, bool32), taskHandle, channel, shuntResistorValue, shuntResistorLocation, shuntResistorSelect, shuntResistorSource, skipUnsupportedChannels)
end

function DAQmxPerformBridgeShuntCal(taskHandle::TaskHandle, channel, shuntResistorValue::float64, shuntResistorLocation::int32, bridgeResistance::float64, skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformBridgeShuntCal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64, int32, float64, bool32), taskHandle, channel, shuntResistorValue, shuntResistorLocation, bridgeResistance, skipUnsupportedChannels)
end

function DAQmxPerformBridgeShuntCalEx(taskHandle::TaskHandle, channel, shuntResistorValue::float64, shuntResistorLocation::int32, shuntResistorSelect::int32, shuntResistorSource::int32, bridgeResistance::float64, skipUnsupportedChannels::bool32)
    ccall((:DAQmxPerformBridgeShuntCalEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64, int32, int32, int32, float64, bool32), taskHandle, channel, shuntResistorValue, shuntResistorLocation, shuntResistorSelect, shuntResistorSource, bridgeResistance, skipUnsupportedChannels)
end

function DAQmxGetSelfCalLastDateAndTime(deviceName, year, month, day, hour, minute)
    ccall((:DAQmxGetSelfCalLastDateAndTime, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}), deviceName, year, month, day, hour, minute)
end

function DAQmxGetExtCalLastDateAndTime(deviceName, year, month, day, hour, minute)
    ccall((:DAQmxGetExtCalLastDateAndTime, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}, Ref{uInt32}), deviceName, year, month, day, hour, minute)
end

function DAQmxRestoreLastExtCalConst(deviceName)
    ccall((:DAQmxRestoreLastExtCalConst, NIDAQmx), int32, (Ref{UInt8},), deviceName)
end

function DAQmxESeriesCalAdjust(calHandle::CalHandle, referenceVoltage::float64)
    ccall((:DAQmxESeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxMSeriesCalAdjust(calHandle::CalHandle, referenceVoltage::float64)
    ccall((:DAQmxMSeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxSSeriesCalAdjust(calHandle::CalHandle, referenceVoltage::float64)
    ccall((:DAQmxSSeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxSCBaseboardCalAdjust(calHandle::CalHandle, referenceVoltage::float64)
    ccall((:DAQmxSCBaseboardCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxAOSeriesCalAdjust(calHandle::CalHandle, referenceVoltage::float64)
    ccall((:DAQmxAOSeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxXSeriesCalAdjust(calHandle::CalHandle, referenceVoltage::float64)
    ccall((:DAQmxXSeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxDeviceSupportsCal(deviceName, calSupported)
    ccall((:DAQmxDeviceSupportsCal, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), deviceName, calSupported)
end

function DAQmxInitExtCal(deviceName, password, calHandle)
    ccall((:DAQmxInitExtCal, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, Ref{CalHandle}), deviceName, password, calHandle)
end

function DAQmxCloseExtCal(calHandle::CalHandle, action::int32)
    ccall((:DAQmxCloseExtCal, NIDAQmx), int32, (CalHandle, int32), calHandle, action)
end

function DAQmxChangeExtCalPassword(deviceName, password, newPassword)
    ccall((:DAQmxChangeExtCalPassword, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, Ref{UInt8}), deviceName, password, newPassword)
end

function DAQmxDSASetCalTemp(calHandle::CalHandle, temperature::float64)
    ccall((:DAQmxDSASetCalTemp, NIDAQmx), int32, (CalHandle, float64), calHandle, temperature)
end

function DAQmxAdjustDSAAICal(calHandle::CalHandle, referenceVoltage::float64)
    ccall((:DAQmxAdjustDSAAICal, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxAdjustDSAAICalEx(calHandle::CalHandle, referenceVoltage::float64, inputsShorted::bool32)
    ccall((:DAQmxAdjustDSAAICalEx, NIDAQmx), int32, (CalHandle, float64, bool32), calHandle, referenceVoltage, inputsShorted)
end

function DAQmxAdjustDSAAICalWithGainAndCoupling(calHandle::CalHandle, coupling::int32, gain::float64, referenceVoltage::float64)
    ccall((:DAQmxAdjustDSAAICalWithGainAndCoupling, NIDAQmx), int32, (CalHandle, int32, float64, float64), calHandle, coupling, gain, referenceVoltage)
end

function DAQmxAdjustDSAAOCal(calHandle::CalHandle, channel::uInt32, requestedLowVoltage::float64, actualLowVoltage::float64, requestedHighVoltage::float64, actualHighVoltage::float64, gainSetting::float64)
    ccall((:DAQmxAdjustDSAAOCal, NIDAQmx), int32, (CalHandle, uInt32, float64, float64, float64, float64, float64), calHandle, channel, requestedLowVoltage, actualLowVoltage, requestedHighVoltage, actualHighVoltage, gainSetting)
end

function DAQmxAdjust4610Cal(calHandle::CalHandle, channelName, gain::float64, offset::float64)
    ccall((:DAQmxAdjust4610Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelName, gain, offset)
end

function DAQmxAdjustDSATimebaseCal(calHandle::CalHandle, referenceFrequency::float64)
    ccall((:DAQmxAdjustDSATimebaseCal, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceFrequency)
end

function DAQmxAdjustDSAAOTimebaseCal(calHandle::CalHandle, measuredFrequency::float64, calComplete)
    ccall((:DAQmxAdjustDSAAOTimebaseCal, NIDAQmx), int32, (CalHandle, float64, Ref{bool32}), calHandle, measuredFrequency, calComplete)
end

function DAQmxSetupDSAAOTimebaseCal(calHandle::CalHandle, expectedFrequency)
    ccall((:DAQmxSetupDSAAOTimebaseCal, NIDAQmx), int32, (CalHandle, Ref{float64}), calHandle, expectedFrequency)
end

function DAQmxGet4463AdjustPoints(calHandle::CalHandle, terminalConfig::int32, gain::float64, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet4463AdjustPoints, NIDAQmx), int32, (CalHandle, int32, float64, Ref{float64}, uInt32), calHandle, terminalConfig, gain, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4463Cal(calHandle::CalHandle, channelNames, referenceVoltage::float64)
    ccall((:DAQmxAdjust4463Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, referenceVoltage)
end

function DAQmxSetup4463Cal(calHandle::CalHandle, channelNames, terminalConfig::int32, gain::float64, outputVoltage::float64)
    ccall((:DAQmxSetup4463Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32, float64, float64), calHandle, channelNames, terminalConfig, gain, outputVoltage)
end

function DAQmxSetup4480Cal(calHandle::CalHandle, channelNames, calMode::int32)
    ccall((:DAQmxSetup4480Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32), calHandle, channelNames, calMode)
end

function DAQmxAdjustTIOTimebaseCal(calHandle::CalHandle, referenceFrequency::float64)
    ccall((:DAQmxAdjustTIOTimebaseCal, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceFrequency)
end

function DAQmxAdjust4204Cal(calHandle::CalHandle, channelNames, lowPassFreq::float64, trackHoldEnabled::bool32, inputVal::float64)
    ccall((:DAQmxAdjust4204Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, bool32, float64), calHandle, channelNames, lowPassFreq, trackHoldEnabled, inputVal)
end

function DAQmxAdjust4220Cal(calHandle::CalHandle, channelNames, gain::float64, inputVal::float64)
    ccall((:DAQmxAdjust4220Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelNames, gain, inputVal)
end

function DAQmxAdjust4224Cal(calHandle::CalHandle, channelNames, gain::float64, inputVal::float64)
    ccall((:DAQmxAdjust4224Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelNames, gain, inputVal)
end

function DAQmxAdjust4225Cal(calHandle::CalHandle, channelNames, gain::float64, inputVal::float64)
    ccall((:DAQmxAdjust4225Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelNames, gain, inputVal)
end

function DAQmxSetup433xCal(calHandle::CalHandle, channelNames, excitationVoltage::float64)
    ccall((:DAQmxSetup433xCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, excitationVoltage)
end

function DAQmxAdjust433xCal(calHandle::CalHandle, refVoltage::float64, refExcitation::float64, shuntLocation::int32)
    ccall((:DAQmxAdjust433xCal, NIDAQmx), int32, (CalHandle, float64, float64, int32), calHandle, refVoltage, refExcitation, shuntLocation)
end

function DAQmxSetup4339Cal(calHandle::CalHandle, channelNames, calMode::int32, rangeMax::float64, rangeMin::float64, excitationVoltage::float64)
    ccall((:DAQmxSetup4339Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32, float64, float64, float64), calHandle, channelNames, calMode, rangeMax, rangeMin, excitationVoltage)
end

function DAQmxAdjust4339Cal(calHandle::CalHandle, refVoltage::float64)
    ccall((:DAQmxAdjust4339Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxGet4339CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet4339CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4300Cal(calHandle::CalHandle, refVoltage::float64)
    ccall((:DAQmxAdjust4300Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxSetup4302Cal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64)
    ccall((:DAQmxSetup4302Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxGet4302CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet4302CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4302Cal(calHandle::CalHandle, refVoltage::float64)
    ccall((:DAQmxAdjust4302Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxSetup4303Cal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64)
    ccall((:DAQmxSetup4303Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxGet4303CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet4303CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4303Cal(calHandle::CalHandle, refVoltage::float64)
    ccall((:DAQmxAdjust4303Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxSetup4304Cal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64)
    ccall((:DAQmxSetup4304Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxGet4304CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet4304CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4304Cal(calHandle::CalHandle, refVoltage::float64)
    ccall((:DAQmxAdjust4304Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxSetup4305Cal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64)
    ccall((:DAQmxSetup4305Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxGet4305CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet4305CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4305Cal(calHandle::CalHandle, refVoltage::float64)
    ccall((:DAQmxAdjust4305Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxAdjust4309Cal(calHandle::CalHandle, refVoltage::float64)
    ccall((:DAQmxAdjust4309Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxAdjust4310Cal(calHandle::CalHandle, refVoltage::float64)
    ccall((:DAQmxAdjust4310Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxAdjust4353Cal(calHandle::CalHandle, channelNames, refVal::float64)
    ccall((:DAQmxAdjust4353Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, refVal)
end

function DAQmxAdjust4357Cal(calHandle::CalHandle, channelNames, refVals, numRefVals::int32)
    ccall((:DAQmxAdjust4357Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, Ref{float64}, int32), calHandle, channelNames, refVals, numRefVals)
end

function DAQmxSetup4322Cal(calHandle::CalHandle, channelNames, outputType::int32, outputVal::float64)
    ccall((:DAQmxSetup4322Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32, float64), calHandle, channelNames, outputType, outputVal)
end

function DAQmxAdjust4322Cal(calHandle::CalHandle, channelNames, refVal::float64)
    ccall((:DAQmxAdjust4322Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, refVal)
end

function DAQmxGet4322CalAdjustPoints(calHandle::CalHandle, outputType::int32, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet4322CalAdjustPoints, NIDAQmx), int32, (CalHandle, int32, Ref{float64}, uInt32), calHandle, outputType, adjustmentPoints, bufferSize)
end

function DAQmxConnectSCExpressCalAccChans(calHandle::CalHandle, channelNames, connection)
    ccall((:DAQmxConnectSCExpressCalAccChans, NIDAQmx), int32, (CalHandle, Ref{UInt8}, Ref{UInt8}), calHandle, channelNames, connection)
end

function DAQmxDisconnectSCExpressCalAccChans(calHandle::CalHandle)
    ccall((:DAQmxDisconnectSCExpressCalAccChans, NIDAQmx), int32, (CalHandle,), calHandle)
end

function DAQmxGetPossibleSCExpressCalAccConnections(deviceName, channelNames, connections, connectionsBufferSize::uInt32)
    ccall((:DAQmxGetPossibleSCExpressCalAccConnections, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, Cstring, uInt32), deviceName, channelNames, connections, connectionsBufferSize)
end

function DAQmxSetSCExpressCalAccBridgeOutput(calHandle::CalHandle, voltsPerVolt::float64)
    ccall((:DAQmxSetSCExpressCalAccBridgeOutput, NIDAQmx), int32, (CalHandle, float64), calHandle, voltsPerVolt)
end

function DAQmxGet9201CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9201CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxCSeriesSetCalTemp(calHandle::CalHandle, temperature::float64)
    ccall((:DAQmxCSeriesSetCalTemp, NIDAQmx), int32, (CalHandle, float64), calHandle, temperature)
end

function DAQmxAdjust9201Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9201Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9203CalAdjustPoints(calHandle::CalHandle, rangeMin::float64, rangeMax::float64, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9203CalAdjustPoints, NIDAQmx), int32, (CalHandle, float64, float64, Ref{float64}, uInt32), calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9203GainCal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64, value::float64)
    ccall((:DAQmxAdjust9203GainCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64, float64), calHandle, channelNames, rangeMin, rangeMax, value)
end

function DAQmxAdjust9203OffsetCal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64)
    ccall((:DAQmxAdjust9203OffsetCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxAdjust9205Cal(calHandle::CalHandle, value::float64)
    ccall((:DAQmxAdjust9205Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, value)
end

function DAQmxAdjust9206Cal(calHandle::CalHandle, value::float64)
    ccall((:DAQmxAdjust9206Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, value)
end

function DAQmxGet9207CalAdjustPoints(calHandle::CalHandle, channelNames, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9207CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{UInt8}, Ref{float64}, uInt32), calHandle, channelNames, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9207GainCal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9207GainCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9207OffsetCal(calHandle::CalHandle, channelNames)
    ccall((:DAQmxAdjust9207OffsetCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}), calHandle, channelNames)
end

function DAQmxGet9208CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9208CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9208GainCal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9208GainCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9208OffsetCal(calHandle::CalHandle, channelNames)
    ccall((:DAQmxAdjust9208OffsetCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}), calHandle, channelNames)
end

function DAQmxGet9209CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9209CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9209GainCal(calHandle::CalHandle, channelNames, terminalConfig::int32, value::float64)
    ccall((:DAQmxAdjust9209GainCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32, float64), calHandle, channelNames, terminalConfig, value)
end

function DAQmxAdjust9209OffsetCal(calHandle::CalHandle, channelNames)
    ccall((:DAQmxAdjust9209OffsetCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}), calHandle, channelNames)
end

function DAQmxAdjust9210Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9210Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9211Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9211Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9212CalAdjustPoints(calHandle::CalHandle, channelNames, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9212CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{UInt8}, Ref{float64}, uInt32), calHandle, channelNames, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9212Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9212Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9213CalAdjustPoints(calHandle::CalHandle, rangeMin::float64, rangeMax::float64, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9213CalAdjustPoints, NIDAQmx), int32, (CalHandle, float64, float64, Ref{float64}, uInt32), calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9213Cal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64, value::float64)
    ccall((:DAQmxAdjust9213Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64, float64), calHandle, channelNames, rangeMin, rangeMax, value)
end

function DAQmxGet9214CalAdjustPoints(calHandle::CalHandle, channelNames, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9214CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{UInt8}, Ref{float64}, uInt32), calHandle, channelNames, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9214Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9214Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9215CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9215CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9215Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9215Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9216CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9216CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9216Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9216Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9217CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9217CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9217Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9217Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxSetup9218Cal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64, measType::int32)
    ccall((:DAQmxSetup9218Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64, int32), calHandle, channelNames, rangeMin, rangeMax, measType)
end

function DAQmxGet9218CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9218CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9218Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9218Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxSetup9219Cal(calHandle::CalHandle, channelNames, rangeMin::float64, rangeMax::float64, measType::int32, bridgeConfig::int32)
    ccall((:DAQmxSetup9219Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64, int32, int32), calHandle, channelNames, rangeMin, rangeMax, measType, bridgeConfig)
end

function DAQmxGet9219CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9219CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9219Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9219Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9220CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9220CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9220Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9220Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9221CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9221CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9221Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9221Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9222CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9222CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9222Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9222Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9223CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9223CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9223Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9223Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9224CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9224CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9224Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9224Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9225CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9225CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9225Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9225Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9226CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9226CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9226Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9226Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9227CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9227CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9227Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9227Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9228CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9228CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9228Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9228Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9229CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9229CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9229Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9229Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9230CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9230CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9230Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9230Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9232CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9232CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9232Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9232Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9234CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9234CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9234GainCal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9234GainCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9234OffsetCal(calHandle::CalHandle, channelNames)
    ccall((:DAQmxAdjust9234OffsetCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}), calHandle, channelNames)
end

function DAQmxGet9238CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9238CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9238Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9238Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9239CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9239CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9239Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9239Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9242CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9242CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9242Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxSetup9242Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9242Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9242Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9244CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9244CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9244Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxSetup9244Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9244Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9244Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9246CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9246CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9246Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9246Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9247CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9247CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9247Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9247Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9250CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9250CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9250Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9250Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9251CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9251CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9251Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9251Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9260CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9260CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9260Cal(calHandle::CalHandle, channelNames, value::int32)
    ccall((:DAQmxSetup9260Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9260Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9260Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9263CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9263CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9263Cal(calHandle::CalHandle, channelNames, value::int32)
    ccall((:DAQmxSetup9263Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9263Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9263Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9264CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9264CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9264Cal(calHandle::CalHandle, channelNames, value::int32)
    ccall((:DAQmxSetup9264Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9264Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9264Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9265CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9265CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9265Cal(calHandle::CalHandle, channelNames, value::int32)
    ccall((:DAQmxSetup9265Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9265Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9265Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9269CalAdjustPoints(calHandle::CalHandle, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9269CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ref{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9269Cal(calHandle::CalHandle, channelNames, value::int32)
    ccall((:DAQmxSetup9269Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9269Cal(calHandle::CalHandle, channelNames, value::float64)
    ccall((:DAQmxAdjust9269Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9775CalAdjustPoints(calHandle::CalHandle, coupling::uInt32, adjustmentPoints, bufferSize::uInt32)
    ccall((:DAQmxGet9775CalAdjustPoints, NIDAQmx), int32, (CalHandle, uInt32, Ref{float64}, uInt32), calHandle, coupling, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9775Cal(calHandle::CalHandle, channelNames, value::float64, coupling::uInt32)
    ccall((:DAQmxAdjust9775Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, uInt32), calHandle, channelNames, value, coupling)
end

function DAQmxSetup1102Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1102Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1102Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1102Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1104Cal(calHandle::CalHandle, channelName)
    ccall((:DAQmxSetup1104Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}), calHandle, channelName)
end

function DAQmxAdjust1104Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1104Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1112Cal(calHandle::CalHandle, channelName)
    ccall((:DAQmxSetup1112Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}), calHandle, channelName)
end

function DAQmxAdjust1112Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1112Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1122Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1122Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1122Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1122Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1124Cal(calHandle::CalHandle, channelName, range::int32, dacValue::uInt32)
    ccall((:DAQmxSetup1124Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, int32, uInt32), calHandle, channelName, range, dacValue)
end

function DAQmxAdjust1124Cal(calHandle::CalHandle, measOutput::float64)
    ccall((:DAQmxAdjust1124Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, measOutput)
end

function DAQmxSetup1125Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1125Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1125Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1125Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1126Cal(calHandle::CalHandle, channelName, upperFreqLimit::float64)
    ccall((:DAQmxSetup1126Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, upperFreqLimit)
end

function DAQmxAdjust1126Cal(calHandle::CalHandle, refFreq::float64, measOutput::float64)
    ccall((:DAQmxAdjust1126Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refFreq, measOutput)
end

function DAQmxSetup1141Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1141Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1141Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1141Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1142Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1142Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1142Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1142Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1143Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1143Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1143Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1143Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1502Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1502Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1502Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1502Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1503Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1503Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1503Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1503Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxAdjust1503CurrentCal(calHandle::CalHandle, channelName, measCurrent::float64)
    ccall((:DAQmxAdjust1503CurrentCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, measCurrent)
end

function DAQmxSetup1520Cal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup1520Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1520Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1520Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1521Cal(calHandle::CalHandle, channelName)
    ccall((:DAQmxSetup1521Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}), calHandle, channelName)
end

function DAQmxAdjust1521Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust1521Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup153xCal(calHandle::CalHandle, channelName, gain::float64)
    ccall((:DAQmxSetup153xCal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust153xCal(calHandle::CalHandle, refVoltage::float64, measOutput::float64)
    ccall((:DAQmxAdjust153xCal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1540Cal(calHandle::CalHandle, channelName, excitationVoltage::float64, excitationFreq::float64)
    ccall((:DAQmxSetup1540Cal, NIDAQmx), int32, (CalHandle, Ref{UInt8}, float64, float64), calHandle, channelName, excitationVoltage, excitationFreq)
end

function DAQmxAdjust1540Cal(calHandle::CalHandle, refVoltage::float64, measOutput::float64, inputCalSource::int32)
    ccall((:DAQmxAdjust1540Cal, NIDAQmx), int32, (CalHandle, float64, float64, int32), calHandle, refVoltage, measOutput, inputCalSource)
end

function DAQmxConfigureTEDS(physicalChannel, filePath)
    ccall((:DAQmxConfigureTEDS, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}), physicalChannel, filePath)
end

function DAQmxClearTEDS(physicalChannel)
    ccall((:DAQmxClearTEDS, NIDAQmx), int32, (Ref{UInt8},), physicalChannel)
end

function DAQmxWriteToTEDSFromArray(physicalChannel, bitStream, arraySize::uInt32, basicTEDSOptions::int32)
    ccall((:DAQmxWriteToTEDSFromArray, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt8}, uInt32, int32), physicalChannel, bitStream, arraySize, basicTEDSOptions)
end

function DAQmxWriteToTEDSFromFile(physicalChannel, filePath, basicTEDSOptions::int32)
    ccall((:DAQmxWriteToTEDSFromFile, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, int32), physicalChannel, filePath, basicTEDSOptions)
end

function DAQmxWaitForNextSampleClock(taskHandle::TaskHandle, timeout::float64, isLate)
    ccall((:DAQmxWaitForNextSampleClock, NIDAQmx), int32, (TaskHandle, float64, Ref{bool32}), taskHandle, timeout, isLate)
end

function DAQmxResetRealTimeAttribute(taskHandle::TaskHandle, attribute::int32)
    ccall((:DAQmxResetRealTimeAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxIsReadOrWriteLate(errorCode::int32)
    ccall((:DAQmxIsReadOrWriteLate, NIDAQmx), bool32, (int32,), errorCode)
end

function DAQmxSaveTask(taskHandle::TaskHandle, saveAs, author, options::uInt32)
    ccall((:DAQmxSaveTask, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, uInt32), taskHandle, saveAs, author, options)
end

function DAQmxSaveGlobalChan(taskHandle::TaskHandle, channelName, saveAs, author, options::uInt32)
    ccall((:DAQmxSaveGlobalChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{UInt8}, Ref{UInt8}, uInt32), taskHandle, channelName, saveAs, author, options)
end

function DAQmxSaveScale(scaleName, saveAs, author, options::uInt32)
    ccall((:DAQmxSaveScale, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, Ref{UInt8}, uInt32), scaleName, saveAs, author, options)
end

function DAQmxDeleteSavedTask(taskName)
    ccall((:DAQmxDeleteSavedTask, NIDAQmx), int32, (Ref{UInt8},), taskName)
end

function DAQmxDeleteSavedGlobalChan(channelName)
    ccall((:DAQmxDeleteSavedGlobalChan, NIDAQmx), int32, (Ref{UInt8},), channelName)
end

function DAQmxDeleteSavedScale(scaleName)
    ccall((:DAQmxDeleteSavedScale, NIDAQmx), int32, (Ref{UInt8},), scaleName)
end

function DAQmxSetAnalogPowerUpStatesWithOutputType(channelNames, stateArray, channelTypeArray, arraySize::uInt32)
    ccall((:DAQmxSetAnalogPowerUpStatesWithOutputType, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, Ref{int32}, uInt32), channelNames, stateArray, channelTypeArray, arraySize)
end

function DAQmxGetAnalogPowerUpStatesWithOutputType(channelNames, stateArray, channelTypeArray, arraySizeRef)
    ccall((:DAQmxGetAnalogPowerUpStatesWithOutputType, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, Ref{int32}, Ref{uInt32}), channelNames, stateArray, channelTypeArray, arraySizeRef)
end

function DAQmxSetDigitalLogicFamilyPowerUpState(deviceName, logicFamily::int32)
    ccall((:DAQmxSetDigitalLogicFamilyPowerUpState, NIDAQmx), int32, (Ref{UInt8}, int32), deviceName, logicFamily)
end

function DAQmxGetDigitalLogicFamilyPowerUpState(deviceName, logicFamily)
    ccall((:DAQmxGetDigitalLogicFamilyPowerUpState, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), deviceName, logicFamily)
end

function DAQmxAddNetworkDevice(IPAddress, deviceName, attemptReservation::bool32, timeout::float64, deviceNameOut, deviceNameOutBufferSize::uInt32)
    ccall((:DAQmxAddNetworkDevice, NIDAQmx), int32, (Ref{UInt8}, Ref{UInt8}, bool32, float64, Ref{UInt8}, uInt32), IPAddress, deviceName, attemptReservation, timeout, deviceNameOut, deviceNameOutBufferSize)
end

function DAQmxDeleteNetworkDevice(deviceName)
    ccall((:DAQmxDeleteNetworkDevice, NIDAQmx), int32, (Ref{UInt8},), deviceName)
end

function DAQmxReserveNetworkDevice(deviceName, overrideReservation::bool32)
    ccall((:DAQmxReserveNetworkDevice, NIDAQmx), int32, (Ref{UInt8}, bool32), deviceName, overrideReservation)
end

function DAQmxUnreserveNetworkDevice(deviceName)
    ccall((:DAQmxUnreserveNetworkDevice, NIDAQmx), int32, (Ref{UInt8},), deviceName)
end

function DAQmxAutoConfigureCDAQSyncConnections(chassisDevicesPorts, timeout::float64)
    ccall((:DAQmxAutoConfigureCDAQSyncConnections, NIDAQmx), int32, (Ref{UInt8}, float64), chassisDevicesPorts, timeout)
end

function DAQmxGetAutoConfiguredCDAQSyncConnections(portList, portListSize::uInt32)
    ccall((:DAQmxGetAutoConfiguredCDAQSyncConnections, NIDAQmx), int32, (Ref{UInt8}, uInt32), portList, portListSize)
end

function DAQmxAreConfiguredCDAQSyncPortsDisconnected(chassisDevicesPorts, timeout::float64, disconnectedPortsExist)
    ccall((:DAQmxAreConfiguredCDAQSyncPortsDisconnected, NIDAQmx), int32, (Ref{UInt8}, float64, Ref{bool32}), chassisDevicesPorts, timeout, disconnectedPortsExist)
end

function DAQmxGetDisconnectedCDAQSyncPorts(portList, portListSize::uInt32)
    ccall((:DAQmxGetDisconnectedCDAQSyncPorts, NIDAQmx), int32, (Ref{UInt8}, uInt32), portList, portListSize)
end

function DAQmxAddCDAQSyncConnection(portList)
    ccall((:DAQmxAddCDAQSyncConnection, NIDAQmx), int32, (Ref{UInt8},), portList)
end

function DAQmxRemoveCDAQSyncConnection(portList)
    ccall((:DAQmxRemoveCDAQSyncConnection, NIDAQmx), int32, (Ref{UInt8},), portList)
end

function DAQmxGetErrorString(errorCode::int32, errorString, bufferSize::uInt32)
    ccall((:DAQmxGetErrorString, NIDAQmx), int32, (int32, Ref{UInt8}, uInt32), errorCode, errorString, bufferSize)
end

function DAQmxGetExtendedErrorInfo(errorString, bufferSize::uInt32)
    ccall((:DAQmxGetExtendedErrorInfo, NIDAQmx), int32, (Ref{UInt8}, uInt32), errorString, bufferSize)
end

function DAQmxGetBufInputBufSize(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetBufInputBufSize, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetBufInputBufSize(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetBufInputBufSize, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetBufInputBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufInputBufSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetBufInputOnbrdBufSize(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetBufInputOnbrdBufSize, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetBufOutputBufSize(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetBufOutputBufSize, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetBufOutputBufSize(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetBufOutputBufSize, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetBufOutputBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufOutputBufSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetBufOutputOnbrdBufSize(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetBufOutputOnbrdBufSize, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetBufOutputOnbrdBufSize(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetBufOutputOnbrdBufSize, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetBufOutputOnbrdBufSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetBufOutputOnbrdBufSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSelfCalSupported(deviceName, data)
    ccall((:DAQmxGetSelfCalSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), deviceName, data)
end

function DAQmxGetSelfCalLastTemp(deviceName, data)
    ccall((:DAQmxGetSelfCalLastTemp, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), deviceName, data)
end

function DAQmxGetExtCalRecommendedInterval(deviceName, data)
    ccall((:DAQmxGetExtCalRecommendedInterval, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), deviceName, data)
end

function DAQmxGetExtCalLastTemp(deviceName, data)
    ccall((:DAQmxGetExtCalLastTemp, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), deviceName, data)
end

function DAQmxGetCalUserDefinedInfo(deviceName, data, bufferSize::uInt32)
    ccall((:DAQmxGetCalUserDefinedInfo, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), deviceName, data, bufferSize)
end

function DAQmxSetCalUserDefinedInfo(deviceName, data)
    ccall((:DAQmxSetCalUserDefinedInfo, NIDAQmx), int32, (Ref{UInt8}, Cstring), deviceName, data)
end

function DAQmxGetCalUserDefinedInfoMaxSize(deviceName, data)
    ccall((:DAQmxGetCalUserDefinedInfoMaxSize, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), deviceName, data)
end

function DAQmxGetCalDevTemp(deviceName, data)
    ccall((:DAQmxGetCalDevTemp, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), deviceName, data)
end

function DAQmxGetCalAccConnectionCount(deviceName, data)
    ccall((:DAQmxGetCalAccConnectionCount, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), deviceName, data)
end

function DAQmxSetCalAccConnectionCount(deviceName, data::uInt32)
    ccall((:DAQmxSetCalAccConnectionCount, NIDAQmx), int32, (Ref{UInt8}, uInt32), deviceName, data)
end

function DAQmxGetCalRecommendedAccConnectionCountLimit(deviceName, data)
    ccall((:DAQmxGetCalRecommendedAccConnectionCountLimit, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), deviceName, data)
end

function DAQmxGetAIMax(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIMax(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIMax(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIMin(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIMin(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIMin(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAICustomScaleName(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAICustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAICustomScaleName(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetAICustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetAICustomScaleName(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAICustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIMeasType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIMeasType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetAIVoltageUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIVoltageUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIVoltageUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIVoltageUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIVoltageUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIVoltageUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVoltagedBRef(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIVoltagedBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIVoltagedBRef(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIVoltagedBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIVoltagedBRef(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIVoltagedBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVoltageACRMSUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIVoltageACRMSUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIVoltageACRMSUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIVoltageACRMSUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIVoltageACRMSUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIVoltageACRMSUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAITempUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAITempUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAITempUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAITempUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAITempUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAITempUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmcplType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIThrmcplType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIThrmcplType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIThrmcplType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIThrmcplType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplScaleType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmcplScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIThrmcplScaleType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIThrmcplScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIThrmcplScaleType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIThrmcplScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplCJCSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmcplCJCSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetAIThrmcplCJCVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmcplCJCVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmcplCJCVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIThrmcplCJCVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmcplCJCVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIThrmcplCJCVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplCJCChan(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIThrmcplCJCChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxGetAIRTDType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRTDType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRTDType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIRTDType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRTDType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRTDType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRTDR0(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRTDR0, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRTDR0(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIRTDR0, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRTDR0(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRTDR0, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRTDA(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRTDA, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRTDA(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIRTDA, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRTDA(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRTDA, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRTDB(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRTDB, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRTDB(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIRTDB, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRTDB(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRTDB, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRTDC(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRTDC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRTDC(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIRTDC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRTDC(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRTDC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmstrA(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmstrA, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmstrA(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIThrmstrA, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmstrA(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIThrmstrA, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmstrB(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmstrB, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmstrB(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIThrmstrB, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmstrB(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIThrmstrB, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmstrC(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmstrC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmstrC(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIThrmstrC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmstrC(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIThrmstrC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmstrR1(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmstrR1, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmstrR1(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIThrmstrR1, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmstrR1(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIThrmstrR1, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIForceReadFromChan(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIForceReadFromChan(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIForceReadFromChan(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAICurrentUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAICurrentUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAICurrentUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAICurrentUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAICurrentUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAICurrentUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAICurrentACRMSUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAICurrentACRMSUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAICurrentACRMSUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAICurrentACRMSUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAICurrentACRMSUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAICurrentACRMSUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIStrainUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIStrainUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIStrainUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIStrainUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIStrainUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainGageForceReadFromChan(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIStrainGageForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIStrainGageForceReadFromChan(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIStrainGageForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIStrainGageForceReadFromChan(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIStrainGageForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainGageGageFactor(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIStrainGageGageFactor, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIStrainGageGageFactor(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIStrainGageGageFactor, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIStrainGageGageFactor(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIStrainGageGageFactor, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainGagePoissonRatio(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIStrainGagePoissonRatio, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIStrainGagePoissonRatio(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIStrainGagePoissonRatio, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIStrainGagePoissonRatio(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIStrainGagePoissonRatio, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainGageCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIStrainGageCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIStrainGageCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIStrainGageCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIStrainGageCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIStrainGageCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRosetteStrainGageRosetteType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRosetteStrainGageRosetteType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetAIRosetteStrainGageOrientation(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRosetteStrainGageOrientation, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRosetteStrainGageOrientation(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIRosetteStrainGageOrientation, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRosetteStrainGageOrientation(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRosetteStrainGageOrientation, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRosetteStrainGageStrainChans(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIRosetteStrainGageStrainChans, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxGetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRosetteStrainGageRosetteMeasType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIRosetteStrainGageRosetteMeasType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRosetteStrainGageRosetteMeasType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRosetteStrainGageRosetteMeasType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIResistanceUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIResistanceUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIResistanceUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIResistanceUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIResistanceUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIResistanceUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFreqUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIFreqUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIFreqUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFreqThreshVoltage(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIFreqThreshVoltage(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIFreqThreshVoltage(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFreqHyst(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIFreqHyst, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIFreqHyst(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIFreqHyst, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIFreqHyst(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIFreqHyst, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILVDTUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILVDTUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAILVDTUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAILVDTUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAILVDTUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILVDTUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILVDTSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAILVDTSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAILVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAILVDTSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILVDTSensitivityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAILVDTSensitivityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAILVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAILVDTSensitivityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRVDTUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRVDTUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRVDTUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIRVDTUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRVDTUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRVDTUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRVDTSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRVDTSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIRVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRVDTSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRVDTSensitivityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRVDTSensitivityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIRVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRVDTSensitivityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIEddyCurrentProxProbeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIEddyCurrentProxProbeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIEddyCurrentProxProbeUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIEddyCurrentProxProbeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIEddyCurrentProxProbeSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIEddyCurrentProxProbeSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIEddyCurrentProxProbeSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIEddyCurrentProxProbeSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIEddyCurrentProxProbeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIEddyCurrentProxProbeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIEddyCurrentProxProbeSensitivityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIEddyCurrentProxProbeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAISoundPressureMaxSoundPressureLvl, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAISoundPressureMaxSoundPressureLvl, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAISoundPressureMaxSoundPressureLvl(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAISoundPressureMaxSoundPressureLvl, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAISoundPressureUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAISoundPressureUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAISoundPressureUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAISoundPressureUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAISoundPressureUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAISoundPressureUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAISoundPressuredBRef(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAISoundPressuredBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAISoundPressuredBRef(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAISoundPressuredBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAISoundPressuredBRef(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAISoundPressuredBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIMicrophoneSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIMicrophoneSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIMicrophoneSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIMicrophoneSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIMicrophoneSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIMicrophoneSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAccelUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAccelUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIAccelUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAccelUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAccelUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAcceldBRef(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAcceldBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAcceldBRef(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIAcceldBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAcceldBRef(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAcceldBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccel4WireDCVoltageSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAccel4WireDCVoltageSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAccel4WireDCVoltageSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIAccel4WireDCVoltageSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAccel4WireDCVoltageSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAccel4WireDCVoltageSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccel4WireDCVoltageSensitivityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAccel4WireDCVoltageSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAccel4WireDCVoltageSensitivityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIAccel4WireDCVoltageSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAccel4WireDCVoltageSensitivityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAccel4WireDCVoltageSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAccelSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAccelSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIAccelSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAccelSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAccelSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelSensitivityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAccelSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAccelSensitivityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIAccelSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAccelSensitivityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAccelSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelChargeSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAccelChargeSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAccelChargeSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIAccelChargeSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAccelChargeSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAccelChargeSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelChargeSensitivityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAccelChargeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAccelChargeSensitivityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIAccelChargeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAccelChargeSensitivityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAccelChargeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVelocityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIVelocityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIVelocityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIVelocityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIVelocityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIVelocityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVelocityIEPESensordBRef(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIVelocityIEPESensordBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIVelocityIEPESensordBRef(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIVelocityIEPESensordBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIVelocityIEPESensordBRef(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIVelocityIEPESensordBRef, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIVelocityIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIVelocityIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIVelocityIEPESensorSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIVelocityIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIVelocityIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIVelocityIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIVelocityIEPESensorSensitivityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIVelocityIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIForceUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIForceUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIForceUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIForceUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIForceUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIForceUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIForceIEPESensorSensitivity(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIForceIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIForceIEPESensorSensitivity(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIForceIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIForceIEPESensorSensitivity(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIForceIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIForceIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIForceIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIForceIEPESensorSensitivityUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIForceIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIPressureUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIPressureUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIPressureUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIPressureUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIPressureUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIPressureUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAITorqueUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAITorqueUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAITorqueUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAITorqueUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAITorqueUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAITorqueUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeElectricalUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeElectricalUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeElectricalUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgeElectricalUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeElectricalUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeElectricalUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgePhysicalUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgePhysicalUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgePhysicalUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgePhysicalUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgePhysicalUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgePhysicalUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeScaleType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeScaleType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgeScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeScaleType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeTwoPointLinFirstElectricalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinFirstElectricalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeTwoPointLinFirstElectricalVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeTwoPointLinFirstElectricalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeTwoPointLinFirstPhysicalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinFirstPhysicalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeTwoPointLinFirstPhysicalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeTwoPointLinSecondElectricalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinSecondElectricalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeTwoPointLinSecondElectricalVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeTwoPointLinSecondElectricalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeTwoPointLinSecondPhysicalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeTwoPointLinSecondPhysicalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeTwoPointLinSecondPhysicalVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTableElectricalVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgeTableElectricalVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIBridgeTableElectricalVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgeTableElectricalVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIBridgeTableElectricalVals(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeTableElectricalVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTablePhysicalVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgeTablePhysicalVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIBridgeTablePhysicalVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgeTablePhysicalVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIBridgeTablePhysicalVals(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeTablePhysicalVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgePolyForwardCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgePolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIBridgePolyForwardCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgePolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIBridgePolyForwardCoeff(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgePolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgePolyReverseCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIBridgePolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIBridgePolyReverseCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIBridgePolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIBridgePolyReverseCoeff(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgePolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChargeUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIChargeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIChargeUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIChargeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIChargeUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChargeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIIsTEDS(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIIsTEDS, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxGetAITEDSUnits(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAITEDSUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxGetAICoupling(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAICoupling, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAICoupling(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAICoupling, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAICoupling(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAICoupling, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIImpedance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIImpedance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIImpedance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAITermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAITermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAITermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAITermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAITermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAITermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIInputSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIInputSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAIInputSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetAIInputSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetAIInputSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIInputSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIResistanceCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIResistanceCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIResistanceCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIResistanceCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIResistanceCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIResistanceCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILeadWireResistance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILeadWireResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAILeadWireResistance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAILeadWireResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAILeadWireResistance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILeadWireResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgeCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeNomResistance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeNomResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeNomResistance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeNomResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeNomResistance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeNomResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeInitialVoltage(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeInitialVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeInitialVoltage(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeInitialVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeInitialVoltage(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeInitialVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeInitialRatio(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeInitialRatio, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeInitialRatio(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeInitialRatio, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeInitialRatio(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeInitialRatio, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeShuntCalEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIBridgeShuntCalEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeShuntCalEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalSelect(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeShuntCalSelect, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalSelect(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgeShuntCalSelect, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalSelect(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeShuntCalSelect, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalASrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalASrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalASrc(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalASrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalASrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalASrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeShuntCalGainAdjust, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalGainAdjust, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalGainAdjust(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeShuntCalGainAdjust, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalAResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalAResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalAResistance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalAResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalAActualResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalAActualResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalAActualResistance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalAActualResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalBResistance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalBResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalBResistance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalBResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalBResistance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalBResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalBActualResistance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeShuntCalShuntCalBActualResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalBActualResistance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIBridgeShuntCalShuntCalBActualResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalBActualResistance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeShuntCalShuntCalBActualResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeBalanceCoarsePot, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgeBalanceCoarsePot, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeBalanceCoarsePot(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeBalanceCoarsePot, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeBalanceFinePot(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIBridgeBalanceFinePot, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeBalanceFinePot(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIBridgeBalanceFinePot, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeBalanceFinePot(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIBridgeBalanceFinePot, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAICurrentShuntLoc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAICurrentShuntLoc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAICurrentShuntLoc(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAICurrentShuntLoc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAICurrentShuntLoc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAICurrentShuntLoc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAICurrentShuntResistance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAICurrentShuntResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAICurrentShuntResistance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAICurrentShuntResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAICurrentShuntResistance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAICurrentShuntResistance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitSense(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitSense, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitSense(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIExcitSense, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitSense(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitSense, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitSrc(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIExcitSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIExcitVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIExcitVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIExcitVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitUseForScaling(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitUseForScaling, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitUseForScaling(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIExcitUseForScaling, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIExcitUseForScaling(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitUseForScaling, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitUseMultiplexed(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitUseMultiplexed, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitUseMultiplexed(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIExcitUseMultiplexed, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIExcitUseMultiplexed(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitUseMultiplexed, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitActualVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitActualVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIExcitActualVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIExcitActualVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIExcitActualVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitActualVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitDCorAC(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitDCorAC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitDCorAC(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIExcitDCorAC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitDCorAC(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitDCorAC, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitVoltageOrCurrent(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitVoltageOrCurrent, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitVoltageOrCurrent(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIExcitVoltageOrCurrent, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitVoltageOrCurrent(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitVoltageOrCurrent, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitIdleOutputBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIExcitIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitIdleOutputBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIExcitIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitIdleOutputBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIExcitIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIACExcitFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIACExcitFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIACExcitFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIACExcitFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIACExcitFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIACExcitFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIACExcitSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIACExcitSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIACExcitSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIACExcitSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIACExcitSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIACExcitSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIACExcitWireMode(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIACExcitWireMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIACExcitWireMode(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIACExcitWireMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIACExcitWireMode(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIACExcitWireMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIOpenThrmcplDetectEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIOpenThrmcplDetectEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIOpenThrmcplDetectEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIOpenThrmcplDetectEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIThrmcplLeadOffsetVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIThrmcplLeadOffsetVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmcplLeadOffsetVoltage(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIThrmcplLeadOffsetVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAtten(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAtten, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAtten(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIAtten, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAtten(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAtten, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIProbeAtten(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIProbeAtten, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIProbeAtten(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIProbeAtten, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIProbeAtten(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIProbeAtten, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILowpassEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAILowpassEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAILowpassEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAILowpassEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILowpassEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassCutoffFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAILowpassCutoffFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAILowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAILowpassCutoffFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILowpassSwitchCapClkSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAILowpassSwitchCapClkSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAILowpassSwitchCapClkSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILowpassSwitchCapClkSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILowpassSwitchCapExtClkFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAILowpassSwitchCapExtClkFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAILowpassSwitchCapExtClkFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILowpassSwitchCapExtClkFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILowpassSwitchCapExtClkDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAILowpassSwitchCapExtClkDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAILowpassSwitchCapExtClkDiv(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILowpassSwitchCapExtClkDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILowpassSwitchCapOutClkDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAILowpassSwitchCapOutClkDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAILowpassSwitchCapOutClkDiv(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILowpassSwitchCapOutClkDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIDigFltrType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrResponse(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrResponse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrResponse(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIDigFltrResponse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrResponse(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrResponse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrOrder(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrOrder, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrOrder(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAIDigFltrOrder, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrOrder(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrOrder, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrLowpassCutoffFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrLowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrLowpassCutoffFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIDigFltrLowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrLowpassCutoffFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrLowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrHighpassCutoffFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrHighpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrHighpassCutoffFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIDigFltrHighpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrHighpassCutoffFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrHighpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrBandpassCenterFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrBandpassCenterFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrBandpassCenterFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIDigFltrBandpassCenterFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrBandpassCenterFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrBandpassCenterFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrBandpassWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrBandpassWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrBandpassWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIDigFltrBandpassWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrBandpassWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrBandpassWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrNotchCenterFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrNotchCenterFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrNotchCenterFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIDigFltrNotchCenterFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrNotchCenterFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrNotchCenterFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrNotchWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDigFltrNotchWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrNotchWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIDigFltrNotchWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrNotchWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrNotchWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIDigFltrCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIDigFltrCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIDigFltrCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIDigFltrCoeff(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDigFltrCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFilterDelay(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIFilterDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxGetAIFilterDelayUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIFilterDelayUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIFilterDelayUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRemoveFilterDelay(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRemoveFilterDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIRemoveFilterDelay(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIRemoveFilterDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIRemoveFilterDelay(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRemoveFilterDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFilterDelayAdjustment(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIFilterDelayAdjustment(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIFilterDelayAdjustment(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAveragingWinSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAveragingWinSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIAveragingWinSize(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAIAveragingWinSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIAveragingWinSize(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAveragingWinSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIResolutionUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIResolutionUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetAIResolution(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIResolution, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxGetAIRawSampSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRawSampSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxGetAIRawSampJustification(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRawSampJustification, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetAIADCTimingMode(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIADCTimingMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIADCTimingMode(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIADCTimingMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIADCTimingMode(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIADCTimingMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIADCCustomTimingMode(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIADCCustomTimingMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIADCCustomTimingMode(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAIADCCustomTimingMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIADCCustomTimingMode(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIADCCustomTimingMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDitherEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDitherEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIDitherEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIDitherEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIDitherEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDitherEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalHasValidCalInfo(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIChanCalHasValidCalInfo, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxGetAIChanCalEnableCal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIChanCalEnableCal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIChanCalEnableCal(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIChanCalEnableCal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIChanCalEnableCal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalEnableCal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalApplyCalIfExp(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIChanCalApplyCalIfExp, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIChanCalApplyCalIfExp(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIChanCalApplyCalIfExp, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIChanCalApplyCalIfExp(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalApplyCalIfExp, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalScaleType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIChanCalScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIChanCalScaleType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIChanCalScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIChanCalScaleType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalScaleType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalTablePreScaledVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalTablePreScaledVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalTablePreScaledVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalTablePreScaledVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalTablePreScaledVals(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalTablePreScaledVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalTableScaledVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalTableScaledVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalTableScaledVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalTableScaledVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalTableScaledVals(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalTableScaledVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalPolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalPolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalPolyForwardCoeff(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalPolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalPolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalPolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalPolyReverseCoeff(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalPolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalOperatorName(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIChanCalOperatorName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAIChanCalOperatorName(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetAIChanCalOperatorName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetAIChanCalOperatorName(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalOperatorName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalDesc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIChanCalDesc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAIChanCalDesc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetAIChanCalDesc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetAIChanCalDesc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalDesc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalVerifRefVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalVerifRefVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalVerifRefVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalVerifRefVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalVerifRefVals(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalVerifRefVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalVerifAcqVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIChanCalVerifAcqVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalVerifAcqVals(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAIChanCalVerifAcqVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalVerifAcqVals(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChanCalVerifAcqVals, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRngHigh(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRngHigh, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRngHigh(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIRngHigh, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRngHigh(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRngHigh, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRngLow(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRngLow, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRngLow(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIRngLow, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRngLow(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRngLow, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDCOffset(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDCOffset, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDCOffset(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIDCOffset, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDCOffset(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDCOffset, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIGain(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIGain, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIGain(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIGain, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIGain(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIGain, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAISampAndHoldEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAISampAndHoldEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAISampAndHoldEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAISampAndHoldEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAISampAndHoldEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAISampAndHoldEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAutoZeroMode(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIAutoZeroMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAutoZeroMode(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIAutoZeroMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAutoZeroMode(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIAutoZeroMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChopEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIChopEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIChopEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIChopEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIChopEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIChopEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDataXferMaxRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDataXferMaxRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDataXferMaxRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAIDataXferMaxRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDataXferMaxRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDataXferMaxRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDataXferMech(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIDataXferMech(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIDataXferMech(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDataXferReqCond(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIDataXferReqCond(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIDataXferReqCond(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDataXferCustomThreshold(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIDataXferCustomThreshold, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIDataXferCustomThreshold(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAIDataXferCustomThreshold, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIDataXferCustomThreshold(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIDataXferCustomThreshold, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIUsbXferReqSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIUsbXferReqSize(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIUsbXferReqSize(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIUsbXferReqCount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIUsbXferReqCount(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIUsbXferReqCount(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIMemMapEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIMemMapEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIMemMapEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRawDataCompressionType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIRawDataCompressionType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRawDataCompressionType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAIRawDataCompressionType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRawDataCompressionType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIRawDataCompressionType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAILossyLSBRemovalCompressedSampSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAILossyLSBRemovalCompressedSampSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAILossyLSBRemovalCompressedSampSize(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAILossyLSBRemovalCompressedSampSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDevScalingCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIDevScalingCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxGetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIEnhancedAliasRejectionEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIEnhancedAliasRejectionEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIEnhancedAliasRejectionEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIEnhancedAliasRejectionEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAIOpenChanDetectEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAIOpenChanDetectEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIOpenChanDetectEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAIOpenChanDetectEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIOpenChanDetectEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAIOpenChanDetectEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOMax(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOMax(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOMax(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOMin(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOMin(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOMin(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOCustomScaleName(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAOCustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAOCustomScaleName(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetAOCustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetAOCustomScaleName(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOCustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOOutputType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOOutputType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetAOVoltageUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOVoltageUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAOVoltageUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAOVoltageUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOVoltageUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOVoltageUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOVoltageCurrentLimit(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOVoltageCurrentLimit, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOVoltageCurrentLimit(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOVoltageCurrentLimit, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOVoltageCurrentLimit(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOVoltageCurrentLimit, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOCurrentUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOCurrentUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAOCurrentUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAOCurrentUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOCurrentUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOCurrentUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFuncGenType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAOFuncGenType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFuncGenType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFuncGenFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOFuncGenFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFuncGenFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenAmplitude(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFuncGenAmplitude, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenAmplitude(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOFuncGenAmplitude, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenAmplitude(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFuncGenAmplitude, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenOffset(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFuncGenOffset, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenOffset(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOFuncGenOffset, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenOffset(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFuncGenOffset, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFuncGenSquareDutyCycle, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOFuncGenSquareDutyCycle, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenSquareDutyCycle(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFuncGenSquareDutyCycle, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenModulationType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFuncGenModulationType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenModulationType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAOFuncGenModulationType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenModulationType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFuncGenModulationType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenFMDeviation(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFuncGenFMDeviation, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenFMDeviation(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOFuncGenFMDeviation, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenFMDeviation(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFuncGenFMDeviation, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOOutputImpedance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOOutputImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOOutputImpedance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOOutputImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOOutputImpedance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOOutputImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOLoadImpedance(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOLoadImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOLoadImpedance(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOLoadImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOLoadImpedance(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOLoadImpedance, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOIdleOutputBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAOIdleOutputBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAOIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOIdleOutputBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAOTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAOTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOResolutionUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOResolutionUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAOResolutionUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAOResolutionUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOResolutionUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOResolutionUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOResolution(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOResolution, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxGetAODACRngHigh(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODACRngHigh, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAODACRngHigh(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAODACRngHigh, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAODACRngHigh(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACRngHigh, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRngLow(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODACRngLow, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAODACRngLow(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAODACRngLow, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAODACRngLow(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACRngLow, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefConnToGnd(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODACRefConnToGnd, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAODACRefConnToGnd(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAODACRefConnToGnd, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAODACRefConnToGnd(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACRefConnToGnd, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefAllowConnToGnd(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODACRefAllowConnToGnd, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAODACRefAllowConnToGnd(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAODACRefAllowConnToGnd, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAODACRefAllowConnToGnd(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACRefAllowConnToGnd, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODACRefSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAODACRefSrc(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAODACRefSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAODACRefSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACRefSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefExtSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAODACRefExtSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAODACRefExtSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetAODACRefExtSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetAODACRefExtSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACRefExtSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODACRefVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAODACRefVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAODACRefVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAODACRefVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACRefVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACOffsetSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODACOffsetSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAODACOffsetSrc(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAODACOffsetSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAODACOffsetSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACOffsetSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACOffsetExtSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetAODACOffsetExtSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAODACOffsetExtSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetAODACOffsetExtSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetAODACOffsetExtSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACOffsetExtSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACOffsetVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODACOffsetVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAODACOffsetVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAODACOffsetVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAODACOffsetVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODACOffsetVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOReglitchEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOReglitchEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAOReglitchEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAOReglitchEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAOReglitchEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOReglitchEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFilterDelay(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFilterDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFilterDelay(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOFilterDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFilterDelay(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFilterDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFilterDelayUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAOFilterDelayUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAOFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOFilterDelayUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFilterDelayAdjustment(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFilterDelayAdjustment(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFilterDelayAdjustment(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOGain(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOGain, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetAOGain(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetAOGain, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOGain(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOGain, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODataXferMech(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAODataXferMech(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAODataXferMech(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODataXferReqCond(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetAODataXferReqCond(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetAODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAODataXferReqCond(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOUsbXferReqSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAOUsbXferReqSize(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAOUsbXferReqSize(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOUsbXferReqCount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAOUsbXferReqCount(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetAOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAOUsbXferReqCount(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAOMemMapEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAOMemMapEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAOMemMapEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetAODevScalingCoeff(taskHandle::TaskHandle, channel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAODevScalingCoeff, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxGetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetAOEnhancedImageRejectionEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetAOEnhancedImageRejectionEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAOEnhancedImageRejectionEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetAOEnhancedImageRejectionEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIInvertLines(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIInvertLines, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIInvertLines(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDIInvertLines, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIInvertLines(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIInvertLines, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDINumLines(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDINumLines, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxGetDIDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetDIDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetDIDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigFltrEnableBusMode(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIDigFltrEnableBusMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIDigFltrEnableBusMode(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDIDigFltrEnableBusMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrEnableBusMode(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIDigFltrEnableBusMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetDIDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetDIDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetDIDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetDIDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetDIDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDIDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDITristate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDITristate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDITristate(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDITristate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDITristate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDITristate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDILogicFamily(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDILogicFamily, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDILogicFamily(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDILogicFamily, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDILogicFamily(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDILogicFamily, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDataXferMech(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDIDataXferMech(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDIDataXferMech(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDataXferReqCond(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDIDataXferReqCond(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDIDataXferReqCond(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIUsbXferReqSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetDIUsbXferReqSize(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetDIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetDIUsbXferReqSize(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIUsbXferReqCount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetDIUsbXferReqCount(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetDIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetDIUsbXferReqCount(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIMemMapEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIMemMapEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIMemMapEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDIAcquireOn(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDIAcquireOn, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDIAcquireOn(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDIAcquireOn, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDIAcquireOn(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDIAcquireOn, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOOutputDriveType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOOutputDriveType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDOOutputDriveType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDOOutputDriveType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOOutputDriveType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOOutputDriveType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOInvertLines(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOInvertLines, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOInvertLines(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDOInvertLines, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOInvertLines(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOInvertLines, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDONumLines(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDONumLines, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxGetDOTristate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOTristate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOTristate(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDOTristate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOTristate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOTristate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOLineStatesStartState(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOLineStatesStartState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDOLineStatesStartState(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDOLineStatesStartState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOLineStatesStartState(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOLineStatesStartState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOLineStatesPausedState(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOLineStatesPausedState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDOLineStatesPausedState(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDOLineStatesPausedState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOLineStatesPausedState(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOLineStatesPausedState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOLineStatesDoneState(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOLineStatesDoneState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDOLineStatesDoneState(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDOLineStatesDoneState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOLineStatesDoneState(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOLineStatesDoneState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOLogicFamily(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOLogicFamily, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDOLogicFamily(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDOLogicFamily, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOLogicFamily(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOLogicFamily, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOOvercurrentLimit(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOOvercurrentLimit, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetDOOvercurrentLimit(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetDOOvercurrentLimit, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetDOOvercurrentLimit(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOOvercurrentLimit, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOOvercurrentAutoReenable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOOvercurrentAutoReenable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOOvercurrentAutoReenable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDOOvercurrentAutoReenable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOOvercurrentAutoReenable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOOvercurrentAutoReenable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOOvercurrentReenablePeriod(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOOvercurrentReenablePeriod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetDOOvercurrentReenablePeriod(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetDOOvercurrentReenablePeriod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetDOOvercurrentReenablePeriod(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOOvercurrentReenablePeriod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDODataXferMech(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDODataXferMech(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDODataXferMech(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDODataXferReqCond(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDODataXferReqCond(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDODataXferReqCond(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOUsbXferReqSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetDOUsbXferReqSize(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetDOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetDOUsbXferReqSize(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOUsbXferReqCount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetDOUsbXferReqCount(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetDOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetDOUsbXferReqCount(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOMemMapEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOMemMapEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetDOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOMemMapEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDOGenerateOn(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetDOGenerateOn, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetDOGenerateOn(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetDOGenerateOn, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOGenerateOn(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetDOGenerateOn, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMax(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIMax(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIMax(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIMax, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMin(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIMin(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIMin(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIMin, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICustomScaleName(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICustomScaleName(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICustomScaleName(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICustomScaleName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMeasType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIMeasType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetCIFreqUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIFreqTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIFreqTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIFreqTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIFreqTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqStartingEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqStartingEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIFreqStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqStartingEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqMeasMeth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqMeasMeth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqMeasMeth(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIFreqMeasMeth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqMeasMeth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqMeasMeth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqEnableAveraging(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqEnableAveraging, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqEnableAveraging(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIFreqEnableAveraging, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIFreqEnableAveraging(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqEnableAveraging, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqMeasTime(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFreqMeasTime(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIFreqMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFreqMeasTime(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDiv(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIFreqDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDiv(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCIFreqDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIFreqDiv(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIFreqDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPeriodUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPeriodTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPeriodTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPeriodTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPeriodTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodStartingEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodStartingEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodStartingEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodMeasMeth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodMeasMeth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodMeasMeth(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPeriodMeasMeth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodMeasMeth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodMeasMeth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodEnableAveraging(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodEnableAveraging, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodEnableAveraging(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPeriodEnableAveraging, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodEnableAveraging(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodEnableAveraging, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodMeasTime(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodMeasTime(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPeriodMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPeriodMeasTime(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDiv(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPeriodDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDiv(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCIPeriodDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDiv(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPeriodDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICountEdgesTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICountEdgesDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICountEdgesDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICountEdgesDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDir(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesDir, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDir(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesDir, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDir(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesDir, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDirTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesDirTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesDirTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICountEdgesDirTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDirTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesDirTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountDirTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesCountDirTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountDirTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountDirLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesCountDirLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountDirLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountDirDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICountEdgesCountDirDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountDirDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountDirDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesCountDirDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountDirDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesInitialCnt(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesInitialCnt, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesInitialCnt(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCICountEdgesInitialCnt, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesInitialCnt(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesInitialCnt, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesActiveEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesActiveEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesActiveEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetResetCount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetResetCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetResetCount(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCICountEdgesCountResetResetCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetResetCount(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetResetCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountResetTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesCountResetTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICountEdgesCountResetTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesCountResetTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesCountResetLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICountEdgesCountResetDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesCountResetDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesCountResetActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesCountResetActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetActiveEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesCountResetActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesGateEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesGateEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesGateTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesGateTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICountEdgesGateTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesGateTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesGateTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesGateLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesGateLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesGateDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICountEdgesGateDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesGateDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICountEdgesGateDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICountEdgesGateDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesGateDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICountEdgesGateDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesGateDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICountEdgesGateDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateWhen(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICountEdgesGateWhen, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateWhen(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICountEdgesGateWhen, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateWhen(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICountEdgesGateWhen, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIDutyCycleTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIDutyCycleTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIDutyCycleTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDutyCycleTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDutyCycleTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIDutyCycleTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDutyCycleTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDutyCycleLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIDutyCycleLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDutyCycleLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDutyCycleDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIDutyCycleDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDutyCycleDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDutyCycleDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIDutyCycleDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDutyCycleDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIDutyCycleDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIDutyCycleDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIDutyCycleDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDutyCycleDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDutyCycleDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIDutyCycleDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDutyCycleDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleStartingEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDutyCycleStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleStartingEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIDutyCycleStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleStartingEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDutyCycleStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIAngEncoderUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIAngEncoderUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIAngEncoderUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCIAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIAngEncoderPulsesPerRev(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIAngEncoderInitialAngle(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIAngEncoderInitialAngle, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIAngEncoderInitialAngle(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIAngEncoderInitialAngle, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIAngEncoderInitialAngle(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIAngEncoderInitialAngle, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCILinEncoderUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCILinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCILinEncoderUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCILinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCILinEncoderUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCILinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCILinEncoderDistPerPulse(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCILinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCILinEncoderDistPerPulse(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCILinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCILinEncoderDistPerPulse(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCILinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCILinEncoderInitialPos(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCILinEncoderInitialPos, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCILinEncoderInitialPos(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCILinEncoderInitialPos, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCILinEncoderInitialPos(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCILinEncoderInitialPos, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderDecodingType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderDecodingType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderDecodingType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderAInputTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderAInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIEncoderAInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderAInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderBInputTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderBInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIEncoderBInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderBInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderZInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderZInputTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIEncoderZInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIEncoderZInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIEncoderZInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIEncoderZInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIEncoderZInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIEncoderZInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIEncoderZInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIEncoderZInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIEncoderZInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZIndexEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZIndexEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZIndexEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIEncoderZIndexEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZIndexEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZIndexEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZIndexVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZIndexVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZIndexVal(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIEncoderZIndexVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZIndexVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZIndexVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZIndexPhase(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIEncoderZIndexPhase, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZIndexPhase(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIEncoderZIndexPhase, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZIndexPhase(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIEncoderZIndexPhase, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseWidthUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseWidthUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseWidthTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseWidthTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPulseWidthTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseWidthTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseWidthTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseWidthLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseWidthLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseWidthDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPulseWidthDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseWidthDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPulseWidthDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseWidthDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPulseWidthDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseWidthDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPulseWidthDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseWidthDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPulseWidthDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthStartingEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseWidthStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthStartingEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseWidthStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthStartingEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseWidthStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITimestampUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITimestampUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCITimestampUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCITimestampUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITimestampUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITimestampUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITimestampInitialSeconds(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITimestampInitialSeconds, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCITimestampInitialSeconds(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCITimestampInitialSeconds, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCITimestampInitialSeconds(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITimestampInitialSeconds, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIGPSSyncMethod(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIGPSSyncMethod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIGPSSyncMethod(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIGPSSyncMethod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIGPSSyncMethod(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIGPSSyncMethod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIGPSSyncSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIGPSSyncSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIGPSSyncSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIGPSSyncSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIGPSSyncSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIGPSSyncSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityAngEncoderUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityAngEncoderUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIVelocityAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityAngEncoderUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityAngEncoderPulsesPerRev(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityAngEncoderPulsesPerRev(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCIVelocityAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityAngEncoderPulsesPerRev(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityLinEncoderUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityLinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityLinEncoderUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIVelocityLinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityLinEncoderUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityLinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityLinEncoderDistPerPulse(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityLinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityLinEncoderDistPerPulse(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIVelocityLinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityLinEncoderDistPerPulse(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityLinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderDecodingType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderDecodingType(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIVelocityEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderDecodingType(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIVelocityEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIVelocityEncoderAInputTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIVelocityEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIVelocityEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIVelocityEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIVelocityEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIVelocityEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIVelocityEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIVelocityEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIVelocityEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIVelocityEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIVelocityEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIVelocityEncoderBInputTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIVelocityEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIVelocityEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIVelocityEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIVelocityEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIVelocityEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIVelocityEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIVelocityEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIVelocityEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIVelocityEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityMeasTime(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityMeasTime(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIVelocityMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityMeasTime(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityMeasTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityDiv(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIVelocityDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityDiv(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCIVelocityDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityDiv(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIVelocityDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCITwoEdgeSepUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepFirstTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCITwoEdgeSepFirstTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepFirstTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCITwoEdgeSepFirstTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepFirstLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCITwoEdgeSepFirstLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepFirstDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepFirstDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepFirstEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCITwoEdgeSepFirstEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepFirstEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepSecondTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCITwoEdgeSepSecondTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepSecondTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCITwoEdgeSepSecondTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepSecondLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCITwoEdgeSepSecondLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepSecondDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCITwoEdgeSepSecondDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITwoEdgeSepSecondEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCITwoEdgeSepSecondEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCITwoEdgeSepSecondEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISemiPeriodUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCISemiPeriodUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCISemiPeriodTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCISemiPeriodTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCISemiPeriodTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISemiPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCISemiPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISemiPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCISemiPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISemiPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCISemiPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISemiPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCISemiPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCISemiPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCISemiPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISemiPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCISemiPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISemiPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCISemiPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodStartingEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISemiPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodStartingEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCISemiPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodStartingEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISemiPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseFreqTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseFreqTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPulseFreqTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPulseFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPulseFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPulseFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPulseFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPulseFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqStartEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseFreqStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqStartEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseFreqStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqStartEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseFreqStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTimeTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseTimeTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPulseTimeTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTimeTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseTimeTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTimeLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseTimeLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTimeDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPulseTimeDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTimeDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPulseTimeDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTimeDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPulseTimeDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTimeDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPulseTimeDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTimeDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPulseTimeDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeStartEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTimeStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeStartEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseTimeStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeStartEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTimeStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTicksTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseTicksTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPulseTicksTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksTermCfg(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTicksTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksTermCfg(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseTicksTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksTermCfg(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksTermCfg, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksLogicLvlBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTicksLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksLogicLvlBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseTicksLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksLogicLvlBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTicksDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPulseTicksDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTicksDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPulseTicksDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCIPulseTicksDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCIPulseTicksDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTicksDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIPulseTicksDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTicksDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIPulseTicksDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksStartEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPulseTicksStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksStartEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIPulseTicksStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksStartEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPulseTicksStartEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICtrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseActiveEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseActiveEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCICtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseActiveEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCICtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCICtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCICtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCICtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIThreshVoltage(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIThreshVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIThreshVoltage(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIThreshVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIThreshVoltage(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIThreshVoltage, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCICount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxGetCIOutputState(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIOutputState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetCITCReached(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCITCReached, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxGetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCICtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCICtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCICtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISampClkOverrunBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCISampClkOverrunBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCISampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISampClkOverrunBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCISampClkOverrunSentinelVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCISampClkOverrunSentinelVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCISampClkOverrunSentinelVal(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCISampClkOverrunSentinelVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISampClkOverrunSentinelVal(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCISampClkOverrunSentinelVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDataXferMech(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDataXferMech(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDataXferMech(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDataXferReqCond(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDataXferReqCond(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDataXferReqCond(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIUsbXferReqSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIUsbXferReqSize(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIUsbXferReqSize(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIUsbXferReqCount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIUsbXferReqCount(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIUsbXferReqCount(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMemMapEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIMemMapEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIMemMapEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCINumPossiblyInvalidSamps(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCINumPossiblyInvalidSamps, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxGetCIDupCountPrevent(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIDupCountPrevent, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIDupCountPrevent(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCIDupCountPrevent, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIDupCountPrevent(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIDupCountPrevent, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPrescaler(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIPrescaler, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIPrescaler(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCIPrescaler, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIPrescaler(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIPrescaler, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMaxMeasPeriod(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCIMaxMeasPeriod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCIMaxMeasPeriod(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCIMaxMeasPeriod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIMaxMeasPeriod(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCIMaxMeasPeriod, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOOutputType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOOutputType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetCOPulseIdleState(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseIdleState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseIdleState(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCOPulseIdleState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOPulseIdleState(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseIdleState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseTerm(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCOPulseTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCOPulseTerm(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCOPulseTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCOPulseTerm(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseTerm, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseTimeUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseTimeUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCOPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOPulseTimeUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseHighTime(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseHighTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseHighTime(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOPulseHighTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseHighTime(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseHighTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseLowTime(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseLowTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseLowTime(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOPulseLowTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseLowTime(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseLowTime, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseTimeInitialDelay(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseTimeInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseTimeInitialDelay(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOPulseTimeInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseTimeInitialDelay(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseTimeInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseDutyCyc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseDutyCyc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseDutyCyc(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOPulseDutyCyc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseDutyCyc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseDutyCyc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseFreqUnits(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseFreqUnits(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCOPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOPulseFreqUnits(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseFreq(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseFreq(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOPulseFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseFreq(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseFreq, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseFreqInitialDelay(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseFreqInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseFreqInitialDelay(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOPulseFreqInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseFreqInitialDelay(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseFreqInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseHighTicks(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseHighTicks, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseHighTicks(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCOPulseHighTicks, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOPulseHighTicks(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseHighTicks, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseLowTicks(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseLowTicks, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseLowTicks(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCOPulseLowTicks, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOPulseLowTicks(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseLowTicks, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseTicksInitialDelay(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseTicksInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseTicksInitialDelay(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCOPulseTicksInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOPulseTicksInitialDelay(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPulseTicksInitialDelay, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCOCtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCOCtrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCOCtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOCtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOCtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOCtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCOCtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseActiveEdge(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOCtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigFltrEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOCtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetCOCtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOCtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle, channel, data::float64)
    ccall((:DAQmxSetCOCtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigFltrTimebaseRate(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOCtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCOCtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigSyncEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxGetCOOutputState(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOOutputState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetCOAutoIncrCnt(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOAutoIncrCnt, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOAutoIncrCnt(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCOAutoIncrCnt, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOAutoIncrCnt(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOAutoIncrCnt, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOCtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCOCtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseMasterTimebaseDiv(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOCtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseDone(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPulseDone, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxGetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOEnableInitialDelayOnRetrigger, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCOEnableInitialDelayOnRetrigger, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOEnableInitialDelayOnRetrigger(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOEnableInitialDelayOnRetrigger, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOConstrainedGenMode(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOConstrainedGenMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCOConstrainedGenMode(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCOConstrainedGenMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOConstrainedGenMode(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOConstrainedGenMode, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOUseOnlyOnBrdMem(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCODataXferMech(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCODataXferMech(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCODataXferMech(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCODataXferMech, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCODataXferReqCond(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetCODataXferReqCond(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetCODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCODataXferReqCond(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOUsbXferReqSize(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOUsbXferReqSize(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOUsbXferReqSize(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOUsbXferReqCount(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOUsbXferReqCount(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOUsbXferReqCount(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOMemMapEnable(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOMemMapEnable(taskHandle::TaskHandle, channel, data::bool32)
    ccall((:DAQmxSetCOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOMemMapEnable(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPrescaler(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCOPrescaler, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOPrescaler(taskHandle::TaskHandle, channel, data::uInt32)
    ccall((:DAQmxSetCOPrescaler, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOPrescaler(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetCOPrescaler, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetCORdyForNewVal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetCORdyForNewVal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxGetChanType(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetChanType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxGetPhysicalChanName(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetPhysicalChanName(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetPhysicalChanName, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxGetChanDescr(taskHandle::TaskHandle, channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetChanDescr, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetChanDescr(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxSetChanDescr, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, channel, data)
end

function DAQmxResetChanDescr(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetChanDescr, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetChanIsGlobal(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetChanIsGlobal, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, channel, data)
end

function DAQmxGetChanSyncUnlockBehavior(taskHandle::TaskHandle, channel, data)
    ccall((:DAQmxGetChanSyncUnlockBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, channel, data)
end

function DAQmxSetChanSyncUnlockBehavior(taskHandle::TaskHandle, channel, data::int32)
    ccall((:DAQmxSetChanSyncUnlockBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetChanSyncUnlockBehavior(taskHandle::TaskHandle, channel)
    ccall((:DAQmxResetChanSyncUnlockBehavior, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, channel)
end

function DAQmxGetDevIsSimulated(device, data)
    ccall((:DAQmxGetDevIsSimulated, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevProductCategory(device, data)
    ccall((:DAQmxGetDevProductCategory, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevProductType(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevProductType, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevProductNum(device, data)
    ccall((:DAQmxGetDevProductNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevSerialNum(device, data)
    ccall((:DAQmxGetDevSerialNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevAccessoryProductTypes(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevAccessoryProductTypes, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevAccessoryProductNums(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAccessoryProductNums, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAccessorySerialNums(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAccessorySerialNums, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetCarrierSerialNum(device, data)
    ccall((:DAQmxGetCarrierSerialNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevChassisModuleDevNames(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevChassisModuleDevNames, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevAnlgTrigSupported(device, data)
    ccall((:DAQmxGetDevAnlgTrigSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevDigTrigSupported(device, data)
    ccall((:DAQmxGetDevDigTrigSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevTimeTrigSupported(device, data)
    ccall((:DAQmxGetDevTimeTrigSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevAIPhysicalChans(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevAIPhysicalChans, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevAISupportedMeasTypes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAISupportedMeasTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIMaxSingleChanRate(device, data)
    ccall((:DAQmxGetDevAIMaxSingleChanRate, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevAIMaxMultiChanRate(device, data)
    ccall((:DAQmxGetDevAIMaxMultiChanRate, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevAIMinRate(device, data)
    ccall((:DAQmxGetDevAIMinRate, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevAISimultaneousSamplingSupported(device, data)
    ccall((:DAQmxGetDevAISimultaneousSamplingSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevAISampModes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAISampModes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAITrigUsage(device, data)
    ccall((:DAQmxGetDevAITrigUsage, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevAIVoltageRngs(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageRngs, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIVoltageIntExcitDiscreteVals(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageIntExcitDiscreteVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIVoltageIntExcitRangeVals(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIVoltageIntExcitRangeVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIChargeRngs(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIChargeRngs, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAICurrentRngs(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAICurrentRngs, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAICurrentIntExcitDiscreteVals(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAICurrentIntExcitDiscreteVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIBridgeRngs(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIBridgeRngs, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIResistanceRngs(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIResistanceRngs, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIFreqRngs(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIFreqRngs, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIGains(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIGains, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAICouplings(device, data)
    ccall((:DAQmxGetDevAICouplings, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevAILowpassCutoffFreqDiscreteVals(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAILowpassCutoffFreqDiscreteVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAILowpassCutoffFreqRangeVals(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAILowpassCutoffFreqRangeVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetAIDigFltrTypes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAIDigFltrTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIDigFltrLowpassCutoffFreqDiscreteVals(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIDigFltrLowpassCutoffFreqDiscreteVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIDigFltrLowpassCutoffFreqRangeVals(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAIDigFltrLowpassCutoffFreqRangeVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOPhysicalChans(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevAOPhysicalChans, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevAOSupportedOutputTypes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOSupportedOutputTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOSampClkSupported(device, data)
    ccall((:DAQmxGetDevAOSampClkSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevAOSampModes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOSampModes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOMaxRate(device, data)
    ccall((:DAQmxGetDevAOMaxRate, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevAOMinRate(device, data)
    ccall((:DAQmxGetDevAOMinRate, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevAOTrigUsage(device, data)
    ccall((:DAQmxGetDevAOTrigUsage, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevAOVoltageRngs(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOVoltageRngs, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOCurrentRngs(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOCurrentRngs, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOGains(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevAOGains, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevDILines(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevDILines, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevDIPorts(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevDIPorts, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevDIMaxRate(device, data)
    ccall((:DAQmxGetDevDIMaxRate, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevDITrigUsage(device, data)
    ccall((:DAQmxGetDevDITrigUsage, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevDOLines(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevDOLines, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevDOPorts(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevDOPorts, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevDOMaxRate(device, data)
    ccall((:DAQmxGetDevDOMaxRate, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevDOTrigUsage(device, data)
    ccall((:DAQmxGetDevDOTrigUsage, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevCIPhysicalChans(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevCIPhysicalChans, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevCISupportedMeasTypes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCISupportedMeasTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevCITrigUsage(device, data)
    ccall((:DAQmxGetDevCITrigUsage, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevCISampClkSupported(device, data)
    ccall((:DAQmxGetDevCISampClkSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevCISampModes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCISampModes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevCIMaxSize(device, data)
    ccall((:DAQmxGetDevCIMaxSize, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevCIMaxTimebase(device, data)
    ccall((:DAQmxGetDevCIMaxTimebase, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevCOPhysicalChans(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevCOPhysicalChans, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevCOSupportedOutputTypes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCOSupportedOutputTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevCOSampClkSupported(device, data)
    ccall((:DAQmxGetDevCOSampClkSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevCOSampModes(device, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetDevCOSampModes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevCOTrigUsage(device, data)
    ccall((:DAQmxGetDevCOTrigUsage, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevCOMaxSize(device, data)
    ccall((:DAQmxGetDevCOMaxSize, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevCOMaxTimebase(device, data)
    ccall((:DAQmxGetDevCOMaxTimebase, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), device, data)
end

function DAQmxGetDevTEDSHWTEDSSupported(device, data)
    ccall((:DAQmxGetDevTEDSHWTEDSSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), device, data)
end

function DAQmxGetDevNumDMAChans(device, data)
    ccall((:DAQmxGetDevNumDMAChans, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevBusType(device, data)
    ccall((:DAQmxGetDevBusType, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), device, data)
end

function DAQmxGetDevPCIBusNum(device, data)
    ccall((:DAQmxGetDevPCIBusNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevPCIDevNum(device, data)
    ccall((:DAQmxGetDevPCIDevNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevPXIChassisNum(device, data)
    ccall((:DAQmxGetDevPXIChassisNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevPXISlotNum(device, data)
    ccall((:DAQmxGetDevPXISlotNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevCompactDAQChassisDevName(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevCompactDAQChassisDevName, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevCompactDAQSlotNum(device, data)
    ccall((:DAQmxGetDevCompactDAQSlotNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevTCPIPHostname(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPHostname, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevTCPIPEthernetIP(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPEthernetIP, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevTCPIPWirelessIP(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevTCPIPWirelessIP, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevTerminals(device, data, bufferSize::uInt32)
    ccall((:DAQmxGetDevTerminals, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevNumTimeTrigs(device, data)
    ccall((:DAQmxGetDevNumTimeTrigs, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetDevNumTimestampEngines(device, data)
    ccall((:DAQmxGetDevNumTimestampEngines, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), device, data)
end

function DAQmxGetExportedAIConvClkOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedAIConvClkOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedAIConvClkOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedAIConvClkOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedAIConvClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIConvClkOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAIConvClkPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedAIConvClkPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxGetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExported10MHzRefClkOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExported10MHzRefClkOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExported10MHzRefClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExported10MHzRefClkOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExported20MHzTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExported20MHzTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExported20MHzTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExported20MHzTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkOutputBehavior(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedSampClkOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedSampClkOutputBehavior(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedSampClkOutputBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedSampClkOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkOutputBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedSampClkOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedSampClkOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedSampClkOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedSampClkOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkDelayOffset(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedSampClkDelayOffset, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetExportedSampClkDelayOffset(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetExportedSampClkDelayOffset, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedSampClkDelayOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkDelayOffset, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedSampClkPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedSampClkPulsePolarity(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedSampClkPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedSampClkPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedSampClkTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedDividedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedDividedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedDividedSampClkTimebaseOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDividedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvTrigOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedAdvTrigOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedAdvTrigOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedAdvTrigOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedAdvTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvTrigPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedAdvTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxGetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedAdvTrigPulseWidthUnits, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedAdvTrigPulseWidthUnits, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedAdvTrigPulseWidthUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigPulseWidthUnits, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvTrigPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedAdvTrigPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetExportedAdvTrigPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetExportedAdvTrigPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedAdvTrigPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvTrigPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedPauseTrigOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedPauseTrigOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedPauseTrigOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedPauseTrigOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedPauseTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedPauseTrigOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedPauseTrigLvlActiveLvl, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedPauseTrigLvlActiveLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedPauseTrigLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedPauseTrigLvlActiveLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRefTrigOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedRefTrigOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedRefTrigOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedRefTrigOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedRefTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRefTrigOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRefTrigPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedRefTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedRefTrigPulsePolarity(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedRefTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedRefTrigPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRefTrigPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedStartTrigOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedStartTrigOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedStartTrigOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedStartTrigOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedStartTrigOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedStartTrigOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedStartTrigPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedStartTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedStartTrigPulsePolarity(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedStartTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedStartTrigPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedStartTrigPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedAdvCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedAdvCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedAdvCmpltEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvCmpltEventDelay(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedAdvCmpltEventDelay, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetExportedAdvCmpltEventDelay(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetExportedAdvCmpltEventDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedAdvCmpltEventDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedAdvCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedAdvCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedAdvCmpltEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedAdvCmpltEventPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetExportedAdvCmpltEventPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedAdvCmpltEventPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAdvCmpltEventPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedAIHoldCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedAIHoldCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedAIHoldCmpltEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIHoldCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedAIHoldCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedAIHoldCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedAIHoldCmpltEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedAIHoldCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedChangeDetectEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedChangeDetectEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedChangeDetectEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedChangeDetectEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedChangeDetectEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedChangeDetectEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedChangeDetectEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedChangeDetectEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedCtrOutEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedCtrOutEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedCtrOutEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedCtrOutEventOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedCtrOutEventOutputBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedCtrOutEventOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventOutputBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedCtrOutEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedCtrOutEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedCtrOutEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedCtrOutEventToggleIdleState, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedCtrOutEventToggleIdleState, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedCtrOutEventToggleIdleState(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedCtrOutEventToggleIdleState, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedHshkEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedHshkEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedHshkEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedHshkEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventOutputBehavior(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedHshkEventOutputBehavior, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedHshkEventOutputBehavior(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedHshkEventOutputBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedHshkEventOutputBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventOutputBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventDelay(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedHshkEventDelay, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetExportedHshkEventDelay(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetExportedHshkEventDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedHshkEventDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedHshkEventInterlockedAssertedLvl, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedHshkEventInterlockedAssertedLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedHshkEventInterlockedAssertedLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedAssertedLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedHshkEventInterlockedAssertOnStart, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetExportedHshkEventInterlockedAssertOnStart, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetExportedHshkEventInterlockedAssertOnStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedAssertOnStart, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedHshkEventInterlockedDeassertDelay, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetExportedHshkEventInterlockedDeassertDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedHshkEventInterlockedDeassertDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventInterlockedDeassertDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventPulsePolarity(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedHshkEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedHshkEventPulsePolarity(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedHshkEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedHshkEventPulsePolarity(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedHshkEventPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetExportedHshkEventPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetExportedHshkEventPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedHshkEventPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedHshkEventPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedRdyForXferEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedRdyForXferEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedRdyForXferEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedRdyForXferEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedRdyForXferEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedRdyForXferEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedRdyForXferEventDeassertCond, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedRdyForXferEventDeassertCond, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedRdyForXferEventDeassertCond(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventDeassertCond, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedRdyForXferEventDeassertCondCustomThreshold, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetExportedRdyForXferEventDeassertCondCustomThreshold, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForXferEventDeassertCondCustomThreshold, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedDataActiveEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedDataActiveEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedDataActiveEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDataActiveEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedDataActiveEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedDataActiveEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedDataActiveEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedDataActiveEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedRdyForStartEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedRdyForStartEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedRdyForStartEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForStartEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetExportedRdyForStartEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetExportedRdyForStartEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedRdyForStartEventLvlActiveLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedRdyForStartEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedSyncPulseEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedSyncPulseEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedSyncPulseEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedSyncPulseEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetExportedWatchdogExpiredEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetExportedWatchdogExpiredEventOutputTerm, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetExportedWatchdogExpiredEventOutputTerm(taskHandle::TaskHandle)
    ccall((:DAQmxResetExportedWatchdogExpiredEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetPersistedChanAuthor(channel, data, bufferSize::uInt32)
    ccall((:DAQmxGetPersistedChanAuthor, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), channel, data, bufferSize)
end

function DAQmxGetPersistedChanAllowInteractiveEditing(channel, data)
    ccall((:DAQmxGetPersistedChanAllowInteractiveEditing, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), channel, data)
end

function DAQmxGetPersistedChanAllowInteractiveDeletion(channel, data)
    ccall((:DAQmxGetPersistedChanAllowInteractiveDeletion, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), channel, data)
end

function DAQmxGetPersistedScaleAuthor(scaleName, data, bufferSize::uInt32)
    ccall((:DAQmxGetPersistedScaleAuthor, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), scaleName, data, bufferSize)
end

function DAQmxGetPersistedScaleAllowInteractiveEditing(scaleName, data)
    ccall((:DAQmxGetPersistedScaleAllowInteractiveEditing, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), scaleName, data)
end

function DAQmxGetPersistedScaleAllowInteractiveDeletion(scaleName, data)
    ccall((:DAQmxGetPersistedScaleAllowInteractiveDeletion, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), scaleName, data)
end

function DAQmxGetPersistedTaskAuthor(taskName, data, bufferSize::uInt32)
    ccall((:DAQmxGetPersistedTaskAuthor, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), taskName, data, bufferSize)
end

function DAQmxGetPersistedTaskAllowInteractiveEditing(taskName, data)
    ccall((:DAQmxGetPersistedTaskAllowInteractiveEditing, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), taskName, data)
end

function DAQmxGetPersistedTaskAllowInteractiveDeletion(taskName, data)
    ccall((:DAQmxGetPersistedTaskAllowInteractiveDeletion, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), taskName, data)
end

function DAQmxGetPhysicalChanAISupportedMeasTypes(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanAISupportedMeasTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanAITermCfgs(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanAITermCfgs, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAIInputSrcs(physicalChannel, data, bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanAIInputSrcs, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), physicalChannel, data, bufferSize)
end

function DAQmxGetPhysicalChanAOSupportedOutputTypes(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanAOSupportedOutputTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanAOSupportedPowerUpOutputTypes(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanAOSupportedPowerUpOutputTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanAOTermCfgs(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanAOTermCfgs, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAOManualControlEnable(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanAOManualControlEnable, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), physicalChannel, data)
end

function DAQmxSetPhysicalChanAOManualControlEnable(physicalChannel, data::bool32)
    ccall((:DAQmxSetPhysicalChanAOManualControlEnable, NIDAQmx), int32, (Ref{UInt8}, bool32), physicalChannel, data)
end

function DAQmxResetPhysicalChanAOManualControlEnable(physicalChannel)
    ccall((:DAQmxResetPhysicalChanAOManualControlEnable, NIDAQmx), int32, (Ref{UInt8},), physicalChannel)
end

function DAQmxGetPhysicalChanAOManualControlShortDetected(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanAOManualControlShortDetected, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAOManualControlAmplitude(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanAOManualControlAmplitude, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAOManualControlFreq(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanAOManualControlFreq, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), physicalChannel, data)
end

function DAQmxGetAOPowerAmpChannelEnable(physicalChannel, data)
    ccall((:DAQmxGetAOPowerAmpChannelEnable, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), physicalChannel, data)
end

function DAQmxSetAOPowerAmpChannelEnable(physicalChannel, data::bool32)
    ccall((:DAQmxSetAOPowerAmpChannelEnable, NIDAQmx), int32, (Ref{UInt8}, bool32), physicalChannel, data)
end

function DAQmxResetAOPowerAmpChannelEnable(physicalChannel)
    ccall((:DAQmxResetAOPowerAmpChannelEnable, NIDAQmx), int32, (Ref{UInt8},), physicalChannel)
end

function DAQmxGetAOPowerAmpScalingCoeff(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAOPowerAmpScalingCoeff, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetAOPowerAmpOvercurrent(physicalChannel, data)
    ccall((:DAQmxGetAOPowerAmpOvercurrent, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), physicalChannel, data)
end

function DAQmxGetAOPowerAmpGain(physicalChannel, data)
    ccall((:DAQmxGetAOPowerAmpGain, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), physicalChannel, data)
end

function DAQmxGetAOPowerAmpOffset(physicalChannel, data)
    ccall((:DAQmxGetAOPowerAmpOffset, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDIPortWidth(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanDIPortWidth, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDISampClkSupported(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanDISampClkSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDISampModes(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanDISampModes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanDIChangeDetectSupported(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanDIChangeDetectSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDOPortWidth(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanDOPortWidth, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDOSampClkSupported(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanDOSampClkSupported, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDOSampModes(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanDOSampModes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanCISupportedMeasTypes(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanCISupportedMeasTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanCOSupportedOutputTypes(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanCOSupportedOutputTypes, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanTEDSMfgID(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanTEDSMfgID, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanTEDSModelNum(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanTEDSModelNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanTEDSSerialNum(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanTEDSSerialNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanTEDSVersionNum(physicalChannel, data)
    ccall((:DAQmxGetPhysicalChanTEDSVersionNum, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanTEDSVersionLetter(physicalChannel, data, bufferSize::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSVersionLetter, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), physicalChannel, data, bufferSize)
end

function DAQmxGetPhysicalChanTEDSBitStream(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSBitStream, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt8}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanTEDSTemplateIDs(physicalChannel, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetPhysicalChanTEDSTemplateIDs, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetReadRelativeTo(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadRelativeTo, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetReadRelativeTo(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetReadRelativeTo, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetReadRelativeTo(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadRelativeTo, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadOffset(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadOffset, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetReadOffset(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetReadOffset, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetReadOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadOffset, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadChannelsToRead(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadChannelsToRead, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetReadChannelsToRead(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetReadChannelsToRead, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetReadChannelsToRead(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadChannelsToRead, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadReadAllAvailSamp(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadReadAllAvailSamp, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetReadReadAllAvailSamp(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetReadReadAllAvailSamp, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetReadReadAllAvailSamp(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadReadAllAvailSamp, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadAutoStart(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadAutoStart, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetReadAutoStart(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetReadAutoStart, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetReadAutoStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadAutoStart, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadOverWrite(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadOverWrite, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetReadOverWrite(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetReadOverWrite, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetReadOverWrite(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadOverWrite, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingFilePath(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetLoggingFilePath, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetLoggingFilePath(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetLoggingFilePath, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetLoggingFilePath(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFilePath, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetLoggingMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetLoggingMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetLoggingMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetLoggingMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingTDMSGroupName(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetLoggingTDMSGroupName, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetLoggingTDMSGroupName(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetLoggingTDMSGroupName, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetLoggingTDMSGroupName(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingTDMSGroupName, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingTDMSOperation(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetLoggingTDMSOperation, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetLoggingTDMSOperation(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetLoggingTDMSOperation, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetLoggingTDMSOperation(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingTDMSOperation, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingPause(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetLoggingPause, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetLoggingPause(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetLoggingPause, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetLoggingPause(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingPause, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingSampsPerFile(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetLoggingSampsPerFile, NIDAQmx), int32, (TaskHandle, Ref{uInt64}), taskHandle, data)
end

function DAQmxSetLoggingSampsPerFile(taskHandle::TaskHandle, data::uInt64)
    ccall((:DAQmxSetLoggingSampsPerFile, NIDAQmx), int32, (TaskHandle, uInt64), taskHandle, data)
end

function DAQmxResetLoggingSampsPerFile(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingSampsPerFile, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingFileWriteSize(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetLoggingFileWriteSize, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetLoggingFileWriteSize(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetLoggingFileWriteSize, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetLoggingFileWriteSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFileWriteSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingFilePreallocationSize(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetLoggingFilePreallocationSize, NIDAQmx), int32, (TaskHandle, Ref{uInt64}), taskHandle, data)
end

function DAQmxSetLoggingFilePreallocationSize(taskHandle::TaskHandle, data::uInt64)
    ccall((:DAQmxSetLoggingFilePreallocationSize, NIDAQmx), int32, (TaskHandle, uInt64), taskHandle, data)
end

function DAQmxResetLoggingFilePreallocationSize(taskHandle::TaskHandle)
    ccall((:DAQmxResetLoggingFilePreallocationSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadCurrReadPos(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadCurrReadPos, NIDAQmx), int32, (TaskHandle, Ref{uInt64}), taskHandle, data)
end

function DAQmxGetReadAvailSampPerChan(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadAvailSampPerChan, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetReadTotalSampPerChanAcquired(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadTotalSampPerChanAcquired, NIDAQmx), int32, (TaskHandle, Ref{uInt64}), taskHandle, data)
end

function DAQmxGetReadCommonModeRangeErrorChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadCommonModeRangeErrorChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadCommonModeRangeErrorChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadCommonModeRangeErrorChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadExcitFaultChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadExcitFaultChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadExcitFaultChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadExcitFaultChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOvercurrentChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadOvercurrentChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadOvercurrentChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadOvercurrentChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOvertemperatureChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadOvertemperatureChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadOvertemperatureChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadOvertemperatureChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOpenChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadOpenChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadOpenChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadOpenChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOpenChansDetails(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadOpenChansDetails, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOpenCurrentLoopChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadOpenCurrentLoopChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadOpenCurrentLoopChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadOpenCurrentLoopChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOpenThrmcplChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadOpenThrmcplChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadOpenThrmcplChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadOpenThrmcplChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOverloadedChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadOverloadedChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadOverloadedChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadOverloadedChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadPLLUnlockedChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadPLLUnlockedChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadPLLUnlockedChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadPLLUnlockedChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadSyncUnlockedChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadSyncUnlockedChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadSyncUnlockedChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadSyncUnlockedChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadAccessoryInsertionOrRemovalDetected(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadAccessoryInsertionOrRemovalDetected, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadDevsWithInsertedOrRemovedAccessories(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetReadDevsWithInsertedOrRemovedAccessories, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadChangeDetectHasOverflowed(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadChangeDetectHasOverflowed, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetReadRawDataWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadRawDataWidth, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetReadNumChans(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadNumChans, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetReadDigitalLinesBytesPerChan(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadDigitalLinesBytesPerChan, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetReadWaitMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadWaitMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetReadWaitMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetReadWaitMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetReadWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadWaitMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadSleepTime(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetReadSleepTime, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetReadSleepTime(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetReadSleepTime, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetReadSleepTime(taskHandle::TaskHandle)
    ccall((:DAQmxResetReadSleepTime, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRealTimeConvLateErrorsToWarnings, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetRealTimeConvLateErrorsToWarnings, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRealTimeConvLateErrorsToWarnings(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeConvLateErrorsToWarnings, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeNumOfWarmupIters(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRealTimeNumOfWarmupIters, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetRealTimeNumOfWarmupIters(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetRealTimeNumOfWarmupIters, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetRealTimeNumOfWarmupIters(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeNumOfWarmupIters, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRealTimeWaitForNextSampClkWaitMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetRealTimeWaitForNextSampClkWaitMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetRealTimeWaitForNextSampClkWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeWaitForNextSampClkWaitMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeReportMissedSamp(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRealTimeReportMissedSamp, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetRealTimeReportMissedSamp(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetRealTimeReportMissedSamp, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRealTimeReportMissedSamp(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeReportMissedSamp, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeWriteRecoveryMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRealTimeWriteRecoveryMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetRealTimeWriteRecoveryMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetRealTimeWriteRecoveryMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetRealTimeWriteRecoveryMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetRealTimeWriteRecoveryMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetScaleDescr(scaleName, data, bufferSize::uInt32)
    ccall((:DAQmxGetScaleDescr, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), scaleName, data, bufferSize)
end

function DAQmxSetScaleDescr(scaleName, data)
    ccall((:DAQmxSetScaleDescr, NIDAQmx), int32, (Ref{UInt8}, Cstring), scaleName, data)
end

function DAQmxGetScaleScaledUnits(scaleName, data, bufferSize::uInt32)
    ccall((:DAQmxGetScaleScaledUnits, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), scaleName, data, bufferSize)
end

function DAQmxSetScaleScaledUnits(scaleName, data)
    ccall((:DAQmxSetScaleScaledUnits, NIDAQmx), int32, (Ref{UInt8}, Cstring), scaleName, data)
end

function DAQmxGetScalePreScaledUnits(scaleName, data)
    ccall((:DAQmxGetScalePreScaledUnits, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), scaleName, data)
end

function DAQmxSetScalePreScaledUnits(scaleName, data::int32)
    ccall((:DAQmxSetScalePreScaledUnits, NIDAQmx), int32, (Ref{UInt8}, int32), scaleName, data)
end

function DAQmxGetScaleType(scaleName, data)
    ccall((:DAQmxGetScaleType, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), scaleName, data)
end

function DAQmxGetScaleLinSlope(scaleName, data)
    ccall((:DAQmxGetScaleLinSlope, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), scaleName, data)
end

function DAQmxSetScaleLinSlope(scaleName, data::float64)
    ccall((:DAQmxSetScaleLinSlope, NIDAQmx), int32, (Ref{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleLinYIntercept(scaleName, data)
    ccall((:DAQmxGetScaleLinYIntercept, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), scaleName, data)
end

function DAQmxSetScaleLinYIntercept(scaleName, data::float64)
    ccall((:DAQmxSetScaleLinYIntercept, NIDAQmx), int32, (Ref{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleMapScaledMax(scaleName, data)
    ccall((:DAQmxGetScaleMapScaledMax, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), scaleName, data)
end

function DAQmxSetScaleMapScaledMax(scaleName, data::float64)
    ccall((:DAQmxSetScaleMapScaledMax, NIDAQmx), int32, (Ref{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleMapPreScaledMax(scaleName, data)
    ccall((:DAQmxGetScaleMapPreScaledMax, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), scaleName, data)
end

function DAQmxSetScaleMapPreScaledMax(scaleName, data::float64)
    ccall((:DAQmxSetScaleMapPreScaledMax, NIDAQmx), int32, (Ref{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleMapScaledMin(scaleName, data)
    ccall((:DAQmxGetScaleMapScaledMin, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), scaleName, data)
end

function DAQmxSetScaleMapScaledMin(scaleName, data::float64)
    ccall((:DAQmxSetScaleMapScaledMin, NIDAQmx), int32, (Ref{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleMapPreScaledMin(scaleName, data)
    ccall((:DAQmxGetScaleMapPreScaledMin, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), scaleName, data)
end

function DAQmxSetScaleMapPreScaledMin(scaleName, data::float64)
    ccall((:DAQmxSetScaleMapPreScaledMin, NIDAQmx), int32, (Ref{UInt8}, float64), scaleName, data)
end

function DAQmxGetScalePolyForwardCoeff(scaleName, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetScalePolyForwardCoeff, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxSetScalePolyForwardCoeff(scaleName, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetScalePolyForwardCoeff, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxGetScalePolyReverseCoeff(scaleName, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetScalePolyReverseCoeff, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxSetScalePolyReverseCoeff(scaleName, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetScalePolyReverseCoeff, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxGetScaleTableScaledVals(scaleName, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetScaleTableScaledVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxSetScaleTableScaledVals(scaleName, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetScaleTableScaledVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxGetScaleTablePreScaledVals(scaleName, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetScaleTablePreScaledVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxSetScaleTablePreScaledVals(scaleName, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetScaleTablePreScaledVals, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxGetSwitchChanUsage(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanUsage, NIDAQmx), int32, (Ref{UInt8}, Ref{int32}), switchChannelName, data)
end

function DAQmxSetSwitchChanUsage(switchChannelName, data::int32)
    ccall((:DAQmxSetSwitchChanUsage, NIDAQmx), int32, (Ref{UInt8}, int32), switchChannelName, data)
end

function DAQmxGetSwitchChanAnlgBusSharingEnable(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanAnlgBusSharingEnable, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), switchChannelName, data)
end

function DAQmxSetSwitchChanAnlgBusSharingEnable(switchChannelName, data::bool32)
    ccall((:DAQmxSetSwitchChanAnlgBusSharingEnable, NIDAQmx), int32, (Ref{UInt8}, bool32), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACCarryCurrent(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxACCarryCurrent, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACSwitchCurrent(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxACSwitchCurrent, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACCarryPwr(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxACCarryPwr, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACSwitchPwr(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxACSwitchPwr, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCCarryCurrent(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxDCCarryCurrent, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCSwitchCurrent(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxDCSwitchCurrent, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCCarryPwr(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxDCCarryPwr, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCSwitchPwr(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxDCSwitchPwr, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACVoltage(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxACVoltage, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCVoltage(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanMaxDCVoltage, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanWireMode(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanWireMode, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), switchChannelName, data)
end

function DAQmxGetSwitchChanBandwidth(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanBandwidth, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanImpedance(switchChannelName, data)
    ccall((:DAQmxGetSwitchChanImpedance, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), switchChannelName, data)
end

function DAQmxGetSwitchDevSettlingTime(deviceName, data)
    ccall((:DAQmxGetSwitchDevSettlingTime, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), deviceName, data)
end

function DAQmxSetSwitchDevSettlingTime(deviceName, data::float64)
    ccall((:DAQmxSetSwitchDevSettlingTime, NIDAQmx), int32, (Ref{UInt8}, float64), deviceName, data)
end

function DAQmxGetSwitchDevAutoConnAnlgBus(deviceName, data)
    ccall((:DAQmxGetSwitchDevAutoConnAnlgBus, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), deviceName, data)
end

function DAQmxSetSwitchDevAutoConnAnlgBus(deviceName, data::bool32)
    ccall((:DAQmxSetSwitchDevAutoConnAnlgBus, NIDAQmx), int32, (Ref{UInt8}, bool32), deviceName, data)
end

function DAQmxGetSwitchDevPwrDownLatchRelaysAfterSettling(deviceName, data)
    ccall((:DAQmxGetSwitchDevPwrDownLatchRelaysAfterSettling, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), deviceName, data)
end

function DAQmxSetSwitchDevPwrDownLatchRelaysAfterSettling(deviceName, data::bool32)
    ccall((:DAQmxSetSwitchDevPwrDownLatchRelaysAfterSettling, NIDAQmx), int32, (Ref{UInt8}, bool32), deviceName, data)
end

function DAQmxGetSwitchDevSettled(deviceName, data)
    ccall((:DAQmxGetSwitchDevSettled, NIDAQmx), int32, (Ref{UInt8}, Ref{bool32}), deviceName, data)
end

function DAQmxGetSwitchDevRelayList(deviceName, data, bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevRelayList, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), deviceName, data, bufferSize)
end

function DAQmxGetSwitchDevNumRelays(deviceName, data)
    ccall((:DAQmxGetSwitchDevNumRelays, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), deviceName, data)
end

function DAQmxGetSwitchDevSwitchChanList(deviceName, data, bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevSwitchChanList, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), deviceName, data, bufferSize)
end

function DAQmxGetSwitchDevNumSwitchChans(deviceName, data)
    ccall((:DAQmxGetSwitchDevNumSwitchChans, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), deviceName, data)
end

function DAQmxGetSwitchDevNumRows(deviceName, data)
    ccall((:DAQmxGetSwitchDevNumRows, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), deviceName, data)
end

function DAQmxGetSwitchDevNumColumns(deviceName, data)
    ccall((:DAQmxGetSwitchDevNumColumns, NIDAQmx), int32, (Ref{UInt8}, Ref{uInt32}), deviceName, data)
end

function DAQmxGetSwitchDevTopology(deviceName, data, bufferSize::uInt32)
    ccall((:DAQmxGetSwitchDevTopology, NIDAQmx), int32, (Ref{UInt8}, Cstring, uInt32), deviceName, data, bufferSize)
end

function DAQmxGetSwitchDevTemperature(deviceName, data)
    ccall((:DAQmxGetSwitchDevTemperature, NIDAQmx), int32, (Ref{UInt8}, Ref{float64}), deviceName, data)
end

function DAQmxGetSwitchScanBreakMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSwitchScanBreakMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSwitchScanBreakMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSwitchScanBreakMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSwitchScanBreakMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSwitchScanBreakMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSwitchScanRepeatMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSwitchScanRepeatMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSwitchScanRepeatMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSwitchScanRepeatMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSwitchScanRepeatMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSwitchScanRepeatMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSwitchScanWaitingForAdv(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSwitchScanWaitingForAdv, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetSysGlobalChans(data, bufferSize::uInt32)
    ccall((:DAQmxGetSysGlobalChans, NIDAQmx), int32, (Cstring, uInt32), data, bufferSize)
end

function DAQmxGetSysScales(data, bufferSize::uInt32)
    ccall((:DAQmxGetSysScales, NIDAQmx), int32, (Cstring, uInt32), data, bufferSize)
end

function DAQmxGetSysTasks(data, bufferSize::uInt32)
    ccall((:DAQmxGetSysTasks, NIDAQmx), int32, (Cstring, uInt32), data, bufferSize)
end

function DAQmxGetSysDevNames(data, bufferSize::uInt32)
    ccall((:DAQmxGetSysDevNames, NIDAQmx), int32, (Cstring, uInt32), data, bufferSize)
end

function DAQmxGetSysNIDAQMajorVersion(data)
    ccall((:DAQmxGetSysNIDAQMajorVersion, NIDAQmx), int32, (Ref{uInt32},), data)
end

function DAQmxGetSysNIDAQMinorVersion(data)
    ccall((:DAQmxGetSysNIDAQMinorVersion, NIDAQmx), int32, (Ref{uInt32},), data)
end

function DAQmxGetSysNIDAQUpdateVersion(data)
    ccall((:DAQmxGetSysNIDAQUpdateVersion, NIDAQmx), int32, (Ref{uInt32},), data)
end

function DAQmxGetTaskName(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetTaskName, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetTaskChannels(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetTaskChannels, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetTaskNumChans(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetTaskNumChans, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetTaskDevices(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetTaskDevices, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetTaskNumDevices(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetTaskNumDevices, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetTaskComplete(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetTaskComplete, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetSampQuantSampMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampQuantSampMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSampQuantSampMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSampQuantSampMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampQuantSampMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampQuantSampMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampQuantSampPerChan(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampQuantSampPerChan, NIDAQmx), int32, (TaskHandle, Ref{uInt64}), taskHandle, data)
end

function DAQmxSetSampQuantSampPerChan(taskHandle::TaskHandle, data::uInt64)
    ccall((:DAQmxSetSampQuantSampPerChan, NIDAQmx), int32, (TaskHandle, uInt64), taskHandle, data)
end

function DAQmxResetSampQuantSampPerChan(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampQuantSampPerChan, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampTimingType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampTimingType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSampTimingType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSampTimingType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampTimingType(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampTimingType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetSampClkRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetSampClkRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSampClkRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkMaxRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkMaxRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxGetSampClkSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetSampClkSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetSampClkSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetSampClkSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetSampClkSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkActiveEdge(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSampClkActiveEdge(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSampClkActiveEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkActiveEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkOverrunBehavior(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSampClkOverrunBehavior(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkOverrunBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkUnderflowBehavior(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkUnderflowBehavior, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSampClkUnderflowBehavior(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSampClkUnderflowBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkUnderflowBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkUnderflowBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseDiv(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetSampClkTimebaseDiv(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetSampClkTimebaseDiv, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetSampClkTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseDiv, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetSampClkTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetSampClkTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetSampClkTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSampClkTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetSampClkTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetSampClkTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetSampClkTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseActiveEdge(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSampClkTimebaseActiveEdge(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSampClkTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkTimebaseActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetSampClkTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetSampClkTimebaseMasterTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetSampClkTimebaseTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetSampClkDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetSampClkDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetSampClkDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetSampClkDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetSampClkDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSampClkDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetSampClkDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetSampClkDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetSampClkDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetSampClkDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSampClkDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetSampClkDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetSampClkDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetSampClkDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkWriteWfmUseInitialWfmDT(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkWriteWfmUseInitialWfmDT, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetSampClkWriteWfmUseInitialWfmDT(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetSampClkWriteWfmUseInitialWfmDT, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetSampClkWriteWfmUseInitialWfmDT(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkWriteWfmUseInitialWfmDT, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetHshkDelayAfterXfer(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetHshkDelayAfterXfer, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetHshkDelayAfterXfer(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetHshkDelayAfterXfer, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetHshkDelayAfterXfer(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkDelayAfterXfer, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetHshkStartCond(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetHshkStartCond, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetHshkStartCond(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetHshkStartCond, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetHshkStartCond(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkStartCond, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetHshkSampleInputDataWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetHshkSampleInputDataWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetHshkSampleInputDataWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetHshkSampleInputDataWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetHshkSampleInputDataWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkSampleInputDataWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetChangeDetectDIRisingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetChangeDetectDIRisingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetChangeDetectDIRisingEdgePhysicalChans(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDIRisingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetChangeDetectDIFallingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetChangeDetectDIFallingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetChangeDetectDIFallingEdgePhysicalChans(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDIFallingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetChangeDetectDITristate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetChangeDetectDITristate, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetChangeDetectDITristate(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetChangeDetectDITristate, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetChangeDetectDITristate(taskHandle::TaskHandle)
    ccall((:DAQmxResetChangeDetectDITristate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetOnDemandSimultaneousAOEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetOnDemandSimultaneousAOEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetOnDemandSimultaneousAOEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetOnDemandSimultaneousAOEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetImplicitUnderflowBehavior(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetImplicitUnderflowBehavior, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetImplicitUnderflowBehavior(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetImplicitUnderflowBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetImplicitUnderflowBehavior(taskHandle::TaskHandle)
    ccall((:DAQmxResetImplicitUnderflowBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAIConvRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAIConvRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAIConvRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvRateEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvRateEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvRateEx(taskHandle::TaskHandle, deviceNames, data::float64)
    ccall((:DAQmxSetAIConvRateEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvRateEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvRateEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvMaxRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvMaxRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxGetAIConvMaxRateEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvMaxRateEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, deviceNames, data)
end

function DAQmxGetAIConvSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIConvSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAIConvSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAIConvSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAIConvSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvSrcEx(taskHandle::TaskHandle, deviceNames, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIConvSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, deviceNames, data, bufferSize)
end

function DAQmxSetAIConvSrcEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxSetAIConvSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvSrcEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvActiveEdge(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvActiveEdge, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAIConvActiveEdge(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAIConvActiveEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAIConvActiveEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvActiveEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvActiveEdgeEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvActiveEdgeEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvActiveEdgeEx(taskHandle::TaskHandle, deviceNames, data::int32)
    ccall((:DAQmxSetAIConvActiveEdgeEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvActiveEdgeEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvActiveEdgeEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvTimebaseDiv(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetAIConvTimebaseDiv(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetAIConvTimebaseDiv, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetAIConvTimebaseDiv(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvTimebaseDiv, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvTimebaseDivEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvTimebaseDivEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{uInt32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvTimebaseDivEx(taskHandle::TaskHandle, deviceNames, data::uInt32)
    ccall((:DAQmxSetAIConvTimebaseDivEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, uInt32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvTimebaseDivEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvTimebaseDivEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAIConvTimebaseSrc(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAIConvTimebaseSrc, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAIConvTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvTimebaseSrcEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvTimebaseSrcEx(taskHandle::TaskHandle, deviceNames, data::int32)
    ccall((:DAQmxSetAIConvTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvTimebaseSrcEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetDelayFromSampClkDelayUnits(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDelayFromSampClkDelayUnits, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDelayFromSampClkDelayUnits(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDelayFromSampClkDelayUnits, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDelayFromSampClkDelayUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetDelayFromSampClkDelayUnits, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetDelayFromSampClkDelayUnitsEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, deviceNames, data)
end

function DAQmxSetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle, deviceNames, data::int32)
    ccall((:DAQmxSetDelayFromSampClkDelayUnitsEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, deviceNames, data)
end

function DAQmxResetDelayFromSampClkDelayUnitsEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetDelayFromSampClkDelayUnitsEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetDelayFromSampClkDelay(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDelayFromSampClkDelay, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDelayFromSampClkDelay(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDelayFromSampClkDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDelayFromSampClkDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetDelayFromSampClkDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDelayFromSampClkDelayEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetDelayFromSampClkDelayEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, deviceNames, data)
end

function DAQmxSetDelayFromSampClkDelayEx(taskHandle::TaskHandle, deviceNames, data::float64)
    ccall((:DAQmxSetDelayFromSampClkDelayEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, deviceNames, data)
end

function DAQmxResetDelayFromSampClkDelayEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetDelayFromSampClkDelayEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAIConvDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAIConvDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAIConvDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigFltrEnableEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvDigFltrEnableEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvDigFltrEnableEx(taskHandle::TaskHandle, deviceNames, data::bool32)
    ccall((:DAQmxSetAIConvDigFltrEnableEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigFltrEnableEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvDigFltrEnableEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAIConvDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAIConvDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvDigFltrMinPulseWidthEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle, deviceNames, data::float64)
    ccall((:DAQmxSetAIConvDigFltrMinPulseWidthEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigFltrMinPulseWidthEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvDigFltrMinPulseWidthEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIConvDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAIConvDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAIConvDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle, deviceNames, data, bufferSize::uInt32)
    ccall((:DAQmxGetAIConvDigFltrTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring, uInt32), taskHandle, deviceNames, data, bufferSize)
end

function DAQmxSetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxSetAIConvDigFltrTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Cstring), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigFltrTimebaseSrcEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvDigFltrTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAIConvDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAIConvDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvDigFltrTimebaseRateEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle, deviceNames, data::float64)
    ccall((:DAQmxSetAIConvDigFltrTimebaseRateEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigFltrTimebaseRateEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvDigFltrTimebaseRateEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAIConvDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAIConvDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAIConvDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAIConvDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAIConvDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigSyncEnableEx(taskHandle::TaskHandle, deviceNames, data)
    ccall((:DAQmxGetAIConvDigSyncEnableEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{bool32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvDigSyncEnableEx(taskHandle::TaskHandle, deviceNames, data::bool32)
    ccall((:DAQmxSetAIConvDigSyncEnableEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, bool32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigSyncEnableEx(taskHandle::TaskHandle, deviceNames)
    ccall((:DAQmxResetAIConvDigSyncEnableEx, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetMasterTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetMasterTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetMasterTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetMasterTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetMasterTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetMasterTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetMasterTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetMasterTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetMasterTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetMasterTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetMasterTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetMasterTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefClkRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefClkRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetRefClkRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetRefClkRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetRefClkRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefClkRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefClkSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetRefClkSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetRefClkSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetRefClkSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetRefClkSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefClkSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSyncPulseType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSyncPulseType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSyncPulseType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSyncPulseType(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetSyncPulseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetSyncPulseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetSyncPulseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetSyncPulseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseTimeWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSyncPulseTimeWhen, NIDAQmx), int32, (TaskHandle, Ref{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxSetSyncPulseTimeWhen(taskHandle::TaskHandle, data::CVIAbsoluteTime)
    ccall((:DAQmxSetSyncPulseTimeWhen, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime), taskHandle, data)
end

function DAQmxResetSyncPulseTimeWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseTimeWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseTimeTimescale(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSyncPulseTimeTimescale, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSyncPulseTimeTimescale(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSyncPulseTimeTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSyncPulseTimeTimescale(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseTimeTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseSyncTime(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSyncPulseSyncTime, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxGetSyncPulseMinDelayToStart(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSyncPulseMinDelayToStart, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetSyncPulseMinDelayToStart(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetSyncPulseMinDelayToStart, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSyncPulseMinDelayToStart(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseMinDelayToStart, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseResetTime(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSyncPulseResetTime, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxGetSyncPulseResetDelay(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSyncPulseResetDelay, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetSyncPulseResetDelay(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetSyncPulseResetDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSyncPulseResetDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncPulseResetDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetSyncPulseTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetSyncClkInterval(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSyncClkInterval, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetSyncClkInterval(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetSyncClkInterval, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetSyncClkInterval(taskHandle::TaskHandle)
    ccall((:DAQmxResetSyncClkInterval, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampTimingEngine(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampTimingEngine, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetSampTimingEngine(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetSampTimingEngine, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetSampTimingEngine(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampTimingEngine, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetFirstSampTimestampEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetFirstSampTimestampEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetFirstSampTimestampEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetFirstSampTimestampEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetFirstSampTimestampEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetFirstSampTimestampEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetFirstSampTimestampTimescale(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetFirstSampTimestampTimescale, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetFirstSampTimestampTimescale(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetFirstSampTimestampTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetFirstSampTimestampTimescale(taskHandle::TaskHandle)
    ccall((:DAQmxResetFirstSampTimestampTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetFirstSampTimestampVal(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetFirstSampTimestampVal, NIDAQmx), int32, (TaskHandle, Ref{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxGetStartTrigType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetStartTrigType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetStartTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetStartTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetStartTrigTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetDigEdgeStartTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeStartTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigEdge(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeStartTrigEdge, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigEdge(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigEdgeStartTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDigEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternStartTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternStartTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigPatternStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigPatternStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternStartTrigPattern(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternStartTrigPattern, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternStartTrigPattern(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigPatternStartTrigPattern, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigPatternStartTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigPattern, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternStartTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigPatternStartTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigPatternStartTrigWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigPatternStartTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigPatternStartTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternStartTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeStartTrigSlope, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgEdgeStartTrigSlope, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigSlope(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigSlope, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeStartTrigLvl, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigLvl, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeStartTrigHyst, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigHyst, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigHyst, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeStartTrigCoupling, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgEdgeStartTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigSrcs(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeStartTrigSrcs, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgMultiEdgeStartTrigSrcs(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgMultiEdgeStartTrigSrcs, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgMultiEdgeStartTrigSrcs(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeStartTrigSrcs, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigSlopes(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeStartTrigSlopes, NIDAQmx), int32, (TaskHandle, Ref{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeStartTrigSlopes(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAnlgMultiEdgeStartTrigSlopes, NIDAQmx), int32, (TaskHandle, Ref{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeStartTrigSlopes(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeStartTrigSlopes, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigLvls(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeStartTrigLvls, NIDAQmx), int32, (TaskHandle, Ref{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeStartTrigLvls(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAnlgMultiEdgeStartTrigLvls, NIDAQmx), int32, (TaskHandle, Ref{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeStartTrigLvls(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeStartTrigLvls, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigHysts(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeStartTrigHysts, NIDAQmx), int32, (TaskHandle, Ref{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeStartTrigHysts(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAnlgMultiEdgeStartTrigHysts, NIDAQmx), int32, (TaskHandle, Ref{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeStartTrigHysts(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeStartTrigHysts, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigCouplings(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeStartTrigCouplings, NIDAQmx), int32, (TaskHandle, Ref{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeStartTrigCouplings(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAnlgMultiEdgeStartTrigCouplings, NIDAQmx), int32, (TaskHandle, Ref{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeStartTrigCouplings(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeStartTrigCouplings, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinStartTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgWinStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinStartTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgWinStartTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigTop(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinStartTrigTop, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigTop(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigTop, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigTop, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigBtm(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinStartTrigBtm, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigBtm(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigBtm, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigBtm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigCoupling(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinStartTrigCoupling, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigCoupling(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgWinStartTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgWinStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxSetStartTrigTrigWhen(taskHandle::TaskHandle, data::CVIAbsoluteTime)
    ccall((:DAQmxSetStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime), taskHandle, data)
end

function DAQmxResetStartTrigTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTimescale(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigTimescale, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetStartTrigTimescale(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetStartTrigTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetStartTrigTimescale(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTimestampEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetStartTrigTimestampEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetStartTrigTimestampEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTimestampTimescale(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetStartTrigTimestampTimescale(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetStartTrigTimestampTimescale(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTimestampVal(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigTimestampVal, NIDAQmx), int32, (TaskHandle, Ref{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxGetStartTrigDelay(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigDelay, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetStartTrigDelay(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetStartTrigDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetStartTrigDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigDelayUnits(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigDelayUnits, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetStartTrigDelayUnits(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetStartTrigDelayUnits, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetStartTrigDelayUnits(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigDelayUnits, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigRetriggerable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigRetriggerable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetStartTrigRetriggerable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetStartTrigRetriggerable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetStartTrigRetriggerable(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigRetriggerable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTrigWin(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigTrigWin, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetStartTrigTrigWin(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetStartTrigTrigWin, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetStartTrigTrigWin(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigTrigWin, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigRetriggerWin(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigRetriggerWin, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetStartTrigRetriggerWin(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetStartTrigRetriggerWin, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetStartTrigRetriggerWin(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigRetriggerWin, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigMaxNumTrigsToDetect(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetStartTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetStartTrigMaxNumTrigsToDetect(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetStartTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetStartTrigMaxNumTrigsToDetect(taskHandle::TaskHandle)
    ccall((:DAQmxResetStartTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetRefTrigType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetRefTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetRefTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigPretrigSamples(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigPretrigSamples, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetRefTrigPretrigSamples(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetRefTrigPretrigSamples, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetRefTrigPretrigSamples(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigPretrigSamples, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetRefTrigTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetDigEdgeRefTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeRefTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigEdge(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeRefTrigEdge, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigEdge(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigEdgeRefTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDigEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternRefTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternRefTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternRefTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigPatternRefTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigPatternRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternRefTrigPattern(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternRefTrigPattern, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternRefTrigPattern(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigPatternRefTrigPattern, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigPatternRefTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigPattern, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternRefTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigPatternRefTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigPatternRefTrigWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigPatternRefTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigPatternRefTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternRefTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeRefTrigSlope, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgEdgeRefTrigSlope, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigSlope(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigSlope, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeRefTrigLvl, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigLvl, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeRefTrigHyst, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigHyst, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigHyst, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeRefTrigCoupling, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgEdgeRefTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigSrcs(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeRefTrigSrcs, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgMultiEdgeRefTrigSrcs(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgMultiEdgeRefTrigSrcs, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgMultiEdgeRefTrigSrcs(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeRefTrigSrcs, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigSlopes(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeRefTrigSlopes, NIDAQmx), int32, (TaskHandle, Ref{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeRefTrigSlopes(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAnlgMultiEdgeRefTrigSlopes, NIDAQmx), int32, (TaskHandle, Ref{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeRefTrigSlopes(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeRefTrigSlopes, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigLvls(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeRefTrigLvls, NIDAQmx), int32, (TaskHandle, Ref{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeRefTrigLvls(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAnlgMultiEdgeRefTrigLvls, NIDAQmx), int32, (TaskHandle, Ref{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeRefTrigLvls(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeRefTrigLvls, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigHysts(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeRefTrigHysts, NIDAQmx), int32, (TaskHandle, Ref{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeRefTrigHysts(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAnlgMultiEdgeRefTrigHysts, NIDAQmx), int32, (TaskHandle, Ref{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeRefTrigHysts(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeRefTrigHysts, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigCouplings(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxGetAnlgMultiEdgeRefTrigCouplings, NIDAQmx), int32, (TaskHandle, Ref{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeRefTrigCouplings(taskHandle::TaskHandle, data, arraySizeInElements::uInt32)
    ccall((:DAQmxSetAnlgMultiEdgeRefTrigCouplings, NIDAQmx), int32, (TaskHandle, Ref{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeRefTrigCouplings(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgMultiEdgeRefTrigCouplings, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinRefTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinRefTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgWinRefTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinRefTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgWinRefTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigTop(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinRefTrigTop, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigTop(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigTop, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigTop, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigBtm(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinRefTrigBtm, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigBtm(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigBtm, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigBtm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigCoupling(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinRefTrigCoupling, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigCoupling(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgWinRefTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgWinRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigAutoTrigEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigAutoTrigEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetRefTrigAutoTrigEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetRefTrigAutoTrigEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRefTrigAutoTrigEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigAutoTrigEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigAutoTriggered(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigAutoTriggered, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetRefTrigTimestampEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetRefTrigTimestampEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetRefTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRefTrigTimestampEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigTimestampEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigTimestampTimescale(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetRefTrigTimestampTimescale(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetRefTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetRefTrigTimestampTimescale(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigTimestampVal(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigTimestampVal, NIDAQmx), int32, (TaskHandle, Ref{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxGetRefTrigDelay(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigDelay, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetRefTrigDelay(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetRefTrigDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetRefTrigDelay(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigRetriggerable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigRetriggerable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetRefTrigRetriggerable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetRefTrigRetriggerable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRefTrigRetriggerable(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigRetriggerable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigTrigWin(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigTrigWin, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetRefTrigTrigWin(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetRefTrigTrigWin, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetRefTrigTrigWin(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigTrigWin, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigRetriggerWin(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigRetriggerWin, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetRefTrigRetriggerWin(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetRefTrigRetriggerWin, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetRefTrigRetriggerWin(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigRetriggerWin, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigMaxNumTrigsToDetect(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetRefTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxSetRefTrigMaxNumTrigsToDetect(taskHandle::TaskHandle, data::uInt32)
    ccall((:DAQmxSetRefTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetRefTrigMaxNumTrigsToDetect(taskHandle::TaskHandle)
    ccall((:DAQmxResetRefTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAdvTrigType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAdvTrigType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAdvTrigType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAdvTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAdvTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetAdvTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeAdvTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeAdvTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeAdvTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigEdgeAdvTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigEdgeAdvTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeAdvTrigEdge(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeAdvTrigEdge, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeAdvTrigEdge(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigEdgeAdvTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeAdvTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeAdvTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigEdgeAdvTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeAdvTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeAdvTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetHshkTrigType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetHshkTrigType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetHshkTrigType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetHshkTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetHshkTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetHshkTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetInterlockedHshkTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetInterlockedHshkTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetInterlockedHshkTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetInterlockedHshkTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetInterlockedHshkTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetInterlockedHshkTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetInterlockedHshkTrigAssertedLvl, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetInterlockedHshkTrigAssertedLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetInterlockedHshkTrigAssertedLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetInterlockedHshkTrigAssertedLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetPauseTrigType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetPauseTrigType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetPauseTrigType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetPauseTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetPauseTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetPauseTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetPauseTrigTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetPauseTrigTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgLvlPauseTrigLvl, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigLvl, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigLvl(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgLvlPauseTrigHyst, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigHyst, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigHyst(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigHyst, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgLvlPauseTrigCoupling, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgLvlPauseTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinPauseTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinPauseTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgWinPauseTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinPauseTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgWinPauseTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigTop(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinPauseTrigTop, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigTop(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigTop, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigTop(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigTop, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigBtm(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinPauseTrigBtm, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigBtm(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigBtm, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigBtm(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigBtm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinPauseTrigCoupling, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetAnlgWinPauseTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigCoupling(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetAnlgWinPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetAnlgWinPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetAnlgWinPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetAnlgWinPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigLvlPauseTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDigLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternPauseTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternPauseTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternPauseTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigPatternPauseTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigPatternPauseTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternPauseTrigPattern(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigPatternPauseTrigPattern, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternPauseTrigPattern(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigPatternPauseTrigPattern, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigPatternPauseTrigPattern(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigPattern, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternPauseTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigPatternPauseTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigPatternPauseTrigWhen(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigPatternPauseTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigPatternPauseTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigPatternPauseTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetArmStartTrigType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetArmStartTrigType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetArmStartTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetArmStartTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetArmStartTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTerm(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetArmStartTerm, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeArmStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigEdgeArmStartTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeArmStartTrigEdge, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigEdgeArmStartTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeArmStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetDigEdgeArmStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigSyncEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeArmStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTrigWhen(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetArmStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle, Ref{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxSetArmStartTrigTrigWhen(taskHandle::TaskHandle, data::CVIAbsoluteTime)
    ccall((:DAQmxSetArmStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime), taskHandle, data)
end

function DAQmxResetArmStartTrigTrigWhen(taskHandle::TaskHandle)
    ccall((:DAQmxResetArmStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTimescale(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetArmStartTrigTimescale, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetArmStartTrigTimescale(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetArmStartTrigTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetArmStartTrigTimescale(taskHandle::TaskHandle)
    ccall((:DAQmxResetArmStartTrigTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTimestampEnable(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetArmStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetArmStartTrigTimestampEnable(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetArmStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetArmStartTrigTimestampEnable(taskHandle::TaskHandle)
    ccall((:DAQmxResetArmStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTimestampTimescale(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetArmStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetArmStartTrigTimestampTimescale(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetArmStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetArmStartTrigTimestampTimescale(taskHandle::TaskHandle)
    ccall((:DAQmxResetArmStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTimestampVal(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetArmStartTrigTimestampVal, NIDAQmx), int32, (TaskHandle, Ref{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxGetTriggerSyncType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetTriggerSyncType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetTriggerSyncType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetTriggerSyncType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetTriggerSyncType(taskHandle::TaskHandle)
    ccall((:DAQmxResetTriggerSyncType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWatchdogTimeout(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWatchdogTimeout, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetWatchdogTimeout(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetWatchdogTimeout, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetWatchdogTimeout(taskHandle::TaskHandle)
    ccall((:DAQmxResetWatchdogTimeout, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWatchdogExpirTrigType(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWatchdogExpirTrigType, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetWatchdogExpirTrigType(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetWatchdogExpirTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWatchdogExpirTrigType(taskHandle::TaskHandle)
    ccall((:DAQmxResetWatchdogExpirTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWatchdogExpirTrigTrigOnNetworkConnLoss, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxSetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle::TaskHandle, data::bool32)
    ccall((:DAQmxSetWatchdogExpirTrigTrigOnNetworkConnLoss, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle::TaskHandle)
    ccall((:DAQmxResetWatchdogExpirTrigTrigOnNetworkConnLoss, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetDigEdgeWatchdogExpirTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle, data)
    ccall((:DAQmxSetDigEdgeWatchdogExpirTrigSrc, NIDAQmx), int32, (TaskHandle, Cstring), taskHandle, data)
end

function DAQmxResetDigEdgeWatchdogExpirTrigSrc(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeWatchdogExpirTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetDigEdgeWatchdogExpirTrigEdge, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetDigEdgeWatchdogExpirTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeWatchdogExpirTrigEdge(taskHandle::TaskHandle)
    ccall((:DAQmxResetDigEdgeWatchdogExpirTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWatchdogDOExpirState(taskHandle::TaskHandle, lines, data)
    ccall((:DAQmxGetWatchdogDOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, lines, data)
end

function DAQmxSetWatchdogDOExpirState(taskHandle::TaskHandle, lines, data::int32)
    ccall((:DAQmxSetWatchdogDOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, lines, data)
end

function DAQmxResetWatchdogDOExpirState(taskHandle::TaskHandle, lines)
    ccall((:DAQmxResetWatchdogDOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, lines)
end

function DAQmxGetWatchdogAOOutputType(taskHandle::TaskHandle, lines, data)
    ccall((:DAQmxGetWatchdogAOOutputType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, lines, data)
end

function DAQmxSetWatchdogAOOutputType(taskHandle::TaskHandle, lines, data::int32)
    ccall((:DAQmxSetWatchdogAOOutputType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, lines, data)
end

function DAQmxResetWatchdogAOOutputType(taskHandle::TaskHandle, lines)
    ccall((:DAQmxResetWatchdogAOOutputType, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, lines)
end

function DAQmxGetWatchdogAOExpirState(taskHandle::TaskHandle, lines, data)
    ccall((:DAQmxGetWatchdogAOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{float64}), taskHandle, lines, data)
end

function DAQmxSetWatchdogAOExpirState(taskHandle::TaskHandle, lines, data::float64)
    ccall((:DAQmxSetWatchdogAOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, float64), taskHandle, lines, data)
end

function DAQmxResetWatchdogAOExpirState(taskHandle::TaskHandle, lines)
    ccall((:DAQmxResetWatchdogAOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, lines)
end

function DAQmxGetWatchdogCOExpirState(taskHandle::TaskHandle, lines, data)
    ccall((:DAQmxGetWatchdogCOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, Ref{int32}), taskHandle, lines, data)
end

function DAQmxSetWatchdogCOExpirState(taskHandle::TaskHandle, lines, data::int32)
    ccall((:DAQmxSetWatchdogCOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}, int32), taskHandle, lines, data)
end

function DAQmxResetWatchdogCOExpirState(taskHandle::TaskHandle, lines)
    ccall((:DAQmxResetWatchdogCOExpirState, NIDAQmx), int32, (TaskHandle, Ref{UInt8}), taskHandle, lines)
end

function DAQmxGetWatchdogHasExpired(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWatchdogHasExpired, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWriteRelativeTo(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteRelativeTo, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetWriteRelativeTo(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetWriteRelativeTo, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWriteRelativeTo(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteRelativeTo, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteOffset(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteOffset, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetWriteOffset(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetWriteOffset, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWriteOffset(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteOffset, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteRegenMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteRegenMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetWriteRegenMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetWriteRegenMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWriteRegenMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteRegenMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteCurrWritePos(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteCurrWritePos, NIDAQmx), int32, (TaskHandle, Ref{uInt64}), taskHandle, data)
end

function DAQmxGetWriteOvercurrentChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteOvercurrentChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWriteOvercurrentChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetWriteOvercurrentChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteOvertemperatureChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteOvertemperatureChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWriteOvertemperatureChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetWriteOvertemperatureChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteExternalOvervoltageChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteExternalOvervoltageChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWriteExternalOvervoltageChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetWriteExternalOvervoltageChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteOverloadedChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteOverloadedChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWriteOverloadedChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetWriteOverloadedChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteOpenCurrentLoopChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteOpenCurrentLoopChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWriteOpenCurrentLoopChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetWriteOpenCurrentLoopChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWritePowerSupplyFaultChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWritePowerSupplyFaultChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWritePowerSupplyFaultChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetWritePowerSupplyFaultChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteSyncUnlockedChansExist(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteSyncUnlockedChansExist, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWriteSyncUnlockedChans(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetWriteSyncUnlockedChans, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteSpaceAvail(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteSpaceAvail, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetWriteTotalSampPerChanGenerated(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteTotalSampPerChanGenerated, NIDAQmx), int32, (TaskHandle, Ref{uInt64}), taskHandle, data)
end

function DAQmxGetWriteAccessoryInsertionOrRemovalDetected(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteAccessoryInsertionOrRemovalDetected, NIDAQmx), int32, (TaskHandle, Ref{bool32}), taskHandle, data)
end

function DAQmxGetWriteDevsWithInsertedOrRemovedAccessories(taskHandle::TaskHandle, data, bufferSize::uInt32)
    ccall((:DAQmxGetWriteDevsWithInsertedOrRemovedAccessories, NIDAQmx), int32, (TaskHandle, Cstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteRawDataWidth(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteRawDataWidth, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetWriteNumChans(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteNumChans, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetWriteWaitMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteWaitMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetWriteWaitMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetWriteWaitMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWriteWaitMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteWaitMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteSleepTime(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteSleepTime, NIDAQmx), int32, (TaskHandle, Ref{float64}), taskHandle, data)
end

function DAQmxSetWriteSleepTime(taskHandle::TaskHandle, data::float64)
    ccall((:DAQmxSetWriteSleepTime, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetWriteSleepTime(taskHandle::TaskHandle)
    ccall((:DAQmxResetWriteSleepTime, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteDigitalLinesBytesPerChan(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetWriteDigitalLinesBytesPerChan, NIDAQmx), int32, (TaskHandle, Ref{uInt32}), taskHandle, data)
end

function DAQmxGetSampClkTimingResponseMode(taskHandle::TaskHandle, data)
    ccall((:DAQmxGetSampClkTimingResponseMode, NIDAQmx), int32, (TaskHandle, Ref{int32}), taskHandle, data)
end

function DAQmxSetSampClkTimingResponseMode(taskHandle::TaskHandle, data::int32)
    ccall((:DAQmxSetSampClkTimingResponseMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkTimingResponseMode(taskHandle::TaskHandle)
    ccall((:DAQmxResetSampClkTimingResponseMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end
