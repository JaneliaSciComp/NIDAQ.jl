# Automatically generated using Clang.jl wrap_c, version 0.0.0

#using Compat

const OBJC_NEW_PROPERTIES = 1
#const CVICALLBACK = CVICDECL

# Skipping MacroDefinition: TRUE ( 1L ) #
# Skipping MacroDefinition: FALSE ( 0L ) #
# Skipping MacroDefinition: NULL ( 0L ) #

const DAQmx_Buf_Input_BufSize = 0x186c
const DAQmx_Buf_Input_OnbrdBufSize = 0x230a
const DAQmx_Buf_Output_BufSize = 0x186d
const DAQmx_Buf_Output_OnbrdBufSize = 0x230b
const DAQmx_SelfCal_Supported = 0x1860
const DAQmx_SelfCal_LastTemp = 0x1864
const DAQmx_ExtCal_RecommendedInterval = 0x1868
const DAQmx_ExtCal_LastTemp = 0x1867
const DAQmx_Cal_UserDefinedInfo = 0x1861
const DAQmx_Cal_UserDefinedInfo_MaxSize = 0x191c
const DAQmx_Cal_DevTemp = 0x223b
const DAQmx_Cal_AccConnectionCount = 0x2feb
const DAQmx_Cal_RecommendedAccConnectionCountLimit = 0x2fec
const DAQmx_AI_Max = 0x17dd
const DAQmx_AI_Min = 0x17de
const DAQmx_AI_CustomScaleName = 0x17e0
const DAQmx_AI_MeasType = 0x0695
const DAQmx_AI_Voltage_Units = 0x1094
const DAQmx_AI_Voltage_dBRef = 0x29b0
const DAQmx_AI_Voltage_ACRMS_Units = 0x17e2
const DAQmx_AI_Temp_Units = 0x1033
const DAQmx_AI_Thrmcpl_Type = 0x1050
const DAQmx_AI_Thrmcpl_ScaleType = 0x29d0
const DAQmx_AI_Thrmcpl_CJCSrc = 0x1035
const DAQmx_AI_Thrmcpl_CJCVal = 0x1036
const DAQmx_AI_Thrmcpl_CJCChan = 0x1034
const DAQmx_AI_RTD_Type = 0x1032
const DAQmx_AI_RTD_R0 = 0x1030
const DAQmx_AI_RTD_A = 0x1010
const DAQmx_AI_RTD_B = 0x1011
const DAQmx_AI_RTD_C = 0x1013
const DAQmx_AI_Thrmstr_A = 0x18c9
const DAQmx_AI_Thrmstr_B = 0x18cb
const DAQmx_AI_Thrmstr_C = 0x18ca
const DAQmx_AI_Thrmstr_R1 = 0x1061
const DAQmx_AI_ForceReadFromChan = 0x18f8
const DAQmx_AI_Current_Units = 0x0701
const DAQmx_AI_Current_ACRMS_Units = 0x17e3
const DAQmx_AI_Strain_Units = 0x0981
const DAQmx_AI_StrainGage_ForceReadFromChan = 0x2ffa
const DAQmx_AI_StrainGage_GageFactor = 0x0994
const DAQmx_AI_StrainGage_PoissonRatio = 0x0998
const DAQmx_AI_StrainGage_Cfg = 0x0982
const DAQmx_AI_RosetteStrainGage_RosetteType = 0x2ffe
const DAQmx_AI_RosetteStrainGage_Orientation = 0x2ffc
const DAQmx_AI_RosetteStrainGage_StrainChans = 0x2ffb
const DAQmx_AI_RosetteStrainGage_RosetteMeasType = 0x2ffd
const DAQmx_AI_Resistance_Units = 0x0955
const DAQmx_AI_Freq_Units = 0x0806
const DAQmx_AI_Freq_ThreshVoltage = 0x0815
const DAQmx_AI_Freq_Hyst = 0x0814
const DAQmx_AI_LVDT_Units = 0x0910
const DAQmx_AI_LVDT_Sensitivity = 0x0939
const DAQmx_AI_LVDT_SensitivityUnits = 0x219a
const DAQmx_AI_RVDT_Units = 0x0877
const DAQmx_AI_RVDT_Sensitivity = 0x0903
const DAQmx_AI_RVDT_SensitivityUnits = 0x219b
const DAQmx_AI_EddyCurrentProxProbe_Units = 0x2ac0
const DAQmx_AI_EddyCurrentProxProbe_Sensitivity = 0x2abe
const DAQmx_AI_EddyCurrentProxProbe_SensitivityUnits = Float32(0x02ab)
const DAQmx_AI_SoundPressure_MaxSoundPressureLvl = 0x223a
const DAQmx_AI_SoundPressure_Units = 0x1528
const DAQmx_AI_SoundPressure_dBRef = 0x29b1
const DAQmx_AI_Microphone_Sensitivity = 0x1536
const DAQmx_AI_Accel_Units = 0x0673
const DAQmx_AI_Accel_dBRef = 0x29b2
const DAQmx_AI_Accel_4WireDCVoltage_Sensitivity = 0x3115
const DAQmx_AI_Accel_4WireDCVoltage_SensitivityUnits = 0x3116
const DAQmx_AI_Accel_Sensitivity = 0x0692
const DAQmx_AI_Accel_SensitivityUnits = 0x219c
const DAQmx_AI_Accel_Charge_Sensitivity = 0x3113
const DAQmx_AI_Accel_Charge_SensitivityUnits = 0x3114
const DAQmx_AI_Velocity_Units = 0x2ff4
const DAQmx_AI_Velocity_IEPESensor_dBRef = 0x2ff5
const DAQmx_AI_Velocity_IEPESensor_Sensitivity = 0x2ff6
const DAQmx_AI_Velocity_IEPESensor_SensitivityUnits = 0x2ff7
const DAQmx_AI_Force_Units = 0x2f75
const DAQmx_AI_Force_IEPESensor_Sensitivity = 0x2f81
const DAQmx_AI_Force_IEPESensor_SensitivityUnits = 0x2f82
const DAQmx_AI_Pressure_Units = 0x2f76
const DAQmx_AI_Torque_Units = 0x2f77
const DAQmx_AI_Bridge_Units = 0x2f92
const DAQmx_AI_Bridge_ElectricalUnits = 0x2f87
const DAQmx_AI_Bridge_PhysicalUnits = 0x2f88
const DAQmx_AI_Bridge_ScaleType = 0x2f89
const DAQmx_AI_Bridge_TwoPointLin_First_ElectricalVal = 0x2f8a
const DAQmx_AI_Bridge_TwoPointLin_First_PhysicalVal = 0x2f8b
const DAQmx_AI_Bridge_TwoPointLin_Second_ElectricalVal = 0x2f8c
const DAQmx_AI_Bridge_TwoPointLin_Second_PhysicalVal = 0x2f8d
const DAQmx_AI_Bridge_Table_ElectricalVals = 0x2f8e
const DAQmx_AI_Bridge_Table_PhysicalVals = Float32(0x02f8)
const DAQmx_AI_Bridge_Poly_ForwardCoeff = 0x2f90
const DAQmx_AI_Bridge_Poly_ReverseCoeff = 0x2f91
const DAQmx_AI_Charge_Units = 0x3112
const DAQmx_AI_Is_TEDS = 0x2983
const DAQmx_AI_TEDS_Units = 0x21e0
const DAQmx_AI_Coupling = 0x0064
const DAQmx_AI_Impedance = 0x0062
const DAQmx_AI_TermCfg = 0x1097
const DAQmx_AI_InputSrc = 0x2198
const DAQmx_AI_ResistanceCfg = 0x1881
const DAQmx_AI_LeadWireResistance = 0x17ee
const DAQmx_AI_Bridge_Cfg = 0x0087
const DAQmx_AI_Bridge_NomResistance = 0x17ec
const DAQmx_AI_Bridge_InitialVoltage = 0x17ed
const DAQmx_AI_Bridge_InitialRatio = 0x2f86
const DAQmx_AI_Bridge_ShuntCal_Enable = 0x0094
const DAQmx_AI_Bridge_ShuntCal_Select = 0x21d5
const DAQmx_AI_Bridge_ShuntCal_ShuntCalASrc = 0x30ca
const DAQmx_AI_Bridge_ShuntCal_GainAdjust = Float32(0x0193)
const DAQmx_AI_Bridge_ShuntCal_ShuntCalAResistance = 0x2f78
const DAQmx_AI_Bridge_ShuntCal_ShuntCalAActualResistance = 0x2f79
const DAQmx_AI_Bridge_ShuntCal_ShuntCalBResistance = 0x2f7a
const DAQmx_AI_Bridge_ShuntCal_ShuntCalBActualResistance = 0x2f7b
const DAQmx_AI_Bridge_Balance_CoarsePot = 0x17f1
const DAQmx_AI_Bridge_Balance_FinePot = 0x18f4
const DAQmx_AI_CurrentShunt_Loc = 0x17f2
const DAQmx_AI_CurrentShunt_Resistance = 0x17f3
const DAQmx_AI_Excit_Sense = 0x30fd
const DAQmx_AI_Excit_Src = 0x17f4
const DAQmx_AI_Excit_Val = 0x17f5
const DAQmx_AI_Excit_UseForScaling = 0x17fc
const DAQmx_AI_Excit_UseMultiplexed = 0x2180
const DAQmx_AI_Excit_ActualVal = 0x1883
const DAQmx_AI_Excit_DCorAC = 0x17fb
const DAQmx_AI_Excit_VoltageOrCurrent = 0x17f6
const DAQmx_AI_Excit_IdleOutputBehavior = 0x30b8
const DAQmx_AI_ACExcit_Freq = 0x0101
const DAQmx_AI_ACExcit_SyncEnable = 0x0102
const DAQmx_AI_ACExcit_WireMode = 0x18cd
const DAQmx_AI_OpenThrmcplDetectEnable = 0x2f72
const DAQmx_AI_Thrmcpl_LeadOffsetVoltage = 0x2fb8
const DAQmx_AI_Atten = 0x1801
const DAQmx_AI_ProbeAtten = 0x2a88
const DAQmx_AI_Lowpass_Enable = 0x1802
const DAQmx_AI_Lowpass_CutoffFreq = 0x1803
const DAQmx_AI_Lowpass_SwitchCap_ClkSrc = 0x1884
const DAQmx_AI_Lowpass_SwitchCap_ExtClkFreq = 0x1885
const DAQmx_AI_Lowpass_SwitchCap_ExtClkDiv = 0x1886
const DAQmx_AI_Lowpass_SwitchCap_OutClkDiv = 0x1887
const DAQmx_AI_DigFltr_Enable = 0x30bd
const DAQmx_AI_DigFltr_Type = 0x30be
const DAQmx_AI_DigFltr_Response = Float32(0x030b)
const DAQmx_AI_DigFltr_Order = 0x30c0
const DAQmx_AI_DigFltr_Lowpass_CutoffFreq = 0x30c1
const DAQmx_AI_DigFltr_Highpass_CutoffFreq = 0x30c2
const DAQmx_AI_DigFltr_Bandpass_CenterFreq = 0x30c3
const DAQmx_AI_DigFltr_Bandpass_Width = 0x30c4
const DAQmx_AI_DigFltr_Notch_CenterFreq = 0x30c5
const DAQmx_AI_DigFltr_Notch_Width = 0x30c6
const DAQmx_AI_DigFltr_Coeff = 0x30c7
const DAQmx_AI_FilterDelay = 0x2fed
const DAQmx_AI_FilterDelayUnits = 0x3071
const DAQmx_AI_RemoveFilterDelay = 0x2fbd
const DAQmx_AI_FilterDelayAdjustment = 0x3074
const DAQmx_AI_AveragingWinSize = 0x2fee
const DAQmx_AI_ResolutionUnits = 0x1764
const DAQmx_AI_Resolution = 0x1765
const DAQmx_AI_RawSampSize = 0x22da
const DAQmx_AI_RawSampJustification = 0x0050
const DAQmx_AI_ADCTimingMode = 0x29f9
const DAQmx_AI_ADCCustomTimingMode = 0x2f6b
const DAQmx_AI_Dither_Enable = 0x0068
const DAQmx_AI_ChanCal_HasValidCalInfo = 0x2297
const DAQmx_AI_ChanCal_EnableCal = 0x2298
const DAQmx_AI_ChanCal_ApplyCalIfExp = 0x2299
const DAQmx_AI_ChanCal_ScaleType = 0x229c
const DAQmx_AI_ChanCal_Table_PreScaledVals = 0x229d
const DAQmx_AI_ChanCal_Table_ScaledVals = 0x229e
const DAQmx_AI_ChanCal_Poly_ForwardCoeff = Float32(0x0229)
const DAQmx_AI_ChanCal_Poly_ReverseCoeff = 0x22a0
const DAQmx_AI_ChanCal_OperatorName = 0x22a3
const DAQmx_AI_ChanCal_Desc = 0x22a4
const DAQmx_AI_ChanCal_Verif_RefVals = 0x22a1
const DAQmx_AI_ChanCal_Verif_AcqVals = 0x22a2
const DAQmx_AI_Rng_High = 0x1815
const DAQmx_AI_Rng_Low = 0x1816
const DAQmx_AI_DCOffset = 0x2a89
const DAQmx_AI_Gain = 0x1818
const DAQmx_AI_SampAndHold_Enable = 0x181a
const DAQmx_AI_AutoZeroMode = 0x1760
const DAQmx_AI_ChopEnable = 0x3143
const DAQmx_AI_DataXferMaxRate = 0x3117
const DAQmx_AI_DataXferMech = 0x1821
const DAQmx_AI_DataXferReqCond = 0x188b
const DAQmx_AI_DataXferCustomThreshold = 0x230c
const DAQmx_AI_UsbXferReqSize = 0x2a8e
const DAQmx_AI_UsbXferReqCount = 0x3000
const DAQmx_AI_MemMapEnable = 0x188c
const DAQmx_AI_RawDataCompressionType = 0x22d8
const DAQmx_AI_LossyLSBRemoval_CompressedSampSize = 0x22d9
const DAQmx_AI_DevScalingCoeff = 0x1930
const DAQmx_AI_EnhancedAliasRejectionEnable = 0x2294
const DAQmx_AI_OpenChanDetectEnable = Float32(0x030f)
const DAQmx_AO_Max = 0x1186
const DAQmx_AO_Min = 0x1187
const DAQmx_AO_CustomScaleName = 0x1188
const DAQmx_AO_OutputType = 0x1108
const DAQmx_AO_Voltage_Units = 0x1184
const DAQmx_AO_Voltage_CurrentLimit = 0x2a1d
const DAQmx_AO_Current_Units = 0x1109
const DAQmx_AO_FuncGen_Type = 0x2a18
const DAQmx_AO_FuncGen_Freq = 0x2a19
const DAQmx_AO_FuncGen_Amplitude = 0x2a1a
const DAQmx_AO_FuncGen_Offset = 0x2a1b
const DAQmx_AO_FuncGen_Square_DutyCycle = 0x2a1c
const DAQmx_AO_FuncGen_ModulationType = 0x2a22
const DAQmx_AO_FuncGen_FMDeviation = 0x2a23
const DAQmx_AO_OutputImpedance = 0x1490
const DAQmx_AO_LoadImpedance = 0x0121
const DAQmx_AO_IdleOutputBehavior = 0x2240
const DAQmx_AO_TermCfg = 0x188e
const DAQmx_AO_ResolutionUnits = 0x182b
const DAQmx_AO_Resolution = 0x182c
const DAQmx_AO_DAC_Rng_High = 0x182e
const DAQmx_AO_DAC_Rng_Low = 0x182d
const DAQmx_AO_DAC_Ref_ConnToGnd = 0x0130
const DAQmx_AO_DAC_Ref_AllowConnToGnd = 0x1830
const DAQmx_AO_DAC_Ref_Src = 0x0132
const DAQmx_AO_DAC_Ref_ExtSrc = 0x2252
const DAQmx_AO_DAC_Ref_Val = 0x1832
const DAQmx_AO_DAC_Offset_Src = 0x2253
const DAQmx_AO_DAC_Offset_ExtSrc = 0x2254
const DAQmx_AO_DAC_Offset_Val = 0x2255
const DAQmx_AO_ReglitchEnable = 0x0133
const DAQmx_AO_FilterDelay = 0x3075
const DAQmx_AO_FilterDelayUnits = 0x3076
const DAQmx_AO_FilterDelayAdjustment = 0x3072
const DAQmx_AO_Gain = 0x0118
const DAQmx_AO_UseOnlyOnBrdMem = 0x183a
const DAQmx_AO_DataXferMech = 0x0134
const DAQmx_AO_DataXferReqCond = 0x183c
const DAQmx_AO_UsbXferReqSize = Float32(0x02a8)
const DAQmx_AO_UsbXferReqCount = 0x3001
const DAQmx_AO_MemMapEnable = Float32(0x0188)
const DAQmx_AO_DevScalingCoeff = 0x1931
const DAQmx_AO_EnhancedImageRejectionEnable = 0x2241
const DAQmx_DI_InvertLines = 0x0793
const DAQmx_DI_NumLines = 0x2178
const DAQmx_DI_DigFltr_Enable = 0x21d6
const DAQmx_DI_DigFltr_MinPulseWidth = 0x21d7
const DAQmx_DI_DigFltr_EnableBusMode = 0x2efe
const DAQmx_DI_DigFltr_TimebaseSrc = 0x2ed4
const DAQmx_DI_DigFltr_TimebaseRate = 0x2ed5
const DAQmx_DI_DigSync_Enable = 0x2ed6
const DAQmx_DI_Tristate = 0x1890
const DAQmx_DI_LogicFamily = 0x296d
const DAQmx_DI_DataXferMech = 0x2263
const DAQmx_DI_DataXferReqCond = 0x2264
const DAQmx_DI_UsbXferReqSize = 0x2a90
const DAQmx_DI_UsbXferReqCount = 0x3002
const DAQmx_DI_MemMapEnable = 0x296a
const DAQmx_DI_AcquireOn = 0x2966
const DAQmx_DO_OutputDriveType = 0x1137
const DAQmx_DO_InvertLines = 0x1133
const DAQmx_DO_NumLines = 0x2179
const DAQmx_DO_Tristate = 0x18f3
const DAQmx_DO_LineStates_StartState = 0x2972
const DAQmx_DO_LineStates_PausedState = 0x2967
const DAQmx_DO_LineStates_DoneState = 0x2968
const DAQmx_DO_LogicFamily = 0x296e
const DAQmx_DO_Overcurrent_Limit = 0x2a85
const DAQmx_DO_Overcurrent_AutoReenable = 0x2a86
const DAQmx_DO_Overcurrent_ReenablePeriod = 0x2a87
const DAQmx_DO_UseOnlyOnBrdMem = 0x2265
const DAQmx_DO_DataXferMech = 0x2266
const DAQmx_DO_DataXferReqCond = 0x2267
const DAQmx_DO_UsbXferReqSize = 0x2a91
const DAQmx_DO_UsbXferReqCount = 0x3003
const DAQmx_DO_MemMapEnable = 0x296b
const DAQmx_DO_GenerateOn = 0x2969
const DAQmx_CI_Max = 0x189c
const DAQmx_CI_Min = 0x189d
const DAQmx_CI_CustomScaleName = 0x189e
const DAQmx_CI_MeasType = 0x18a0
const DAQmx_CI_Freq_Units = 0x18a1
const DAQmx_CI_Freq_Term = 0x18a2
const DAQmx_CI_Freq_TermCfg = 0x3097
const DAQmx_CI_Freq_LogicLvlBehavior = 0x3098
const DAQmx_CI_Freq_DigFltr_Enable = 0x21e7
const DAQmx_CI_Freq_DigFltr_MinPulseWidth = 0x21e8
const DAQmx_CI_Freq_DigFltr_TimebaseSrc = 0x21e9
const DAQmx_CI_Freq_DigFltr_TimebaseRate = 0x21ea
const DAQmx_CI_Freq_DigSync_Enable = 0x21eb
const DAQmx_CI_Freq_StartingEdge = 0x0799
const DAQmx_CI_Freq_MeasMeth = 0x0144
const DAQmx_CI_Freq_EnableAveraging = 0x2ed0
const DAQmx_CI_Freq_MeasTime = 0x0145
const DAQmx_CI_Freq_Div = 0x0147
const DAQmx_CI_Period_Units = 0x18a3
const DAQmx_CI_Period_Term = 0x18a4
const DAQmx_CI_Period_TermCfg = 0x3099
const DAQmx_CI_Period_LogicLvlBehavior = 0x309a
const DAQmx_CI_Period_DigFltr_Enable = 0x21ec
const DAQmx_CI_Period_DigFltr_MinPulseWidth = 0x21ed
const DAQmx_CI_Period_DigFltr_TimebaseSrc = 0x21ee
const DAQmx_CI_Period_DigFltr_TimebaseRate = Float32(0x021e)
const DAQmx_CI_Period_DigSync_Enable = 0x21f0
const DAQmx_CI_Period_StartingEdge = 0x0852
const DAQmx_CI_Period_MeasMeth = 0x192c
const DAQmx_CI_Period_EnableAveraging = 0x2ed1
const DAQmx_CI_Period_MeasTime = 0x192d
const DAQmx_CI_Period_Div = 0x192e
const DAQmx_CI_CountEdges_Term = 0x18c7
const DAQmx_CI_CountEdges_TermCfg = 0x309b
const DAQmx_CI_CountEdges_LogicLvlBehavior = 0x309c
const DAQmx_CI_CountEdges_DigFltr_Enable = 0x21f6
const DAQmx_CI_CountEdges_DigFltr_MinPulseWidth = 0x21f7
const DAQmx_CI_CountEdges_DigFltr_TimebaseSrc = 0x21f8
const DAQmx_CI_CountEdges_DigFltr_TimebaseRate = 0x21f9
const DAQmx_CI_CountEdges_DigSync_Enable = 0x21fa
const DAQmx_CI_CountEdges_Dir = 0x0696
const DAQmx_CI_CountEdges_DirTerm = 0x21e1
const DAQmx_CI_CountEdges_CountDir_TermCfg = 0x309d
const DAQmx_CI_CountEdges_CountDir_LogicLvlBehavior = 0x309e
const DAQmx_CI_CountEdges_CountDir_DigFltr_Enable = 0x21f1
const DAQmx_CI_CountEdges_CountDir_DigFltr_MinPulseWidth = 0x21f2
const DAQmx_CI_CountEdges_CountDir_DigFltr_TimebaseSrc = 0x21f3
const DAQmx_CI_CountEdges_CountDir_DigFltr_TimebaseRate = 0x21f4
const DAQmx_CI_CountEdges_CountDir_DigSync_Enable = 0x21f5
const DAQmx_CI_CountEdges_InitialCnt = 0x0698
const DAQmx_CI_CountEdges_ActiveEdge = 0x0697
const DAQmx_CI_CountEdges_CountReset_Enable = Float32(0x02fa)
const DAQmx_CI_CountEdges_CountReset_ResetCount = 0x2fb0
const DAQmx_CI_CountEdges_CountReset_Term = 0x2fb1
const DAQmx_CI_CountEdges_CountReset_TermCfg = Float32(0x0309)
const DAQmx_CI_CountEdges_CountReset_LogicLvlBehavior = 0x30a0
const DAQmx_CI_CountEdges_CountReset_DigFltr_Enable = 0x2fb3
const DAQmx_CI_CountEdges_CountReset_DigFltr_MinPulseWidth = 0x2fb4
const DAQmx_CI_CountEdges_CountReset_DigFltr_TimebaseSrc = 0x2fb5
const DAQmx_CI_CountEdges_CountReset_DigFltr_TimebaseRate = 0x2fb6
const DAQmx_CI_CountEdges_CountReset_DigSync_Enable = 0x2fb7
const DAQmx_CI_CountEdges_CountReset_ActiveEdge = 0x2fb2
const DAQmx_CI_CountEdges_Gate_Enable = 0x30ed
const DAQmx_CI_CountEdges_Gate_Term = 0x30ee
const DAQmx_CI_CountEdges_Gate_TermCfg = Float32(0x030e)
const DAQmx_CI_CountEdges_Gate_LogicLvlBehavior = 0x30f0
const DAQmx_CI_CountEdges_Gate_DigFltrEnable = 0x30f1
const DAQmx_CI_CountEdges_Gate_DigFltrMinPulseWidth = 0x30f2
const DAQmx_CI_CountEdges_Gate_DigFltrTimebaseSrc = 0x30f3
const DAQmx_CI_CountEdges_Gate_DigFltrTimebaseRate = 0x30f4
const DAQmx_CI_CountEdges_GateWhen = 0x30f5
const DAQmx_CI_DutyCycle_Term = 0x308d
const DAQmx_CI_DutyCycle_TermCfg = 0x30a1
const DAQmx_CI_DutyCycle_LogicLvlBehavior = 0x30a2
const DAQmx_CI_DutyCycle_DigFltr_Enable = 0x308e
const DAQmx_CI_DutyCycle_DigFltr_MinPulseWidth = Float32(0x0308)
const DAQmx_CI_DutyCycle_DigFltr_TimebaseSrc = 0x3090
const DAQmx_CI_DutyCycle_DigFltr_TimebaseRate = 0x3091
const DAQmx_CI_DutyCycle_StartingEdge = 0x3092
const DAQmx_CI_AngEncoder_Units = 0x18a6
const DAQmx_CI_AngEncoder_PulsesPerRev = 0x0875
const DAQmx_CI_AngEncoder_InitialAngle = 0x0881
const DAQmx_CI_LinEncoder_Units = 0x18a9
const DAQmx_CI_LinEncoder_DistPerPulse = 0x0911
const DAQmx_CI_LinEncoder_InitialPos = 0x0915
const DAQmx_CI_Encoder_DecodingType = 0x21e6
const DAQmx_CI_Encoder_AInputTerm = 0x219d
const DAQmx_CI_Encoder_AInputTermCfg = 0x30a3
const DAQmx_CI_Encoder_AInputLogicLvlBehavior = 0x30a4
const DAQmx_CI_Encoder_AInput_DigFltr_Enable = 0x21fb
const DAQmx_CI_Encoder_AInput_DigFltr_MinPulseWidth = 0x21fc
const DAQmx_CI_Encoder_AInput_DigFltr_TimebaseSrc = 0x21fd
const DAQmx_CI_Encoder_AInput_DigFltr_TimebaseRate = 0x21fe
const DAQmx_CI_Encoder_AInput_DigSync_Enable = Float32(0x021f)
const DAQmx_CI_Encoder_BInputTerm = 0x219e
const DAQmx_CI_Encoder_BInputTermCfg = 0x30a5
const DAQmx_CI_Encoder_BInputLogicLvlBehavior = 0x30a6
const DAQmx_CI_Encoder_BInput_DigFltr_Enable = 0x2200
const DAQmx_CI_Encoder_BInput_DigFltr_MinPulseWidth = 0x2201
const DAQmx_CI_Encoder_BInput_DigFltr_TimebaseSrc = 0x2202
const DAQmx_CI_Encoder_BInput_DigFltr_TimebaseRate = 0x2203
const DAQmx_CI_Encoder_BInput_DigSync_Enable = 0x2204
const DAQmx_CI_Encoder_ZInputTerm = Float32(0x0219)
const DAQmx_CI_Encoder_ZInputTermCfg = 0x30a7
const DAQmx_CI_Encoder_ZInputLogicLvlBehavior = 0x30a8
const DAQmx_CI_Encoder_ZInput_DigFltr_Enable = 0x2205
const DAQmx_CI_Encoder_ZInput_DigFltr_MinPulseWidth = 0x2206
const DAQmx_CI_Encoder_ZInput_DigFltr_TimebaseSrc = 0x2207
const DAQmx_CI_Encoder_ZInput_DigFltr_TimebaseRate = 0x2208
const DAQmx_CI_Encoder_ZInput_DigSync_Enable = 0x2209
const DAQmx_CI_Encoder_ZIndexEnable = 0x0890
const DAQmx_CI_Encoder_ZIndexVal = 0x0888
const DAQmx_CI_Encoder_ZIndexPhase = 0x0889
const DAQmx_CI_PulseWidth_Units = 0x0823
const DAQmx_CI_PulseWidth_Term = 0x18aa
const DAQmx_CI_PulseWidth_TermCfg = 0x30a9
const DAQmx_CI_PulseWidth_LogicLvlBehavior = 0x30aa
const DAQmx_CI_PulseWidth_DigFltr_Enable = 0x220a
const DAQmx_CI_PulseWidth_DigFltr_MinPulseWidth = 0x220b
const DAQmx_CI_PulseWidth_DigFltr_TimebaseSrc = 0x220c
const DAQmx_CI_PulseWidth_DigFltr_TimebaseRate = 0x220d
const DAQmx_CI_PulseWidth_DigSync_Enable = 0x220e
const DAQmx_CI_PulseWidth_StartingEdge = 0x0825
const DAQmx_CI_Timestamp_Units = 0x22b3
const DAQmx_CI_Timestamp_InitialSeconds = 0x22b4
const DAQmx_CI_GPS_SyncMethod = 0x1092
const DAQmx_CI_GPS_SyncSrc = 0x1093
const DAQmx_CI_Velocity_AngEncoder_Units = 0x30d8
const DAQmx_CI_Velocity_AngEncoder_PulsesPerRev = 0x30d9
const DAQmx_CI_Velocity_LinEncoder_Units = 0x30da
const DAQmx_CI_Velocity_LinEncoder_DistPerPulse = 0x30db
const DAQmx_CI_Velocity_Encoder_DecodingType = 0x30dc
const DAQmx_CI_Velocity_Encoder_AInputTerm = 0x30dd
const DAQmx_CI_Velocity_Encoder_AInputTermCfg = 0x30de
const DAQmx_CI_Velocity_Encoder_AInputLogicLvlBehavior = Float32(0x030d)
const DAQmx_CI_Velocity_Encoder_AInputDigFltr_Enable = 0x30e0
const DAQmx_CI_Velocity_Encoder_AInputDigFltr_MinPulseWidth = 0x30e1
const DAQmx_CI_Velocity_Encoder_AInputDigFltr_TimebaseSrc = 0x30e2
const DAQmx_CI_Velocity_Encoder_AInputDigFltr_TimebaseRate = 0x30e3
const DAQmx_CI_Velocity_Encoder_BInputTerm = 0x30e4
const DAQmx_CI_Velocity_Encoder_BInputTermCfg = 0x30e5
const DAQmx_CI_Velocity_Encoder_BInputLogicLvlBehavior = 0x30e6
const DAQmx_CI_Velocity_Encoder_BInputDigFltr_Enable = 0x30e7
const DAQmx_CI_Velocity_Encoder_BInputDigFltr_MinPulseWidth = 0x30e8
const DAQmx_CI_Velocity_Encoder_BInputDigFltr_TimebaseSrc = 0x30e9
const DAQmx_CI_Velocity_Encoder_BInputDigFltr_TimebaseRate = 0x30ea
const DAQmx_CI_Velocity_MeasTime = 0x30eb
const DAQmx_CI_Velocity_Div = 0x30ec
const DAQmx_CI_TwoEdgeSep_Units = 0x18ac
const DAQmx_CI_TwoEdgeSep_FirstTerm = 0x18ad
const DAQmx_CI_TwoEdgeSep_FirstTermCfg = 0x30ab
const DAQmx_CI_TwoEdgeSep_FirstLogicLvlBehavior = 0x30ac
const DAQmx_CI_TwoEdgeSep_First_DigFltr_Enable = Float32(0x0220)
const DAQmx_CI_TwoEdgeSep_First_DigFltr_MinPulseWidth = 0x2210
const DAQmx_CI_TwoEdgeSep_First_DigFltr_TimebaseSrc = 0x2211
const DAQmx_CI_TwoEdgeSep_First_DigFltr_TimebaseRate = 0x2212
const DAQmx_CI_TwoEdgeSep_First_DigSync_Enable = 0x2213
const DAQmx_CI_TwoEdgeSep_FirstEdge = 0x0833
const DAQmx_CI_TwoEdgeSep_SecondTerm = 0x18ae
const DAQmx_CI_TwoEdgeSep_SecondTermCfg = 0x30ad
const DAQmx_CI_TwoEdgeSep_SecondLogicLvlBehavior = 0x30ae
const DAQmx_CI_TwoEdgeSep_Second_DigFltr_Enable = 0x2214
const DAQmx_CI_TwoEdgeSep_Second_DigFltr_MinPulseWidth = 0x2215
const DAQmx_CI_TwoEdgeSep_Second_DigFltr_TimebaseSrc = 0x2216
const DAQmx_CI_TwoEdgeSep_Second_DigFltr_TimebaseRate = 0x2217
const DAQmx_CI_TwoEdgeSep_Second_DigSync_Enable = 0x2218
const DAQmx_CI_TwoEdgeSep_SecondEdge = 0x0834
const DAQmx_CI_SemiPeriod_Units = Float32(0x018a)
const DAQmx_CI_SemiPeriod_Term = 0x18b0
const DAQmx_CI_SemiPeriod_TermCfg = Float32(0x030a)
const DAQmx_CI_SemiPeriod_LogicLvlBehavior = 0x30b0
const DAQmx_CI_SemiPeriod_DigFltr_Enable = 0x2219
const DAQmx_CI_SemiPeriod_DigFltr_MinPulseWidth = 0x221a
const DAQmx_CI_SemiPeriod_DigFltr_TimebaseSrc = 0x221b
const DAQmx_CI_SemiPeriod_DigFltr_TimebaseRate = 0x221c
const DAQmx_CI_SemiPeriod_DigSync_Enable = 0x221d
const DAQmx_CI_SemiPeriod_StartingEdge = 0x22fe
const DAQmx_CI_Pulse_Freq_Units = 0x2f0b
const DAQmx_CI_Pulse_Freq_Term = 0x2f04
const DAQmx_CI_Pulse_Freq_TermCfg = 0x30b1
const DAQmx_CI_Pulse_Freq_LogicLvlBehavior = 0x30b2
const DAQmx_CI_Pulse_Freq_DigFltr_Enable = 0x2f06
const DAQmx_CI_Pulse_Freq_DigFltr_MinPulseWidth = 0x2f07
const DAQmx_CI_Pulse_Freq_DigFltr_TimebaseSrc = 0x2f08
const DAQmx_CI_Pulse_Freq_DigFltr_TimebaseRate = 0x2f09
const DAQmx_CI_Pulse_Freq_DigSync_Enable = 0x2f0a
const DAQmx_CI_Pulse_Freq_Start_Edge = 0x2f05
const DAQmx_CI_Pulse_Time_Units = 0x2f13
const DAQmx_CI_Pulse_Time_Term = 0x2f0c
const DAQmx_CI_Pulse_Time_TermCfg = 0x30b3
const DAQmx_CI_Pulse_Time_LogicLvlBehavior = 0x30b4
const DAQmx_CI_Pulse_Time_DigFltr_Enable = 0x2f0e
const DAQmx_CI_Pulse_Time_DigFltr_MinPulseWidth = Float32(0x02f0)
const DAQmx_CI_Pulse_Time_DigFltr_TimebaseSrc = 0x2f10
const DAQmx_CI_Pulse_Time_DigFltr_TimebaseRate = 0x2f11
const DAQmx_CI_Pulse_Time_DigSync_Enable = 0x2f12
const DAQmx_CI_Pulse_Time_StartEdge = 0x2f0d
const DAQmx_CI_Pulse_Ticks_Term = 0x2f14
const DAQmx_CI_Pulse_Ticks_TermCfg = 0x30b5
const DAQmx_CI_Pulse_Ticks_LogicLvlBehavior = 0x30b6
const DAQmx_CI_Pulse_Ticks_DigFltr_Enable = 0x2f16
const DAQmx_CI_Pulse_Ticks_DigFltr_MinPulseWidth = 0x2f17
const DAQmx_CI_Pulse_Ticks_DigFltr_TimebaseSrc = 0x2f18
const DAQmx_CI_Pulse_Ticks_DigFltr_TimebaseRate = 0x2f19
const DAQmx_CI_Pulse_Ticks_DigSync_Enable = 0x2f1a
const DAQmx_CI_Pulse_Ticks_StartEdge = 0x2f15
const DAQmx_CI_CtrTimebaseSrc = 0x0143
const DAQmx_CI_CtrTimebaseRate = 0x18b2
const DAQmx_CI_CtrTimebaseActiveEdge = 0x0142
const DAQmx_CI_CtrTimebase_DigFltr_Enable = 0x2271
const DAQmx_CI_CtrTimebase_DigFltr_MinPulseWidth = 0x2272
const DAQmx_CI_CtrTimebase_DigFltr_TimebaseSrc = 0x2273
const DAQmx_CI_CtrTimebase_DigFltr_TimebaseRate = 0x2274
const DAQmx_CI_CtrTimebase_DigSync_Enable = 0x2275
const DAQmx_CI_ThreshVoltage = 0x30b7
const DAQmx_CI_Count = 0x0148
const DAQmx_CI_OutputState = 0x0149
const DAQmx_CI_TCReached = 0x0150
const DAQmx_CI_CtrTimebaseMasterTimebaseDiv = 0x18b3
const DAQmx_CI_SampClkOverrunBehavior = 0x3093
const DAQmx_CI_SampClkOverrunSentinelVal = 0x3094
const DAQmx_CI_DataXferMech = 0x0200
const DAQmx_CI_DataXferReqCond = 0x2efb
const DAQmx_CI_UsbXferReqSize = 0x2a92
const DAQmx_CI_UsbXferReqCount = 0x3004
const DAQmx_CI_MemMapEnable = 0x2ed2
const DAQmx_CI_NumPossiblyInvalidSamps = 0x193c
const DAQmx_CI_DupCountPrevent = 0x21ac
const DAQmx_CI_Prescaler = 0x2239
const DAQmx_CI_MaxMeasPeriod = 0x3095
const DAQmx_CO_OutputType = 0x18b5
const DAQmx_CO_Pulse_IdleState = 0x1170
const DAQmx_CO_Pulse_Term = 0x18e1
const DAQmx_CO_Pulse_Time_Units = 0x18d6
const DAQmx_CO_Pulse_HighTime = 0x18ba
const DAQmx_CO_Pulse_LowTime = 0x18bb
const DAQmx_CO_Pulse_Time_InitialDelay = 0x18bc
const DAQmx_CO_Pulse_DutyCyc = 0x1176
const DAQmx_CO_Pulse_Freq_Units = 0x18d5
const DAQmx_CO_Pulse_Freq = 0x1178
const DAQmx_CO_Pulse_Freq_InitialDelay = 0x0299
const DAQmx_CO_Pulse_HighTicks = 0x1169
const DAQmx_CO_Pulse_LowTicks = 0x1171
const DAQmx_CO_Pulse_Ticks_InitialDelay = 0x0298
const DAQmx_CO_CtrTimebaseSrc = 0x0339
const DAQmx_CO_CtrTimebaseRate = 0x18c2
const DAQmx_CO_CtrTimebaseActiveEdge = 0x0341
const DAQmx_CO_CtrTimebase_DigFltr_Enable = 0x2276
const DAQmx_CO_CtrTimebase_DigFltr_MinPulseWidth = 0x2277
const DAQmx_CO_CtrTimebase_DigFltr_TimebaseSrc = 0x2278
const DAQmx_CO_CtrTimebase_DigFltr_TimebaseRate = 0x2279
const DAQmx_CO_CtrTimebase_DigSync_Enable = 0x227a
const DAQmx_CO_Count = 0x0293
const DAQmx_CO_OutputState = 0x0294
const DAQmx_CO_AutoIncrCnt = 0x0295
const DAQmx_CO_CtrTimebaseMasterTimebaseDiv = 0x18c3
const DAQmx_CO_PulseDone = 0x190e
const DAQmx_CO_EnableInitialDelayOnRetrigger = 0x2ec9
const DAQmx_CO_ConstrainedGenMode = 0x29f2
const DAQmx_CO_UseOnlyOnBrdMem = 0x2ecb
const DAQmx_CO_DataXferMech = 0x2ecc
const DAQmx_CO_DataXferReqCond = 0x2ecd
const DAQmx_CO_UsbXferReqSize = 0x2a93
const DAQmx_CO_UsbXferReqCount = 0x3005
const DAQmx_CO_MemMapEnable = 0x2ed3
const DAQmx_CO_Prescaler = 0x226d
const DAQmx_CO_RdyForNewVal = Float32(0x022f)
const DAQmx_ChanType = Float32(0x0187)
const DAQmx_PhysicalChanName = 0x18f5
const DAQmx_ChanDescr = 0x1926
const DAQmx_ChanIsGlobal = 0x2304
const DAQmx_Chan_SyncUnlockBehavior = 0x313c
const DAQmx_Dev_IsSimulated = 0x22ca
const DAQmx_Dev_ProductCategory = 0x29a9
const DAQmx_Dev_ProductType = 0x0631
const DAQmx_Dev_ProductNum = 0x231d
const DAQmx_Dev_SerialNum = 0x0632
const DAQmx_Dev_Accessory_ProductTypes = 0x2f6d
const DAQmx_Dev_Accessory_ProductNums = 0x2f6e
const DAQmx_Dev_Accessory_SerialNums = Float32(0x02f6)
const DAQmx_Carrier_SerialNum = 0x2a8a
const DAQmx_Dev_Chassis_ModuleDevNames = 0x29b6
const DAQmx_Dev_AnlgTrigSupported = 0x2984
const DAQmx_Dev_DigTrigSupported = 0x2985
const DAQmx_Dev_TimeTrigSupported = Float32(0x0301)
const DAQmx_Dev_AI_PhysicalChans = 0x231e
const DAQmx_Dev_AI_SupportedMeasTypes = 0x2fd2
const DAQmx_Dev_AI_MaxSingleChanRate = 0x298c
const DAQmx_Dev_AI_MaxMultiChanRate = 0x298d
const DAQmx_Dev_AI_MinRate = 0x298e
const DAQmx_Dev_AI_SimultaneousSamplingSupported = Float32(0x0298)
const DAQmx_Dev_AI_SampModes = 0x2fdc
const DAQmx_Dev_AI_TrigUsage = 0x2986
const DAQmx_Dev_AI_VoltageRngs = 0x2990
const DAQmx_Dev_AI_VoltageIntExcitDiscreteVals = 0x29c9
const DAQmx_Dev_AI_VoltageIntExcitRangeVals = 0x29ca
const DAQmx_Dev_AI_ChargeRngs = 0x3111
const DAQmx_Dev_AI_CurrentRngs = 0x2991
const DAQmx_Dev_AI_CurrentIntExcitDiscreteVals = 0x29cb
const DAQmx_Dev_AI_BridgeRngs = 0x2fd0
const DAQmx_Dev_AI_ResistanceRngs = 0x2a15
const DAQmx_Dev_AI_FreqRngs = 0x2992
const DAQmx_Dev_AI_Gains = 0x2993
const DAQmx_Dev_AI_Couplings = 0x2994
const DAQmx_Dev_AI_LowpassCutoffFreqDiscreteVals = 0x2995
const DAQmx_Dev_AI_LowpassCutoffFreqRangeVals = Float32(0x029c)
const DAQmx_AI_DigFltr_Types = 0x3107
const DAQmx_Dev_AI_DigFltr_LowpassCutoffFreqDiscreteVals = 0x30c8
const DAQmx_Dev_AI_DigFltr_LowpassCutoffFreqRangeVals = 0x30c9
const DAQmx_Dev_AO_PhysicalChans = Float32(0x0231)
const DAQmx_Dev_AO_SupportedOutputTypes = 0x2fd3
const DAQmx_Dev_AO_SampClkSupported = 0x2996
const DAQmx_Dev_AO_SampModes = 0x2fdd
const DAQmx_Dev_AO_MaxRate = 0x2997
const DAQmx_Dev_AO_MinRate = 0x2998
const DAQmx_Dev_AO_TrigUsage = 0x2987
const DAQmx_Dev_AO_VoltageRngs = 0x299b
const DAQmx_Dev_AO_CurrentRngs = 0x299c
const DAQmx_Dev_AO_Gains = 0x299d
const DAQmx_Dev_DI_Lines = 0x2320
const DAQmx_Dev_DI_Ports = 0x2321
const DAQmx_Dev_DI_MaxRate = 0x2999
const DAQmx_Dev_DI_TrigUsage = 0x2988
const DAQmx_Dev_DO_Lines = 0x2322
const DAQmx_Dev_DO_Ports = 0x2323
const DAQmx_Dev_DO_MaxRate = 0x299a
const DAQmx_Dev_DO_TrigUsage = 0x2989
const DAQmx_Dev_CI_PhysicalChans = 0x2324
const DAQmx_Dev_CI_SupportedMeasTypes = 0x2fd4
const DAQmx_Dev_CI_TrigUsage = 0x298a
const DAQmx_Dev_CI_SampClkSupported = 0x299e
const DAQmx_Dev_CI_SampModes = 0x2fde
const DAQmx_Dev_CI_MaxSize = Float32(0x0299)
const DAQmx_Dev_CI_MaxTimebase = 0x29a0
const DAQmx_Dev_CO_PhysicalChans = 0x2325
const DAQmx_Dev_CO_SupportedOutputTypes = 0x2fd5
const DAQmx_Dev_CO_SampClkSupported = 0x2f5b
const DAQmx_Dev_CO_SampModes = Float32(0x02fd)
const DAQmx_Dev_CO_TrigUsage = 0x298b
const DAQmx_Dev_CO_MaxSize = 0x29a1
const DAQmx_Dev_CO_MaxTimebase = 0x29a2
const DAQmx_Dev_TEDS_HWTEDSSupported = 0x2fd6
const DAQmx_Dev_NumDMAChans = 0x233c
const DAQmx_Dev_BusType = 0x2326
const DAQmx_Dev_PCI_BusNum = 0x2327
const DAQmx_Dev_PCI_DevNum = 0x2328
const DAQmx_Dev_PXI_ChassisNum = 0x2329
const DAQmx_Dev_PXI_SlotNum = 0x232a
const DAQmx_Dev_CompactDAQ_ChassisDevName = 0x29b7
const DAQmx_Dev_CompactDAQ_SlotNum = 0x29b8
const DAQmx_Dev_TCPIP_Hostname = 0x2a8b
const DAQmx_Dev_TCPIP_EthernetIP = 0x2a8c
const DAQmx_Dev_TCPIP_WirelessIP = 0x2a8d
const DAQmx_Dev_Terminals = 0x2a40
const DAQmx_Dev_NumTimeTrigs = 0x3141
const DAQmx_Dev_NumTimestampEngines = 0x3142
const DAQmx_Exported_AIConvClk_OutputTerm = 0x1687
const DAQmx_Exported_AIConvClk_Pulse_Polarity = 0x1688
const DAQmx_Exported_10MHzRefClk_OutputTerm = 0x226e
const DAQmx_Exported_20MHzTimebase_OutputTerm = 0x1657
const DAQmx_Exported_SampClk_OutputBehavior = 0x186b
const DAQmx_Exported_SampClk_OutputTerm = 0x1663
const DAQmx_Exported_SampClk_DelayOffset = 0x21c4
const DAQmx_Exported_SampClk_Pulse_Polarity = 0x1664
const DAQmx_Exported_SampClkTimebase_OutputTerm = 0x18f9
const DAQmx_Exported_DividedSampClkTimebase_OutputTerm = 0x21a1
const DAQmx_Exported_AdvTrig_OutputTerm = 0x1645
const DAQmx_Exported_AdvTrig_Pulse_Polarity = 0x1646
const DAQmx_Exported_AdvTrig_Pulse_WidthUnits = 0x1647
const DAQmx_Exported_AdvTrig_Pulse_Width = 0x1648
const DAQmx_Exported_PauseTrig_OutputTerm = 0x1615
const DAQmx_Exported_PauseTrig_Lvl_ActiveLvl = 0x1616
const DAQmx_Exported_RefTrig_OutputTerm = 0x0590
const DAQmx_Exported_RefTrig_Pulse_Polarity = 0x0591
const DAQmx_Exported_StartTrig_OutputTerm = 0x0584
const DAQmx_Exported_StartTrig_Pulse_Polarity = 0x0585
const DAQmx_Exported_AdvCmpltEvent_OutputTerm = 0x1651
const DAQmx_Exported_AdvCmpltEvent_Delay = 0x1757
const DAQmx_Exported_AdvCmpltEvent_Pulse_Polarity = 0x1652
const DAQmx_Exported_AdvCmpltEvent_Pulse_Width = 0x1654
const DAQmx_Exported_AIHoldCmpltEvent_OutputTerm = 0x18ed
const DAQmx_Exported_AIHoldCmpltEvent_PulsePolarity = 0x18ee
const DAQmx_Exported_ChangeDetectEvent_OutputTerm = 0x2197
const DAQmx_Exported_ChangeDetectEvent_Pulse_Polarity = 0x2303
const DAQmx_Exported_CtrOutEvent_OutputTerm = 0x1717
const DAQmx_Exported_CtrOutEvent_OutputBehavior = Float32(0x0174)
const DAQmx_Exported_CtrOutEvent_Pulse_Polarity = 0x1718
const DAQmx_Exported_CtrOutEvent_Toggle_IdleState = 0x186a
const DAQmx_Exported_HshkEvent_OutputTerm = 0x22ba
const DAQmx_Exported_HshkEvent_OutputBehavior = 0x22bb
const DAQmx_Exported_HshkEvent_Delay = 0x22bc
const DAQmx_Exported_HshkEvent_Interlocked_AssertedLvl = 0x22bd
const DAQmx_Exported_HshkEvent_Interlocked_AssertOnStart = 0x22be
const DAQmx_Exported_HshkEvent_Interlocked_DeassertDelay = Float32(0x022b)
const DAQmx_Exported_HshkEvent_Pulse_Polarity = 0x22c0
const DAQmx_Exported_HshkEvent_Pulse_Width = 0x22c1
const DAQmx_Exported_RdyForXferEvent_OutputTerm = 0x22b5
const DAQmx_Exported_RdyForXferEvent_Lvl_ActiveLvl = 0x22b6
const DAQmx_Exported_RdyForXferEvent_DeassertCond = 0x2963
const DAQmx_Exported_RdyForXferEvent_DeassertCondCustomThreshold = 0x2964
const DAQmx_Exported_DataActiveEvent_OutputTerm = 0x1633
const DAQmx_Exported_DataActiveEvent_Lvl_ActiveLvl = 0x1634
const DAQmx_Exported_RdyForStartEvent_OutputTerm = 0x1609
const DAQmx_Exported_RdyForStartEvent_Lvl_ActiveLvl = 0x1751
const DAQmx_Exported_SyncPulseEvent_OutputTerm = 0x223c
const DAQmx_Exported_WatchdogExpiredEvent_OutputTerm = 0x21aa
const DAQmx_PersistedChan_Author = 0x22d0
const DAQmx_PersistedChan_AllowInteractiveEditing = 0x22d1
const DAQmx_PersistedChan_AllowInteractiveDeletion = 0x22d2
const DAQmx_PersistedScale_Author = 0x22d4
const DAQmx_PersistedScale_AllowInteractiveEditing = 0x22d5
const DAQmx_PersistedScale_AllowInteractiveDeletion = 0x22d6
const DAQmx_PersistedTask_Author = 0x22cc
const DAQmx_PersistedTask_AllowInteractiveEditing = 0x22cd
const DAQmx_PersistedTask_AllowInteractiveDeletion = 0x22ce
const DAQmx_PhysicalChan_AI_SupportedMeasTypes = 0x2fd7
const DAQmx_PhysicalChan_AI_TermCfgs = 0x2342
const DAQmx_PhysicalChan_AI_InputSrcs = 0x2fd8
const DAQmx_PhysicalChan_AO_SupportedOutputTypes = 0x2fd9
const DAQmx_PhysicalChan_AO_SupportedPowerUpOutputTypes = 0x304e
const DAQmx_PhysicalChan_AO_TermCfgs = 0x29a3
const DAQmx_PhysicalChan_AO_ManualControlEnable = 0x2a1e
const DAQmx_PhysicalChan_AO_ManualControl_ShortDetected = 0x2ec3
const DAQmx_PhysicalChan_AO_ManualControlAmplitude = Float32(0x02a1)
const DAQmx_PhysicalChan_AO_ManualControlFreq = 0x2a20
const DAQmx_AO_PowerAmp_ChannelEnable = 0x3062
const DAQmx_AO_PowerAmp_ScalingCoeff = 0x3063
const DAQmx_AO_PowerAmp_Overcurrent = 0x3064
const DAQmx_AO_PowerAmp_Gain = 0x3065
const DAQmx_AO_PowerAmp_Offset = 0x3066
const DAQmx_PhysicalChan_DI_PortWidth = 0x29a4
const DAQmx_PhysicalChan_DI_SampClkSupported = 0x29a5
const DAQmx_PhysicalChan_DI_SampModes = 0x2fe0
const DAQmx_PhysicalChan_DI_ChangeDetectSupported = 0x29a6
const DAQmx_PhysicalChan_DO_PortWidth = 0x29a7
const DAQmx_PhysicalChan_DO_SampClkSupported = 0x29a8
const DAQmx_PhysicalChan_DO_SampModes = 0x2fe1
const DAQmx_PhysicalChan_CI_SupportedMeasTypes = 0x2fda
const DAQmx_PhysicalChan_CO_SupportedOutputTypes = 0x2fdb
const DAQmx_PhysicalChan_TEDS_MfgID = 0x21da
const DAQmx_PhysicalChan_TEDS_ModelNum = 0x21db
const DAQmx_PhysicalChan_TEDS_SerialNum = 0x21dc
const DAQmx_PhysicalChan_TEDS_VersionNum = 0x21dd
const DAQmx_PhysicalChan_TEDS_VersionLetter = 0x21de
const DAQmx_PhysicalChan_TEDS_BitStream = Float32(0x021d)
const DAQmx_PhysicalChan_TEDS_TemplateIDs = Float32(0x0228)
const DAQmx_Read_RelativeTo = 0x190a
const DAQmx_Read_Offset = 0x190b
const DAQmx_Read_ChannelsToRead = 0x1823
const DAQmx_Read_ReadAllAvailSamp = 0x1215
const DAQmx_Read_AutoStart = 0x1826
const DAQmx_Read_OverWrite = 0x1211
const DAQmx_Logging_FilePath = 0x2ec4
const DAQmx_Logging_Mode = 0x2ec5
const DAQmx_Logging_TDMS_GroupName = 0x2ec6
const DAQmx_Logging_TDMS_Operation = 0x2ec7
const DAQmx_Logging_Pause = 0x2fe3
const DAQmx_Logging_SampsPerFile = 0x2fe4
const DAQmx_Logging_FileWriteSize = 0x2fc3
const DAQmx_Logging_FilePreallocationSize = 0x2fc6
const DAQmx_Read_CurrReadPos = 0x1221
const DAQmx_Read_AvailSampPerChan = 0x1223
const DAQmx_Read_TotalSampPerChanAcquired = 0x192a
const DAQmx_Read_CommonModeRangeErrorChansExist = 0x2a98
const DAQmx_Read_CommonModeRangeErrorChans = 0x2a99
const DAQmx_Read_ExcitFaultChansExist = 0x3088
const DAQmx_Read_ExcitFaultChans = 0x3089
const DAQmx_Read_OvercurrentChansExist = 0x29e6
const DAQmx_Read_OvercurrentChans = 0x29e7
const DAQmx_Read_OvertemperatureChansExist = 0x3081
const DAQmx_Read_OvertemperatureChans = 0x3082
const DAQmx_Read_OpenChansExist = 0x3100
const DAQmx_Read_OpenChans = 0x3101
const DAQmx_Read_OpenChansDetails = 0x3102
const DAQmx_Read_OpenCurrentLoopChansExist = 0x2a09
const DAQmx_Read_OpenCurrentLoopChans = 0x2a0a
const DAQmx_Read_OpenThrmcplChansExist = 0x2a96
const DAQmx_Read_OpenThrmcplChans = 0x2a97
const DAQmx_Read_OverloadedChansExist = 0x2174
const DAQmx_Read_OverloadedChans = 0x2175
const DAQmx_Read_PLL_UnlockedChansExist = 0x3118
const DAQmx_Read_PLL_UnlockedChans = 0x3119
const DAQmx_Read_Sync_UnlockedChansExist = 0x313d
const DAQmx_Read_Sync_UnlockedChans = 0x313e
const DAQmx_Read_AccessoryInsertionOrRemovalDetected = 0x2f70
const DAQmx_Read_DevsWithInsertedOrRemovedAccessories = 0x2f71
const DAQmx_Read_ChangeDetect_HasOverflowed = 0x2194
const DAQmx_Read_RawDataWidth = 0x217a
const DAQmx_Read_NumChans = 0x217b
const DAQmx_Read_DigitalLines_BytesPerChan = 0x217c
const DAQmx_Read_WaitMode = 0x2232
const DAQmx_Read_SleepTime = 0x22b0
const DAQmx_RealTime_ConvLateErrorsToWarnings = 0x22ee
const DAQmx_RealTime_NumOfWarmupIters = 0x22ed
const DAQmx_RealTime_WaitForNextSampClkWaitMode = Float32(0x022e)
const DAQmx_RealTime_ReportMissedSamp = 0x2319
const DAQmx_RealTime_WriteRecoveryMode = 0x231a
const DAQmx_Scale_Descr = 0x1226
const DAQmx_Scale_ScaledUnits = 0x191b
const DAQmx_Scale_PreScaledUnits = 0x18f7
const DAQmx_Scale_Type = 0x1929
const DAQmx_Scale_Lin_Slope = 0x1227
const DAQmx_Scale_Lin_YIntercept = 0x1228
const DAQmx_Scale_Map_ScaledMax = 0x1229
const DAQmx_Scale_Map_PreScaledMax = 0x1231
const DAQmx_Scale_Map_ScaledMin = 0x1230
const DAQmx_Scale_Map_PreScaledMin = 0x1232
const DAQmx_Scale_Poly_ForwardCoeff = 0x1234
const DAQmx_Scale_Poly_ReverseCoeff = 0x1235
const DAQmx_Scale_Table_ScaledVals = 0x1236
const DAQmx_Scale_Table_PreScaledVals = 0x1237
const DAQmx_SwitchChan_Usage = 0x18e4
const DAQmx_SwitchChan_AnlgBusSharingEnable = 0x2f9e
const DAQmx_SwitchChan_MaxACCarryCurrent = 0x0648
const DAQmx_SwitchChan_MaxACSwitchCurrent = 0x0646
const DAQmx_SwitchChan_MaxACCarryPwr = 0x0642
const DAQmx_SwitchChan_MaxACSwitchPwr = 0x0644
const DAQmx_SwitchChan_MaxDCCarryCurrent = 0x0647
const DAQmx_SwitchChan_MaxDCSwitchCurrent = 0x0645
const DAQmx_SwitchChan_MaxDCCarryPwr = 0x0643
const DAQmx_SwitchChan_MaxDCSwitchPwr = 0x0649
const DAQmx_SwitchChan_MaxACVoltage = 0x0651
const DAQmx_SwitchChan_MaxDCVoltage = 0x0650
const DAQmx_SwitchChan_WireMode = 0x18e5
const DAQmx_SwitchChan_Bandwidth = 0x0640
const DAQmx_SwitchChan_Impedance = 0x0641
const DAQmx_SwitchDev_SettlingTime = 0x1244
const DAQmx_SwitchDev_AutoConnAnlgBus = 0x17da
const DAQmx_SwitchDev_PwrDownLatchRelaysAfterSettling = 0x22db
const DAQmx_SwitchDev_Settled = 0x1243
const DAQmx_SwitchDev_RelayList = 0x17dc
const DAQmx_SwitchDev_NumRelays = 0x18e6
const DAQmx_SwitchDev_SwitchChanList = 0x18e7
const DAQmx_SwitchDev_NumSwitchChans = 0x18e8
const DAQmx_SwitchDev_NumRows = 0x18e9
const DAQmx_SwitchDev_NumColumns = 0x18ea
const DAQmx_SwitchDev_Topology = 0x193d
const DAQmx_SwitchDev_Temperature = 0x301a
const DAQmx_SwitchScan_BreakMode = 0x1247
const DAQmx_SwitchScan_RepeatMode = 0x1248
const DAQmx_SwitchScan_WaitingForAdv = 0x17d9
const DAQmx_Sys_GlobalChans = 0x1265
const DAQmx_Sys_Scales = 0x1266
const DAQmx_Sys_Tasks = 0x1267
const DAQmx_Sys_DevNames = 0x193b
const DAQmx_Sys_NIDAQMajorVersion = 0x1272
const DAQmx_Sys_NIDAQMinorVersion = 0x1923
const DAQmx_Sys_NIDAQUpdateVersion = 0x2f22
const DAQmx_Task_Name = 0x1276
const DAQmx_Task_Channels = 0x1273
const DAQmx_Task_NumChans = 0x2181
const DAQmx_Task_Devices = 0x230e
const DAQmx_Task_NumDevices = 0x29ba
const DAQmx_Task_Complete = 0x1274
const DAQmx_SampQuant_SampMode = 0x1300
const DAQmx_SampQuant_SampPerChan = 0x1310
const DAQmx_SampTimingType = 0x1347
const DAQmx_SampClk_Rate = 0x1344
const DAQmx_SampClk_MaxRate = 0x22c8
const DAQmx_SampClk_Src = 0x1852
const DAQmx_SampClk_ActiveEdge = 0x1301
const DAQmx_SampClk_OverrunBehavior = 0x2efc
const DAQmx_SampClk_UnderflowBehavior = 0x2961
const DAQmx_SampClk_TimebaseDiv = 0x18eb
const DAQmx_SampClk_Term = 0x2f1b
const DAQmx_SampClk_Timebase_Rate = 0x1303
const DAQmx_SampClk_Timebase_Src = 0x1308
const DAQmx_SampClk_Timebase_ActiveEdge = 0x18ec
const DAQmx_SampClk_Timebase_MasterTimebaseDiv = 0x1305
const DAQmx_SampClkTimebase_Term = 0x2f1c
const DAQmx_SampClk_DigFltr_Enable = 0x221e
const DAQmx_SampClk_DigFltr_MinPulseWidth = Float32(0x0221)
const DAQmx_SampClk_DigFltr_TimebaseSrc = 0x2220
const DAQmx_SampClk_DigFltr_TimebaseRate = 0x2221
const DAQmx_SampClk_DigSync_Enable = 0x2222
const DAQmx_SampClk_WriteWfm_UseInitialWfmDT = 0x30fc
const DAQmx_Hshk_DelayAfterXfer = 0x22c2
const DAQmx_Hshk_StartCond = 0x22c3
const DAQmx_Hshk_SampleInputDataWhen = 0x22c4
const DAQmx_ChangeDetect_DI_RisingEdgePhysicalChans = 0x2195
const DAQmx_ChangeDetect_DI_FallingEdgePhysicalChans = 0x2196
const DAQmx_ChangeDetect_DI_Tristate = 0x2efa
const DAQmx_OnDemand_SimultaneousAOEnable = 0x21a0
const DAQmx_Implicit_UnderflowBehavior = 0x2efd
const DAQmx_AIConv_Rate = 0x1848
const DAQmx_AIConv_MaxRate = 0x22c9
const DAQmx_AIConv_Src = 0x1502
const DAQmx_AIConv_ActiveEdge = 0x1853
const DAQmx_AIConv_TimebaseDiv = 0x1335
const DAQmx_AIConv_Timebase_Src = 0x1339
const DAQmx_DelayFromSampClk_DelayUnits = 0x1304
const DAQmx_DelayFromSampClk_Delay = 0x1317
const DAQmx_AIConv_DigFltr_Enable = 0x2edc
const DAQmx_AIConv_DigFltr_MinPulseWidth = 0x2edd
const DAQmx_AIConv_DigFltr_TimebaseSrc = 0x2ede
const DAQmx_AIConv_DigFltr_TimebaseRate = Float32(0x02ed)
const DAQmx_AIConv_DigSync_Enable = 0x2ee0
const DAQmx_MasterTimebase_Rate = 0x1495
const DAQmx_MasterTimebase_Src = 0x1343
const DAQmx_RefClk_Rate = 0x1315
const DAQmx_RefClk_Src = 0x1316
const DAQmx_SyncPulse_Type = 0x3136
const DAQmx_SyncPulse_Src = 0x223d
const DAQmx_SyncPulse_Time_When = 0x3137
const DAQmx_SyncPulse_Time_Timescale = 0x3138
const DAQmx_SyncPulse_SyncTime = 0x223e
const DAQmx_SyncPulse_MinDelayToStart = Float32(0x0223)
const DAQmx_SyncPulse_ResetTime = 0x2f7c
const DAQmx_SyncPulse_ResetDelay = 0x2f7d
const DAQmx_SyncPulse_Term = 0x2f85
const DAQmx_SyncClk_Interval = 0x2f7e
const DAQmx_SampTimingEngine = 0x2a26
const DAQmx_FirstSampTimestamp_Enable = 0x3139
const DAQmx_FirstSampTimestamp_Timescale = 0x313b
const DAQmx_FirstSampTimestamp_Val = 0x313a
const DAQmx_StartTrig_Type = 0x1393
const DAQmx_StartTrig_Term = 0x2f1e
const DAQmx_DigEdge_StartTrig_Src = 0x1407
const DAQmx_DigEdge_StartTrig_Edge = 0x1404
const DAQmx_DigEdge_StartTrig_DigFltr_Enable = 0x2223
const DAQmx_DigEdge_StartTrig_DigFltr_MinPulseWidth = 0x2224
const DAQmx_DigEdge_StartTrig_DigFltr_TimebaseSrc = 0x2225
const DAQmx_DigEdge_StartTrig_DigFltr_TimebaseRate = 0x2226
const DAQmx_DigEdge_StartTrig_DigSync_Enable = 0x2227
const DAQmx_DigPattern_StartTrig_Src = 0x1410
const DAQmx_DigPattern_StartTrig_Pattern = 0x2186
const DAQmx_DigPattern_StartTrig_When = 0x1411
const DAQmx_AnlgEdge_StartTrig_Src = 0x1398
const DAQmx_AnlgEdge_StartTrig_Slope = 0x1397
const DAQmx_AnlgEdge_StartTrig_Lvl = 0x1396
const DAQmx_AnlgEdge_StartTrig_Hyst = 0x1395
const DAQmx_AnlgEdge_StartTrig_Coupling = 0x2233
const DAQmx_AnlgEdge_StartTrig_DigFltr_Enable = 0x2ee1
const DAQmx_AnlgEdge_StartTrig_DigFltr_MinPulseWidth = 0x2ee2
const DAQmx_AnlgEdge_StartTrig_DigFltr_TimebaseSrc = 0x2ee3
const DAQmx_AnlgEdge_StartTrig_DigFltr_TimebaseRate = 0x2ee4
const DAQmx_AnlgEdge_StartTrig_DigSync_Enable = 0x2ee5
const DAQmx_AnlgMultiEdge_StartTrig_Srcs = 0x3121
const DAQmx_AnlgMultiEdge_StartTrig_Slopes = 0x3122
const DAQmx_AnlgMultiEdge_StartTrig_Lvls = 0x3123
const DAQmx_AnlgMultiEdge_StartTrig_Hysts = 0x3124
const DAQmx_AnlgMultiEdge_StartTrig_Couplings = 0x3125
const DAQmx_AnlgWin_StartTrig_Src = 0x1400
const DAQmx_AnlgWin_StartTrig_When = 0x1401
const DAQmx_AnlgWin_StartTrig_Top = 0x1403
const DAQmx_AnlgWin_StartTrig_Btm = 0x1402
const DAQmx_AnlgWin_StartTrig_Coupling = 0x2234
const DAQmx_AnlgWin_StartTrig_DigFltr_Enable = Float32(0x02ef)
const DAQmx_AnlgWin_StartTrig_DigFltr_MinPulseWidth = 0x2f00
const DAQmx_AnlgWin_StartTrig_DigFltr_TimebaseSrc = 0x2f01
const DAQmx_AnlgWin_StartTrig_DigFltr_TimebaseRate = 0x2f02
const DAQmx_AnlgWin_StartTrig_DigSync_Enable = 0x2f03
const DAQmx_StartTrig_TrigWhen = 0x304d
const DAQmx_StartTrig_Timescale = 0x3036
const DAQmx_StartTrig_TimestampEnable = 0x314a
const DAQmx_StartTrig_TimestampTimescale = 0x312d
const DAQmx_StartTrig_TimestampVal = 0x314b
const DAQmx_StartTrig_Delay = 0x1856
const DAQmx_StartTrig_DelayUnits = 0x18c8
const DAQmx_StartTrig_Retriggerable = Float32(0x0190)
const DAQmx_StartTrig_TrigWin = 0x311a
const DAQmx_StartTrig_RetriggerWin = 0x311b
const DAQmx_StartTrig_MaxNumTrigsToDetect = 0x311c
const DAQmx_RefTrig_Type = 0x1419
const DAQmx_RefTrig_PretrigSamples = 0x1445
const DAQmx_RefTrig_Term = Float32(0x02f1)
const DAQmx_DigEdge_RefTrig_Src = 0x1434
const DAQmx_DigEdge_RefTrig_Edge = 0x1430
const DAQmx_DigEdge_RefTrig_DigFltr_Enable = 0x2ed7
const DAQmx_DigEdge_RefTrig_DigFltr_MinPulseWidth = 0x2ed8
const DAQmx_DigEdge_RefTrig_DigFltr_TimebaseSrc = 0x2ed9
const DAQmx_DigEdge_RefTrig_DigFltr_TimebaseRate = 0x2eda
const DAQmx_DigEdge_RefTrig_DigSync_Enable = 0x2edb
const DAQmx_DigPattern_RefTrig_Src = 0x1437
const DAQmx_DigPattern_RefTrig_Pattern = 0x2187
const DAQmx_DigPattern_RefTrig_When = 0x1438
const DAQmx_AnlgEdge_RefTrig_Src = 0x1424
const DAQmx_AnlgEdge_RefTrig_Slope = 0x1423
const DAQmx_AnlgEdge_RefTrig_Lvl = 0x1422
const DAQmx_AnlgEdge_RefTrig_Hyst = 0x1421
const DAQmx_AnlgEdge_RefTrig_Coupling = 0x2235
const DAQmx_AnlgEdge_RefTrig_DigFltr_Enable = 0x2ee6
const DAQmx_AnlgEdge_RefTrig_DigFltr_MinPulseWidth = 0x2ee7
const DAQmx_AnlgEdge_RefTrig_DigFltr_TimebaseSrc = 0x2ee8
const DAQmx_AnlgEdge_RefTrig_DigFltr_TimebaseRate = 0x2ee9
const DAQmx_AnlgEdge_RefTrig_DigSync_Enable = 0x2eea
const DAQmx_AnlgMultiEdge_RefTrig_Srcs = 0x3126
const DAQmx_AnlgMultiEdge_RefTrig_Slopes = 0x3127
const DAQmx_AnlgMultiEdge_RefTrig_Lvls = 0x3128
const DAQmx_AnlgMultiEdge_RefTrig_Hysts = 0x3129
const DAQmx_AnlgMultiEdge_RefTrig_Couplings = 0x312a
const DAQmx_AnlgWin_RefTrig_Src = 0x1426
const DAQmx_AnlgWin_RefTrig_When = 0x1427
const DAQmx_AnlgWin_RefTrig_Top = 0x1429
const DAQmx_AnlgWin_RefTrig_Btm = 0x1428
const DAQmx_AnlgWin_RefTrig_Coupling = 0x1857
const DAQmx_AnlgWin_RefTrig_DigFltr_Enable = 0x2eeb
const DAQmx_AnlgWin_RefTrig_DigFltr_MinPulseWidth = 0x2eec
const DAQmx_AnlgWin_RefTrig_DigFltr_TimebaseSrc = 0x2eed
const DAQmx_AnlgWin_RefTrig_DigFltr_TimebaseRate = 0x2eee
const DAQmx_AnlgWin_RefTrig_DigSync_Enable = Float32(0x02ee)
const DAQmx_RefTrig_AutoTrigEnable = 0x2ec1
const DAQmx_RefTrig_AutoTriggered = 0x2ec2
const DAQmx_RefTrig_TimestampEnable = 0x312e
const DAQmx_RefTrig_TimestampTimescale = 0x3130
const DAQmx_RefTrig_TimestampVal = Float32(0x0312)
const DAQmx_RefTrig_Delay = 0x1483
const DAQmx_RefTrig_Retriggerable = 0x311d
const DAQmx_RefTrig_TrigWin = 0x311e
const DAQmx_RefTrig_RetriggerWin = Float32(0x0311)
const DAQmx_RefTrig_MaxNumTrigsToDetect = 0x3120
const DAQmx_AdvTrig_Type = 0x1365
const DAQmx_DigEdge_AdvTrig_Src = 0x1362
const DAQmx_DigEdge_AdvTrig_Edge = 0x1360
const DAQmx_DigEdge_AdvTrig_DigFltr_Enable = 0x2238
const DAQmx_HshkTrig_Type = 0x22b7
const DAQmx_Interlocked_HshkTrig_Src = 0x22b8
const DAQmx_Interlocked_HshkTrig_AssertedLvl = 0x22b9
const DAQmx_PauseTrig_Type = 0x1366
const DAQmx_PauseTrig_Term = 0x2f20
const DAQmx_AnlgLvl_PauseTrig_Src = 0x1370
const DAQmx_AnlgLvl_PauseTrig_When = 0x1371
const DAQmx_AnlgLvl_PauseTrig_Lvl = 0x1369
const DAQmx_AnlgLvl_PauseTrig_Hyst = 0x1368
const DAQmx_AnlgLvl_PauseTrig_Coupling = 0x2236
const DAQmx_AnlgLvl_PauseTrig_DigFltr_Enable = 0x2ef0
const DAQmx_AnlgLvl_PauseTrig_DigFltr_MinPulseWidth = 0x2ef1
const DAQmx_AnlgLvl_PauseTrig_DigFltr_TimebaseSrc = 0x2ef2
const DAQmx_AnlgLvl_PauseTrig_DigFltr_TimebaseRate = 0x2ef3
const DAQmx_AnlgLvl_PauseTrig_DigSync_Enable = 0x2ef4
const DAQmx_AnlgWin_PauseTrig_Src = 0x1373
const DAQmx_AnlgWin_PauseTrig_When = 0x1374
const DAQmx_AnlgWin_PauseTrig_Top = 0x1376
const DAQmx_AnlgWin_PauseTrig_Btm = 0x1375
const DAQmx_AnlgWin_PauseTrig_Coupling = 0x2237
const DAQmx_AnlgWin_PauseTrig_DigFltr_Enable = 0x2ef5
const DAQmx_AnlgWin_PauseTrig_DigFltr_MinPulseWidth = 0x2ef6
const DAQmx_AnlgWin_PauseTrig_DigFltr_TimebaseSrc = 0x2ef7
const DAQmx_AnlgWin_PauseTrig_DigFltr_TimebaseRate = 0x2ef8
const DAQmx_AnlgWin_PauseTrig_DigSync_Enable = 0x2ef9
const DAQmx_DigLvl_PauseTrig_Src = 0x1379
const DAQmx_DigLvl_PauseTrig_When = 0x1380
const DAQmx_DigLvl_PauseTrig_DigFltr_Enable = 0x2228
const DAQmx_DigLvl_PauseTrig_DigFltr_MinPulseWidth = 0x2229
const DAQmx_DigLvl_PauseTrig_DigFltr_TimebaseSrc = 0x222a
const DAQmx_DigLvl_PauseTrig_DigFltr_TimebaseRate = 0x222b
const DAQmx_DigLvl_PauseTrig_DigSync_Enable = 0x222c
const DAQmx_DigPattern_PauseTrig_Src = Float32(0x0216)
const DAQmx_DigPattern_PauseTrig_Pattern = 0x2188
const DAQmx_DigPattern_PauseTrig_When = 0x2170
const DAQmx_ArmStartTrig_Type = 0x1414
const DAQmx_ArmStart_Term = Float32(0x02f7)
const DAQmx_DigEdge_ArmStartTrig_Src = 0x1417
const DAQmx_DigEdge_ArmStartTrig_Edge = 0x1415
const DAQmx_DigEdge_ArmStartTrig_DigFltr_Enable = 0x222d
const DAQmx_DigEdge_ArmStartTrig_DigFltr_MinPulseWidth = 0x222e
const DAQmx_DigEdge_ArmStartTrig_DigFltr_TimebaseSrc = Float32(0x0222)
const DAQmx_DigEdge_ArmStartTrig_DigFltr_TimebaseRate = 0x2230
const DAQmx_DigEdge_ArmStartTrig_DigSync_Enable = 0x2231
const DAQmx_ArmStartTrig_TrigWhen = 0x3131
const DAQmx_ArmStartTrig_Timescale = 0x3132
const DAQmx_ArmStartTrig_TimestampEnable = 0x3133
const DAQmx_ArmStartTrig_TimestampTimescale = 0x3135
const DAQmx_ArmStartTrig_TimestampVal = 0x3134
const DAQmx_Trigger_SyncType = 0x2f80
const DAQmx_Watchdog_Timeout = 0x21a9
const DAQmx_WatchdogExpirTrig_Type = 0x21a3
const DAQmx_WatchdogExpirTrig_TrigOnNetworkConnLoss = 0x305d
const DAQmx_DigEdge_WatchdogExpirTrig_Src = 0x21a4
const DAQmx_DigEdge_WatchdogExpirTrig_Edge = 0x21a5
const DAQmx_Watchdog_DO_ExpirState = 0x21a7
const DAQmx_Watchdog_AO_OutputType = 0x305e
const DAQmx_Watchdog_AO_ExpirState = Float32(0x0305)
const DAQmx_Watchdog_CO_ExpirState = 0x3060
const DAQmx_Watchdog_HasExpired = 0x21a8
const DAQmx_Write_RelativeTo = 0x190c
const DAQmx_Write_Offset = 0x190d
const DAQmx_Write_RegenMode = 0x1453
const DAQmx_Write_CurrWritePos = 0x1458
const DAQmx_Write_OvercurrentChansExist = 0x29e8
const DAQmx_Write_OvercurrentChans = 0x29e9
const DAQmx_Write_OvertemperatureChansExist = 0x2a84
const DAQmx_Write_OvertemperatureChans = 0x3083
const DAQmx_Write_ExternalOvervoltageChansExist = 0x30bb
const DAQmx_Write_ExternalOvervoltageChans = 0x30bc
const DAQmx_Write_OverloadedChansExist = 0x3084
const DAQmx_Write_OverloadedChans = 0x3085
const DAQmx_Write_OpenCurrentLoopChansExist = 0x29ea
const DAQmx_Write_OpenCurrentLoopChans = 0x29eb
const DAQmx_Write_PowerSupplyFaultChansExist = 0x29ec
const DAQmx_Write_PowerSupplyFaultChans = 0x29ed
const DAQmx_Write_Sync_UnlockedChansExist = Float32(0x0313)
const DAQmx_Write_Sync_UnlockedChans = 0x3140
const DAQmx_Write_SpaceAvail = 0x1460
const DAQmx_Write_TotalSampPerChanGenerated = 0x192b
const DAQmx_Write_AccessoryInsertionOrRemovalDetected = 0x3053
const DAQmx_Write_DevsWithInsertedOrRemovedAccessories = 0x3054
const DAQmx_Write_RawDataWidth = 0x217d
const DAQmx_Write_NumChans = 0x217e
const DAQmx_Write_WaitMode = 0x22b1
const DAQmx_Write_SleepTime = 0x22b2
const DAQmx_Write_DigitalLines_BytesPerChan = Float32(0x0217)
const DAQmx_ReadWaitMode = DAQmx_Read_WaitMode
const DAQmx_Val_Task_Start = 0
const DAQmx_Val_Task_Stop = 1
const DAQmx_Val_Task_Verify = 2
const DAQmx_Val_Task_Commit = 3
const DAQmx_Val_Task_Reserve = 4
const DAQmx_Val_Task_Unreserve = 5
const DAQmx_Val_Task_Abort = 6

# Skipping MacroDefinition: DAQmx_Val_SynchronousEventCallbacks ( 1 << 0 ) // Synchronous callbacks

const DAQmx_Val_Acquired_Into_Buffer = 1
const DAQmx_Val_Transferred_From_Buffer = 2
const DAQmx_Val_ResetTimer = 0
const DAQmx_Val_ClearExpiration = 1
const DAQmx_Val_ChanPerLine = 0
const DAQmx_Val_ChanForAllLines = 1
const DAQmx_Val_GroupByChannel = 0
const DAQmx_Val_GroupByScanNumber = 1
const DAQmx_Val_DoNotInvertPolarity = 0
const DAQmx_Val_InvertPolarity = 1
const DAQmx_Val_Action_Commit = 0
const DAQmx_Val_Action_Cancel = 1
const DAQmx_Val_AdvanceTrigger = 12488
const DAQmx_Val_Rising = 10280
const DAQmx_Val_Falling = 10171
const DAQmx_Val_PathStatus_Available = 10431
const DAQmx_Val_PathStatus_AlreadyExists = 10432
const DAQmx_Val_PathStatus_Unsupported = 10433
const DAQmx_Val_PathStatus_ChannelInUse = 10434
const DAQmx_Val_PathStatus_SourceChannelConflict = 10435
const DAQmx_Val_PathStatus_ChannelReservedForRouting = 10436
const DAQmx_Val_DegC = 10143
const DAQmx_Val_DegF = 10144
const DAQmx_Val_Kelvins = 10325
const DAQmx_Val_DegR = 10145
const DAQmx_Val_High = 10192
const DAQmx_Val_Low = 10214
const DAQmx_Val_Tristate = 10310
const DAQmx_Val_PullUp = 15950
const DAQmx_Val_PullDown = 15951
const DAQmx_Val_ChannelVoltage = 0
const DAQmx_Val_ChannelCurrent = 1
const DAQmx_Val_ChannelHighImpedance = 2
const DAQmx_Val_Open = 10437
const DAQmx_Val_Closed = 10438
const DAQmx_Val_Loopback0 = 0
const DAQmx_Val_Loopback180 = 1
const DAQmx_Val_Ground = 2
const DAQmx_Val_Voltage = 10322
const DAQmx_Val_Bridge = 15908
const DAQmx_Val_Current = 10134
const DAQmx_Val_Diff = 10106
const DAQmx_Val_PseudoDiff = 12529
const DAQmx_Val_Charge = 16105
const DAQmx_Val_A = 12513
const DAQmx_Val_B = 12514
const DAQmx_Val_Newtons = 15875
const DAQmx_Val_Pounds = 15876
const DAQmx_Val_FromCustomScale = 10065
const DAQmx_Val_StartTrigger = 12491
const DAQmx_Val_ReferenceTrigger = 12490
const DAQmx_Val_ArmStartTrigger = 14641
const DAQmx_Val_FirstSampleTimestamp = 16130
const DAQmx_Val_Cfg_Default = -1
const DAQmx_Val_Default = -1
const DAQmx_Val_WaitInfinitely = -1.0
const DAQmx_Val_Auto = -1

# Skipping MacroDefinition: DAQmx_Val_Save_Overwrite ( 1 << 0 ) #
# Skipping MacroDefinition: DAQmx_Val_Save_AllowInteractiveEditing ( 1 << 1 ) #
# Skipping MacroDefinition: DAQmx_Val_Save_AllowInteractiveDeletion ( 1 << 2 ) //*** Values for the Trigger Usage parameter - set of trigger types a device may support
# Skipping MacroDefinition: DAQmx_Val_Bit_TriggerUsageTypes_Advance ( 1 << 0 ) // Device supports advance triggers
# Skipping MacroDefinition: DAQmx_Val_Bit_TriggerUsageTypes_Pause ( 1 << 1 ) // Device supports pause triggers
# Skipping MacroDefinition: DAQmx_Val_Bit_TriggerUsageTypes_Reference ( 1 << 2 ) // Device supports reference triggers
# Skipping MacroDefinition: DAQmx_Val_Bit_TriggerUsageTypes_Start ( 1 << 3 ) // Device supports start triggers
# Skipping MacroDefinition: DAQmx_Val_Bit_TriggerUsageTypes_Handshake ( 1 << 4 ) // Device supports handshake triggers
# Skipping MacroDefinition: DAQmx_Val_Bit_TriggerUsageTypes_ArmStart ( 1 << 5 ) // Device supports arm start triggers
# Skipping MacroDefinition: DAQmx_Val_Bit_CouplingTypes_AC ( 1 << 0 ) // Device supports AC coupling
# Skipping MacroDefinition: DAQmx_Val_Bit_CouplingTypes_DC ( 1 << 1 ) // Device supports DC coupling
# Skipping MacroDefinition: DAQmx_Val_Bit_CouplingTypes_Ground ( 1 << 2 ) // Device supports ground coupling
# Skipping MacroDefinition: DAQmx_Val_Bit_CouplingTypes_HFReject ( 1 << 3 ) // Device supports High Frequency Reject coupling
# Skipping MacroDefinition: DAQmx_Val_Bit_CouplingTypes_LFReject ( 1 << 4 ) // Device supports Low Frequency Reject coupling
# Skipping MacroDefinition: DAQmx_Val_Bit_CouplingTypes_NoiseReject ( 1 << 5 ) // Device supports Noise Reject coupling
# Skipping MacroDefinition: DAQmx_Val_Bit_TermCfg_RSE ( 1 << 0 ) // RSE terminal configuration
# Skipping MacroDefinition: DAQmx_Val_Bit_TermCfg_NRSE ( 1 << 1 ) // NRSE terminal configuration
# Skipping MacroDefinition: DAQmx_Val_Bit_TermCfg_Diff ( 1 << 2 ) // Differential terminal configuration
# Skipping MacroDefinition: DAQmx_Val_Bit_TermCfg_PseudoDIFF ( 1 << 3 ) // Pseudodifferential terminal configuration

const DAQmx_Val_4Wire = 4
const DAQmx_Val_5Wire = 5
const DAQmx_Val_6Wire = 6
const DAQmx_Val_Automatic = 16097
const DAQmx_Val_HighResolution = 10195
const DAQmx_Val_HighSpeed = 14712
const DAQmx_Val_Best50HzRejection = 14713
const DAQmx_Val_Best60HzRejection = 14714
const DAQmx_Val_Custom = 10137
const DAQmx_Val_VoltageRMS = 10350
const DAQmx_Val_CurrentRMS = 10351
const DAQmx_Val_Voltage_CustomWithExcitation = 10323
const DAQmx_Val_Freq_Voltage = 10181
const DAQmx_Val_Resistance = 10278
const DAQmx_Val_Temp_TC = 10303
const DAQmx_Val_Temp_Thrmstr = 10302
const DAQmx_Val_Temp_RTD = 10301
const DAQmx_Val_Temp_BuiltInSensor = 10311
const DAQmx_Val_Strain_Gage = 10300
const DAQmx_Val_Rosette_Strain_Gage = 15980
const DAQmx_Val_Position_LVDT = 10352
const DAQmx_Val_Position_RVDT = 10353
const DAQmx_Val_Position_EddyCurrentProximityProbe = 14835
const DAQmx_Val_Accelerometer = 10356
const DAQmx_Val_Acceleration_Charge = 16104
const DAQmx_Val_Acceleration_4WireDCVoltage = 16106
const DAQmx_Val_Velocity_IEPESensor = 15966
const DAQmx_Val_Force_Bridge = 15899
const DAQmx_Val_Force_IEPESensor = 15895
const DAQmx_Val_Pressure_Bridge = 15902
const DAQmx_Val_SoundPressure_Microphone = 10354
const DAQmx_Val_Torque_Bridge = 15905
const DAQmx_Val_TEDS_Sensor = 12531
const DAQmx_Val_ZeroVolts = 12526
const DAQmx_Val_HighImpedance = 12527
const DAQmx_Val_MaintainExistingValue = 12528
const DAQmx_Val_FuncGen = 14750
const DAQmx_Val_PicoCoulombsPerG = 16099
const DAQmx_Val_PicoCoulombsPerMetersPerSecondSquared = 16100
const DAQmx_Val_PicoCoulombsPerInchesPerSecondSquared = 16101
const DAQmx_Val_mVoltsPerG = 12509
const DAQmx_Val_VoltsPerG = 12510
const DAQmx_Val_AccelUnit_g = 10186
const DAQmx_Val_MetersPerSecondSquared = 12470
const DAQmx_Val_InchesPerSecondSquared = 12471
const DAQmx_Val_FiniteSamps = 10178
const DAQmx_Val_ContSamps = 10123
const DAQmx_Val_HWTimedSinglePoint = 12522
const DAQmx_Val_AboveLvl = 10093
const DAQmx_Val_BelowLvl = 10107
const DAQmx_Val_Degrees = 10146
const DAQmx_Val_Radians = 10273
const DAQmx_Val_Ticks = 10304
const DAQmx_Val_RPM = 16080
const DAQmx_Val_RadiansPerSecond = 16081
const DAQmx_Val_DegreesPerSecond = 16082
const DAQmx_Val_None = 10230
const DAQmx_Val_Once = 10244
const DAQmx_Val_EverySample = 10164
const DAQmx_Val_NoAction = 10227
const DAQmx_Val_BreakBeforeMake = 10110
const DAQmx_Val_FullBridge = 10182
const DAQmx_Val_HalfBridge = 10187
const DAQmx_Val_QuarterBridge = 10270
const DAQmx_Val_NoBridge = 10228
const DAQmx_Val_VoltsPerVolt = 15896
const DAQmx_Val_mVoltsPerVolt = 15897
const DAQmx_Val_KilogramForce = 15877
const DAQmx_Val_Pascals = 10081
const DAQmx_Val_PoundsPerSquareInch = 15879
const DAQmx_Val_Bar = 15880
const DAQmx_Val_NewtonMeters = 15881
const DAQmx_Val_InchOunces = 15882
const DAQmx_Val_InchPounds = 15883
const DAQmx_Val_FootPounds = 15884
const DAQmx_Val_FromTEDS = 12516
const DAQmx_Val_PCI = 12582
const DAQmx_Val_PCIe = 13612
const DAQmx_Val_PXI = 12583
const DAQmx_Val_PXIe = 14706
const DAQmx_Val_SCXI = 12584
const DAQmx_Val_SCC = 14707
const DAQmx_Val_PCCard = 12585
const DAQmx_Val_USB = 12586
const DAQmx_Val_CompactDAQ = 14637
const DAQmx_Val_TCPIP = 14828
const DAQmx_Val_Unknown = 12588
const DAQmx_Val_SwitchBlock = 15870
const DAQmx_Val_CountEdges = 10125
const DAQmx_Val_Freq = 10179
const DAQmx_Val_Period = 10256
const DAQmx_Val_PulseWidth = 10359
const DAQmx_Val_SemiPeriod = 10289
const DAQmx_Val_PulseFrequency = 15864
const DAQmx_Val_PulseTime = 15865
const DAQmx_Val_PulseTicks = 15866
const DAQmx_Val_DutyCycle = 16070
const DAQmx_Val_Position_AngEncoder = 10360
const DAQmx_Val_Position_LinEncoder = 10361
const DAQmx_Val_Velocity_AngEncoder = 16078
const DAQmx_Val_Velocity_LinEncoder = 16079
const DAQmx_Val_TwoEdgeSep = 10267
const DAQmx_Val_GPS_Timestamp = 10362
const DAQmx_Val_BuiltIn = 10200
const DAQmx_Val_ConstVal = 10116
const DAQmx_Val_Chan = 10113
const DAQmx_Val_Pulse_Time = 10269
const DAQmx_Val_Pulse_Freq = 10119
const DAQmx_Val_Pulse_Ticks = 10268
const DAQmx_Val_AI = 10100
const DAQmx_Val_AO = 10102
const DAQmx_Val_DI = 10151
const DAQmx_Val_DO = 10153
const DAQmx_Val_CI = 10131
const DAQmx_Val_CO = 10132
const DAQmx_Val_Unconstrained = 14708
const DAQmx_Val_FixedHighFreq = 14709
const DAQmx_Val_FixedLowFreq = 14710
const DAQmx_Val_Fixed50PercentDutyCycle = 14711
const DAQmx_Val_CountUp = 10128
const DAQmx_Val_CountDown = 10124
const DAQmx_Val_ExtControlled = 10326
const DAQmx_Val_LowFreq1Ctr = 10105
const DAQmx_Val_HighFreq2Ctr = 10157
const DAQmx_Val_LargeRng2Ctr = 10205
const DAQmx_Val_DynAvg = 16065
const DAQmx_Val_AC = 10045
const DAQmx_Val_DC = 10050
const DAQmx_Val_GND = 10066
const DAQmx_Val_Internal = 10200
const DAQmx_Val_External = 10167
const DAQmx_Val_UserProvided = 10167
const DAQmx_Val_Coulombs = 16102
const DAQmx_Val_PicoCoulombs = 16103
const DAQmx_Val_Amps = 10342
const DAQmx_Val_RightJustified = 10279
const DAQmx_Val_LeftJustified = 10209
const DAQmx_Val_DMA = 10054
const DAQmx_Val_Interrupts = 10204
const DAQmx_Val_ProgrammedIO = 10264
const DAQmx_Val_USBbulk = 12590
const DAQmx_Val_OnbrdMemMoreThanHalfFull = 10237
const DAQmx_Val_OnbrdMemFull = 10236
const DAQmx_Val_OnbrdMemCustomThreshold = 12577
const DAQmx_Val_ActiveDrive = 12573
const DAQmx_Val_OpenCollector = 12574
const DAQmx_Val_NoChange = 10160
const DAQmx_Val_PatternMatches = 10254
const DAQmx_Val_PatternDoesNotMatch = 10253
const DAQmx_Val_SampClkPeriods = 10286
const DAQmx_Val_Seconds = 10364
const DAQmx_Val_SampleClkPeriods = 10286
const DAQmx_Val_mVoltsPerMil = 14836
const DAQmx_Val_VoltsPerMil = 14837
const DAQmx_Val_mVoltsPerMillimeter = 14838
const DAQmx_Val_VoltsPerMillimeter = 14839
const DAQmx_Val_mVoltsPerMicron = 14840
const DAQmx_Val_X1 = 10090
const DAQmx_Val_X2 = 10091
const DAQmx_Val_X4 = 10092
const DAQmx_Val_TwoPulseCounting = 10313
const DAQmx_Val_AHighBHigh = 10040
const DAQmx_Val_AHighBLow = 10041
const DAQmx_Val_ALowBHigh = 10042
const DAQmx_Val_ALowBLow = 10043
const DAQmx_Val_Pulse = 10265
const DAQmx_Val_Toggle = 10307
const DAQmx_Val_Lvl = 10210
const DAQmx_Val_Interlocked = 12549
const DAQmx_Val_Lowpass = 16071
const DAQmx_Val_Highpass = 16072
const DAQmx_Val_Bandpass = 16073
const DAQmx_Val_Notch = 16074
const DAQmx_Val_ConstantGroupDelay = 16075
const DAQmx_Val_Butterworth = 16076
const DAQmx_Val_Elliptical = 16077
const DAQmx_Val_HardwareDefined = 10191
const DAQmx_Val_mVoltsPerNewton = 15891
const DAQmx_Val_mVoltsPerPound = 15892
const DAQmx_Val_Hz = 10373
const DAQmx_Val_Sine = 14751
const DAQmx_Val_Triangle = 14752
const DAQmx_Val_Square = 14753
const DAQmx_Val_Sawtooth = 14754
const DAQmx_Val_IRIGB = 10070
const DAQmx_Val_PPS = 10080
const DAQmx_Val_Immediate = 10198
const DAQmx_Val_WaitForHandshakeTriggerAssert = 12550
const DAQmx_Val_WaitForHandshakeTriggerDeassert = 12551
const DAQmx_Val_OnBrdMemMoreThanHalfFull = 10237
const DAQmx_Val_OnBrdMemNotEmpty = 10241
const DAQmx_Val_WhenAcqComplete = 12546
const DAQmx_Val_RSE = 10083
const DAQmx_Val_NRSE = 10078
const DAQmx_Val_mVoltsPerVoltPerMillimeter = 12506
const DAQmx_Val_mVoltsPerVoltPerMilliInch = 12505
const DAQmx_Val_Meters = 10219
const DAQmx_Val_Inches = 10379
const DAQmx_Val_Off = 10231
const DAQmx_Val_Log = 15844
const DAQmx_Val_LogAndRead = 15842
const DAQmx_Val_OpenOrCreate = 15846
const DAQmx_Val_CreateOrReplace = 15847
const DAQmx_Val_Create = 15848
const DAQmx_Val_2point5V = 14620
const DAQmx_Val_3point3V = 14621
const DAQmx_Val_5V = 14619
const DAQmx_Val_SameAsSampTimebase = 10284
const DAQmx_Val_SameAsMasterTimebase = 10282
const DAQmx_Val_100MHzTimebase = 15857
const DAQmx_Val_80MHzTimebase = 14636
const DAQmx_Val_20MHzTimebase = 12537
const DAQmx_Val_8MHzTimebase = 16023
const DAQmx_Val_AM = 14756
const DAQmx_Val_FM = 14757
const DAQmx_Val_OnBrdMemEmpty = 10235
const DAQmx_Val_OnBrdMemHalfFullOrLess = 10239
const DAQmx_Val_OnBrdMemNotFull = 10242
const DAQmx_Val_StopTaskAndError = 15862
const DAQmx_Val_IgnoreOverruns = 15863
const DAQmx_Val_OverwriteUnreadSamps = 10252
const DAQmx_Val_DoNotOverwriteUnreadSamps = 10159
const DAQmx_Val_ActiveHigh = 10095
const DAQmx_Val_ActiveLow = 10096
const DAQmx_Val_MSeriesDAQ = 14643
const DAQmx_Val_XSeriesDAQ = 15858
const DAQmx_Val_ESeriesDAQ = 14642
const DAQmx_Val_SSeriesDAQ = 14644
const DAQmx_Val_BSeriesDAQ = 14662
const DAQmx_Val_SCSeriesDAQ = 14645
const DAQmx_Val_USBDAQ = 14646
const DAQmx_Val_AOSeries = 14647
const DAQmx_Val_DigitalIO = 14648
const DAQmx_Val_TIOSeries = 14661
const DAQmx_Val_DynamicSignalAcquisition = 14649
const DAQmx_Val_Switches = 14650
const DAQmx_Val_CompactDAQChassis = 14658
const DAQmx_Val_CSeriesModule = 14659
const DAQmx_Val_SCXIModule = 14660
const DAQmx_Val_SCCConnectorBlock = 14704
const DAQmx_Val_SCCModule = 14705
const DAQmx_Val_NIELVIS = 14755
const DAQmx_Val_NetworkDAQ = 14829
const DAQmx_Val_SCExpress = 15886
const DAQmx_Val_Pt3750 = 12481
const DAQmx_Val_Pt3851 = 10071
const DAQmx_Val_Pt3911 = 12482
const DAQmx_Val_Pt3916 = 10069
const DAQmx_Val_Pt3920 = 10053
const DAQmx_Val_Pt3928 = 12483
const DAQmx_Val_mVoltsPerVoltPerDegree = 12507
const DAQmx_Val_mVoltsPerVoltPerRadian = 12508
const DAQmx_Val_LosslessPacking = 12555
const DAQmx_Val_LossyLSBRemoval = 12556
const DAQmx_Val_FirstSample = 10424
const DAQmx_Val_CurrReadPos = 10425
const DAQmx_Val_RefTrig = 10426
const DAQmx_Val_FirstPretrigSamp = 10427
const DAQmx_Val_MostRecentSamp = 10428
const DAQmx_Val_AllowRegen = 10097
const DAQmx_Val_DoNotAllowRegen = 10158
const DAQmx_Val_2Wire = 2
const DAQmx_Val_3Wire = 3
const DAQmx_Val_Ohms = 10384
const DAQmx_Val_Bits = 10109
const DAQmx_Val_SCXI1124Range0to1V = 14629
const DAQmx_Val_SCXI1124Range0to5V = 14630
const DAQmx_Val_SCXI1124Range0to10V = 14631
const DAQmx_Val_SCXI1124RangeNeg1to1V = 14632
const DAQmx_Val_SCXI1124RangeNeg5to5V = 14633
const DAQmx_Val_SCXI1124RangeNeg10to10V = 14634
const DAQmx_Val_SCXI1124Range0to20mA = 14635
const DAQmx_Val_SampClkActiveEdge = 14617
const DAQmx_Val_SampClkInactiveEdge = 14618
const DAQmx_Val_HandshakeTriggerAsserts = 12552
const DAQmx_Val_HandshakeTriggerDeasserts = 12553
const DAQmx_Val_SampClk = 10388
const DAQmx_Val_BurstHandshake = 12548
const DAQmx_Val_Handshake = 10389
const DAQmx_Val_Implicit = 10451
const DAQmx_Val_OnDemand = 10390
const DAQmx_Val_ChangeDetection = 12504
const DAQmx_Val_PipelinedSampClk = 14668
const DAQmx_Val_Linear = 10447
const DAQmx_Val_MapRanges = 10448
const DAQmx_Val_Polynomial = 10449
const DAQmx_Val_Table = 10450
const DAQmx_Val_TwoPointLinear = 15898
const DAQmx_Val_AandB = 12515
const DAQmx_Val_R1 = 12465
const DAQmx_Val_R2 = 12466
const DAQmx_Val_R3 = 12467
const DAQmx_Val_R4 = 14813
const DAQmx_Val_AIConvertClock = 12484
const DAQmx_Val_10MHzRefClock = 12536
const DAQmx_Val_20MHzTimebaseClock = 12486
const DAQmx_Val_SampleClock = 12487
const DAQmx_Val_AdvCmpltEvent = 12492
const DAQmx_Val_AIHoldCmpltEvent = 12493
const DAQmx_Val_CounterOutputEvent = 12494
const DAQmx_Val_ChangeDetectionEvent = 12511
const DAQmx_Val_WDTExpiredEvent = 12512
const DAQmx_Val_SampleCompleteEvent = 12530
const DAQmx_Val_RisingSlope = 10280
const DAQmx_Val_FallingSlope = 10171
const DAQmx_Val_FullBridgeI = 10183
const DAQmx_Val_FullBridgeII = 10184
const DAQmx_Val_FullBridgeIII = 10185
const DAQmx_Val_HalfBridgeI = 10188
const DAQmx_Val_HalfBridgeII = 10189
const DAQmx_Val_QuarterBridgeI = 10271
const DAQmx_Val_QuarterBridgeII = 10272
const DAQmx_Val_RectangularRosette = 15968
const DAQmx_Val_DeltaRosette = 15969
const DAQmx_Val_TeeRosette = 15970
const DAQmx_Val_PrincipalStrain1 = 15971
const DAQmx_Val_PrincipalStrain2 = 15972
const DAQmx_Val_PrincipalStrainAngle = 15973
const DAQmx_Val_CartesianStrainX = 15974
const DAQmx_Val_CartesianStrainY = 15975
const DAQmx_Val_CartesianShearStrainXY = 15976
const DAQmx_Val_MaxShearStrain = 15977
const DAQmx_Val_MaxShearStrainAngle = 15978
const DAQmx_Val_Strain = 10299
const DAQmx_Val_Finite = 10172
const DAQmx_Val_Cont = 10117
const DAQmx_Val_Source = 10439
const DAQmx_Val_Load = 10440
const DAQmx_Val_ReservedForRouting = 10441
const DAQmx_Val_Onboard = 16128
const DAQmx_Val_DigEdge = 10150
const DAQmx_Val_Time = 15996
const DAQmx_Val_Master = 15888
const DAQmx_Val_Slave = 15889
const DAQmx_Val_IgnoreLostSyncLock = 16129
const DAQmx_Val_J_Type_TC = 10072
const DAQmx_Val_K_Type_TC = 10073
const DAQmx_Val_N_Type_TC = 10077
const DAQmx_Val_R_Type_TC = 10082
const DAQmx_Val_S_Type_TC = 10085
const DAQmx_Val_T_Type_TC = 10086
const DAQmx_Val_B_Type_TC = 10047
const DAQmx_Val_E_Type_TC = 10055
const DAQmx_Val_HostTime = 16126
const DAQmx_Val_IODeviceTime = 16127
const DAQmx_Val_SingleCycle = 14613
const DAQmx_Val_Multicycle = 14614
const DAQmx_Val_Software = 10292
const DAQmx_Val_AnlgLvl = 10101
const DAQmx_Val_AnlgWin = 10103
const DAQmx_Val_DigLvl = 10152
const DAQmx_Val_DigPattern = 10398
const DAQmx_Val_AnlgEdge = 10099
const DAQmx_Val_AnlgMultiEdge = 16108
const DAQmx_Val_HaltOutputAndError = 14615
const DAQmx_Val_PauseUntilDataAvailable = 14616
const DAQmx_Val_Volts = 10348
const DAQmx_Val_g = 10186
const DAQmx_Val_MetersPerSecond = 15959
const DAQmx_Val_InchesPerSecond = 15960
const DAQmx_Val_MillivoltsPerMillimeterPerSecond = 15963
const DAQmx_Val_MilliVoltsPerInchPerSecond = 15964
const DAQmx_Val_WaitForInterrupt = 12523
const DAQmx_Val_Poll = 12524
const DAQmx_Val_Yield = 12525
const DAQmx_Val_Sleep = 12547
const DAQmx_Val_EnteringWin = 10163
const DAQmx_Val_LeavingWin = 10208
const DAQmx_Val_InsideWin = 10199
const DAQmx_Val_OutsideWin = 10251
const DAQmx_Val_WriteToEEPROM = 12538
const DAQmx_Val_WriteToPROM = 12539
const DAQmx_Val_DoNotWrite = 12540
const DAQmx_Val_CurrWritePos = 10430
const DAQmx_Val_ZeroVoltsOrAmps = 12526
const DAQmx_Val_RepeatedData = 16062
const DAQmx_Val_SentinelValue = 16063
const DAQmx_Val_LogicLevelPullUp = 16064
const DAQmx_Val_Local = 16095
const DAQmx_Val_Remote = 16096
const DAQmx_Val_Switch_Topology_Configured_Topology = "Configured Topology"
const DAQmx_Val_Switch_Topology_1127_1_Wire_64x1_Mux = "1127/1-Wire 64x1 Mux"
const DAQmx_Val_Switch_Topology_1127_2_Wire_32x1_Mux = "1127/2-Wire 32x1 Mux"
const DAQmx_Val_Switch_Topology_1127_2_Wire_4x8_Matrix = "1127/2-Wire 4x8 Matrix"
const DAQmx_Val_Switch_Topology_1127_4_Wire_16x1_Mux = "1127/4-Wire 16x1 Mux"
const DAQmx_Val_Switch_Topology_1127_Independent = "1127/Independent"
const DAQmx_Val_Switch_Topology_1128_1_Wire_64x1_Mux = "1128/1-Wire 64x1 Mux"
const DAQmx_Val_Switch_Topology_1128_2_Wire_32x1_Mux = "1128/2-Wire 32x1 Mux"
const DAQmx_Val_Switch_Topology_1128_2_Wire_4x8_Matrix = "1128/2-Wire 4x8 Matrix"
const DAQmx_Val_Switch_Topology_1128_4_Wire_16x1_Mux = "1128/4-Wire 16x1 Mux"
const DAQmx_Val_Switch_Topology_1128_Independent = "1128/Independent"
const DAQmx_Val_Switch_Topology_1129_2_Wire_16x16_Matrix = "1129/2-Wire 16x16 Matrix"
const DAQmx_Val_Switch_Topology_1129_2_Wire_8x32_Matrix = "1129/2-Wire 8x32 Matrix"
const DAQmx_Val_Switch_Topology_1129_2_Wire_4x64_Matrix = "1129/2-Wire 4x64 Matrix"
const DAQmx_Val_Switch_Topology_1129_2_Wire_Dual_8x16_Matrix = "1129/2-Wire Dual 8x16 Matrix"
const DAQmx_Val_Switch_Topology_1129_2_Wire_Dual_4x32_Matrix = "1129/2-Wire Dual 4x32 Matrix"
const DAQmx_Val_Switch_Topology_1129_2_Wire_Quad_4x16_Matrix = "1129/2-Wire Quad 4x16 Matrix"
const DAQmx_Val_Switch_Topology_1130_1_Wire_256x1_Mux = "1130/1-Wire 256x1 Mux"
const DAQmx_Val_Switch_Topology_1130_1_Wire_Dual_128x1_Mux = "1130/1-Wire Dual 128x1 Mux"
const DAQmx_Val_Switch_Topology_1130_2_Wire_128x1_Mux = "1130/2-Wire 128x1 Mux"
const DAQmx_Val_Switch_Topology_1130_4_Wire_64x1_Mux = "1130/4-Wire 64x1 Mux"
const DAQmx_Val_Switch_Topology_1130_1_Wire_4x64_Matrix = "1130/1-Wire 4x64 Matrix"
const DAQmx_Val_Switch_Topology_1130_1_Wire_8x32_Matrix = "1130/1-Wire 8x32 Matrix"
const DAQmx_Val_Switch_Topology_1130_1_Wire_Octal_32x1_Mux = "1130/1-Wire Octal 32x1 Mux"
const DAQmx_Val_Switch_Topology_1130_1_Wire_Quad_64x1_Mux = "1130/1-Wire Quad 64x1 Mux"
const DAQmx_Val_Switch_Topology_1130_1_Wire_Sixteen_16x1_Mux = "1130/1-Wire Sixteen 16x1 Mux"
const DAQmx_Val_Switch_Topology_1130_2_Wire_4x32_Matrix = "1130/2-Wire 4x32 Matrix"
const DAQmx_Val_Switch_Topology_1130_2_Wire_Octal_16x1_Mux = "1130/2-Wire Octal 16x1 Mux"
const DAQmx_Val_Switch_Topology_1130_2_Wire_Quad_32x1_Mux = "1130/2-Wire Quad 32x1 Mux"
const DAQmx_Val_Switch_Topology_1130_4_Wire_Quad_16x1_Mux = "1130/4-Wire Quad 16x1 Mux"
const DAQmx_Val_Switch_Topology_1130_Independent = "1130/Independent"
const DAQmx_Val_Switch_Topology_1160_16_SPDT = "1160/16-SPDT"
const DAQmx_Val_Switch_Topology_1161_8_SPDT = "1161/8-SPDT"
const DAQmx_Val_Switch_Topology_1163R_Octal_4x1_Mux = "1163R/Octal 4x1 Mux"
const DAQmx_Val_Switch_Topology_1166_32_SPDT = "1166/32-SPDT"
const DAQmx_Val_Switch_Topology_1166_16_DPDT = "1166/16-DPDT"
const DAQmx_Val_Switch_Topology_1167_Independent = "1167/Independent"
const DAQmx_Val_Switch_Topology_1169_100_SPST = "1169/100-SPST"
const DAQmx_Val_Switch_Topology_1169_50_DPST = "1169/50-DPST"
const DAQmx_Val_Switch_Topology_1175_1_Wire_196x1_Mux = "1175/1-Wire 196x1 Mux"
const DAQmx_Val_Switch_Topology_1175_2_Wire_98x1_Mux = "1175/2-Wire 98x1 Mux"
const DAQmx_Val_Switch_Topology_1175_2_Wire_95x1_Mux = "1175/2-Wire 95x1 Mux"
const DAQmx_Val_Switch_Topology_1190_Quad_4x1_Mux = "1190/Quad 4x1 Mux"
const DAQmx_Val_Switch_Topology_1191_Quad_4x1_Mux = "1191/Quad 4x1 Mux"
const DAQmx_Val_Switch_Topology_1192_8_SPDT = "1192/8-SPDT"
const DAQmx_Val_Switch_Topology_1193_32x1_Mux = "1193/32x1 Mux"
const DAQmx_Val_Switch_Topology_1193_Dual_16x1_Mux = "1193/Dual 16x1 Mux"
const DAQmx_Val_Switch_Topology_1193_Quad_8x1_Mux = "1193/Quad 8x1 Mux"
const DAQmx_Val_Switch_Topology_1193_16x1_Terminated_Mux = "1193/16x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_1193_Dual_8x1_Terminated_Mux = "1193/Dual 8x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_1193_Quad_4x1_Terminated_Mux = "1193/Quad 4x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_1193_Independent = "1193/Independent"
const DAQmx_Val_Switch_Topology_1194_Quad_4x1_Mux = "1194/Quad 4x1 Mux"
const DAQmx_Val_Switch_Topology_1195_Quad_4x1_Mux = "1195/Quad 4x1 Mux"
const DAQmx_Val_Switch_Topology_2501_1_Wire_48x1_Mux = "2501/1-Wire 48x1 Mux"
const DAQmx_Val_Switch_Topology_2501_1_Wire_48x1_Amplified_Mux = "2501/1-Wire 48x1 Amplified Mux"
const DAQmx_Val_Switch_Topology_2501_2_Wire_24x1_Mux = "2501/2-Wire 24x1 Mux"
const DAQmx_Val_Switch_Topology_2501_2_Wire_24x1_Amplified_Mux = "2501/2-Wire 24x1 Amplified Mux"
const DAQmx_Val_Switch_Topology_2501_2_Wire_Dual_12x1_Mux = "2501/2-Wire Dual 12x1 Mux"
const DAQmx_Val_Switch_Topology_2501_2_Wire_Quad_6x1_Mux = "2501/2-Wire Quad 6x1 Mux"
const DAQmx_Val_Switch_Topology_2501_2_Wire_4x6_Matrix = "2501/2-Wire 4x6 Matrix"
const DAQmx_Val_Switch_Topology_2501_4_Wire_12x1_Mux = "2501/4-Wire 12x1 Mux"
const DAQmx_Val_Switch_Topology_2503_1_Wire_48x1_Mux = "2503/1-Wire 48x1 Mux"
const DAQmx_Val_Switch_Topology_2503_2_Wire_24x1_Mux = "2503/2-Wire 24x1 Mux"
const DAQmx_Val_Switch_Topology_2503_2_Wire_Dual_12x1_Mux = "2503/2-Wire Dual 12x1 Mux"
const DAQmx_Val_Switch_Topology_2503_2_Wire_Quad_6x1_Mux = "2503/2-Wire Quad 6x1 Mux"
const DAQmx_Val_Switch_Topology_2503_2_Wire_4x6_Matrix = "2503/2-Wire 4x6 Matrix"
const DAQmx_Val_Switch_Topology_2503_4_Wire_12x1_Mux = "2503/4-Wire 12x1 Mux"
const DAQmx_Val_Switch_Topology_2510_Independent = "2510/Independent"
const DAQmx_Val_Switch_Topology_2512_Independent = "2512/Independent"
const DAQmx_Val_Switch_Topology_2514_Independent = "2514/Independent"
const DAQmx_Val_Switch_Topology_2515_Independent = "2515/Independent"
const DAQmx_Val_Switch_Topology_2520_80_SPST = "2520/80-SPST"
const DAQmx_Val_Switch_Topology_2521_40_DPST = "2521/40-DPST"
const DAQmx_Val_Switch_Topology_2522_53_SPDT = "2522/53-SPDT"
const DAQmx_Val_Switch_Topology_2523_26_DPDT = "2523/26-DPDT"
const DAQmx_Val_Switch_Topology_2527_1_Wire_64x1_Mux = "2527/1-Wire 64x1 Mux"
const DAQmx_Val_Switch_Topology_2527_1_Wire_Dual_32x1_Mux = "2527/1-Wire Dual 32x1 Mux"
const DAQmx_Val_Switch_Topology_2527_2_Wire_32x1_Mux = "2527/2-Wire 32x1 Mux"
const DAQmx_Val_Switch_Topology_2527_2_Wire_Dual_16x1_Mux = "2527/2-Wire Dual 16x1 Mux"
const DAQmx_Val_Switch_Topology_2527_4_Wire_16x1_Mux = "2527/4-Wire 16x1 Mux"
const DAQmx_Val_Switch_Topology_2527_Independent = "2527/Independent"
const DAQmx_Val_Switch_Topology_2529_2_Wire_8x16_Matrix = "2529/2-Wire 8x16 Matrix"
const DAQmx_Val_Switch_Topology_2529_2_Wire_4x32_Matrix = "2529/2-Wire 4x32 Matrix"
const DAQmx_Val_Switch_Topology_2529_2_Wire_Dual_4x16_Matrix = "2529/2-Wire Dual 4x16 Matrix"
const DAQmx_Val_Switch_Topology_2530_1_Wire_128x1_Mux = "2530/1-Wire 128x1 Mux"
const DAQmx_Val_Switch_Topology_2530_1_Wire_Dual_64x1_Mux = "2530/1-Wire Dual 64x1 Mux"
const DAQmx_Val_Switch_Topology_2530_2_Wire_64x1_Mux = "2530/2-Wire 64x1 Mux"
const DAQmx_Val_Switch_Topology_2530_4_Wire_32x1_Mux = "2530/4-Wire 32x1 Mux"
const DAQmx_Val_Switch_Topology_2530_1_Wire_4x32_Matrix = "2530/1-Wire 4x32 Matrix"
const DAQmx_Val_Switch_Topology_2530_1_Wire_8x16_Matrix = "2530/1-Wire 8x16 Matrix"
const DAQmx_Val_Switch_Topology_2530_1_Wire_Octal_16x1_Mux = "2530/1-Wire Octal 16x1 Mux"
const DAQmx_Val_Switch_Topology_2530_1_Wire_Quad_32x1_Mux = "2530/1-Wire Quad 32x1 Mux"
const DAQmx_Val_Switch_Topology_2530_2_Wire_4x16_Matrix = "2530/2-Wire 4x16 Matrix"
const DAQmx_Val_Switch_Topology_2530_2_Wire_Dual_32x1_Mux = "2530/2-Wire Dual 32x1 Mux"
const DAQmx_Val_Switch_Topology_2530_2_Wire_Quad_16x1_Mux = "2530/2-Wire Quad 16x1 Mux"
const DAQmx_Val_Switch_Topology_2530_4_Wire_Dual_16x1_Mux = "2530/4-Wire Dual 16x1 Mux"
const DAQmx_Val_Switch_Topology_2530_Independent = "2530/Independent"
const DAQmx_Val_Switch_Topology_2531_1_Wire_4x128_Matrix = "2531/1-Wire 4x128 Matrix"
const DAQmx_Val_Switch_Topology_2531_1_Wire_8x64_Matrix = "2531/1-Wire 8x64 Matrix"
const DAQmx_Val_Switch_Topology_2531_1_Wire_Dual_4x64_Matrix = "2531/1-Wire Dual 4x64 Matrix"
const DAQmx_Val_Switch_Topology_2531_1_Wire_Dual_8x32_Matrix = "2531/1-Wire Dual 8x32 Matrix"
const DAQmx_Val_Switch_Topology_2532_1_Wire_16x32_Matrix = "2532/1-Wire 16x32 Matrix"
const DAQmx_Val_Switch_Topology_2532_1_Wire_4x128_Matrix = "2532/1-Wire 4x128 Matrix"
const DAQmx_Val_Switch_Topology_2532_1_Wire_8x64_Matrix = "2532/1-Wire 8x64 Matrix"
const DAQmx_Val_Switch_Topology_2532_1_Wire_Dual_16x16_Matrix = "2532/1-Wire Dual 16x16 Matrix"
const DAQmx_Val_Switch_Topology_2532_1_Wire_Dual_4x64_Matrix = "2532/1-Wire Dual 4x64 Matrix"
const DAQmx_Val_Switch_Topology_2532_1_Wire_Dual_8x32_Matrix = "2532/1-Wire Dual 8x32 Matrix"
const DAQmx_Val_Switch_Topology_2532_1_Wire_Quad_4x32_Matrix = "2532/1-Wire Quad 4x32 Matrix"
const DAQmx_Val_Switch_Topology_2532_1_Wire_Sixteen_2x16_Matrix = "2532/1-Wire Sixteen 2x16 Matrix"
const DAQmx_Val_Switch_Topology_2532_2_Wire_16x16_Matrix = "2532/2-Wire 16x16 Matrix"
const DAQmx_Val_Switch_Topology_2532_2_Wire_4x64_Matrix = "2532/2-Wire 4x64 Matrix"
const DAQmx_Val_Switch_Topology_2532_2_Wire_8x32_Matrix = "2532/2-Wire 8x32 Matrix"
const DAQmx_Val_Switch_Topology_2532_2_Wire_Dual_4x32_Matrix = "2532/2-Wire Dual 4x32 Matrix"
const DAQmx_Val_Switch_Topology_2533_1_Wire_4x64_Matrix = "2533/1-Wire 4x64 Matrix"
const DAQmx_Val_Switch_Topology_2534_1_Wire_8x32_Matrix = "2534/1-Wire 8x32 Matrix"
const DAQmx_Val_Switch_Topology_2535_1_Wire_4x136_Matrix = "2535/1-Wire 4x136 Matrix"
const DAQmx_Val_Switch_Topology_2536_1_Wire_8x68_Matrix = "2536/1-Wire 8x68 Matrix"
const DAQmx_Val_Switch_Topology_2540_1_Wire_8x9_Matrix = "2540/1-Wire 8x9 Matrix"
const DAQmx_Val_Switch_Topology_2541_1_Wire_8x12_Matrix = "2541/1-Wire 8x12 Matrix"
const DAQmx_Val_Switch_Topology_2542_Quad_2x1_Terminated_Mux = "2542/Quad 2x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2543_Dual_4x1_Terminated_Mux = "2543/Dual 4x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2544_8x1_Terminated_Mux = "2544/8x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2545_4x1_Terminated_Mux = "2545/4x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2546_Dual_4x1_Mux = "2546/Dual 4x1 Mux"
const DAQmx_Val_Switch_Topology_2547_8x1_Mux = "2547/8x1 Mux"
const DAQmx_Val_Switch_Topology_2548_4_SPDT = "2548/4-SPDT"
const DAQmx_Val_Switch_Topology_2549_Terminated_2_SPDT = "2549/Terminated 2-SPDT"
const DAQmx_Val_Switch_Topology_2554_4x1_Mux = "2554/4x1 Mux"
const DAQmx_Val_Switch_Topology_2555_4x1_Terminated_Mux = "2555/4x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2556_Dual_4x1_Mux = "2556/Dual 4x1 Mux"
const DAQmx_Val_Switch_Topology_2557_8x1_Mux = "2557/8x1 Mux"
const DAQmx_Val_Switch_Topology_2558_4_SPDT = "2558/4-SPDT"
const DAQmx_Val_Switch_Topology_2559_Terminated_2_SPDT = "2559/Terminated 2-SPDT"
const DAQmx_Val_Switch_Topology_2564_16_SPST = "2564/16-SPST"
const DAQmx_Val_Switch_Topology_2564_8_DPST = "2564/8-DPST"
const DAQmx_Val_Switch_Topology_2565_16_SPST = "2565/16-SPST"
const DAQmx_Val_Switch_Topology_2566_16_SPDT = "2566/16-SPDT"
const DAQmx_Val_Switch_Topology_2566_8_DPDT = "2566/8-DPDT"
const DAQmx_Val_Switch_Topology_2567_Independent = "2567/Independent"
const DAQmx_Val_Switch_Topology_2568_31_SPST = "2568/31-SPST"
const DAQmx_Val_Switch_Topology_2568_15_DPST = "2568/15-DPST"
const DAQmx_Val_Switch_Topology_2569_100_SPST = "2569/100-SPST"
const DAQmx_Val_Switch_Topology_2569_50_DPST = "2569/50-DPST"
const DAQmx_Val_Switch_Topology_2570_40_SPDT = "2570/40-SPDT"
const DAQmx_Val_Switch_Topology_2570_20_DPDT = "2570/20-DPDT"
const DAQmx_Val_Switch_Topology_2571_66_SPDT = "2571/66-SPDT"
const DAQmx_Val_Switch_Topology_2575_1_Wire_196x1_Mux = "2575/1-Wire 196x1 Mux"
const DAQmx_Val_Switch_Topology_2575_2_Wire_98x1_Mux = "2575/2-Wire 98x1 Mux"
const DAQmx_Val_Switch_Topology_2575_2_Wire_95x1_Mux = "2575/2-Wire 95x1 Mux"
const DAQmx_Val_Switch_Topology_2576_2_Wire_64x1_Mux = "2576/2-Wire 64x1 Mux"
const DAQmx_Val_Switch_Topology_2576_2_Wire_Dual_32x1_Mux = "2576/2-Wire Dual 32x1 Mux"
const DAQmx_Val_Switch_Topology_2576_2_Wire_Octal_8x1_Mux = "2576/2-Wire Octal 8x1 Mux"
const DAQmx_Val_Switch_Topology_2576_2_Wire_Quad_16x1_Mux = "2576/2-Wire Quad 16x1 Mux"
const DAQmx_Val_Switch_Topology_2576_2_Wire_Sixteen_4x1_Mux = "2576/2-Wire Sixteen 4x1 Mux"
const DAQmx_Val_Switch_Topology_2576_Independent = "2576/Independent"
const DAQmx_Val_Switch_Topology_2584_1_Wire_12x1_Mux = "2584/1-Wire 12x1 Mux"
const DAQmx_Val_Switch_Topology_2584_1_Wire_Dual_6x1_Mux = "2584/1-Wire Dual 6x1 Mux"
const DAQmx_Val_Switch_Topology_2584_2_Wire_6x1_Mux = "2584/2-Wire 6x1 Mux"
const DAQmx_Val_Switch_Topology_2584_Independent = "2584/Independent"
const DAQmx_Val_Switch_Topology_2585_1_Wire_10x1_Mux = "2585/1-Wire 10x1 Mux"
const DAQmx_Val_Switch_Topology_2586_10_SPST = "2586/10-SPST"
const DAQmx_Val_Switch_Topology_2586_5_DPST = "2586/5-DPST"
const DAQmx_Val_Switch_Topology_2590_4x1_Mux = "2590/4x1 Mux"
const DAQmx_Val_Switch_Topology_2591_4x1_Mux = "2591/4x1 Mux"
const DAQmx_Val_Switch_Topology_2593_16x1_Mux = "2593/16x1 Mux"
const DAQmx_Val_Switch_Topology_2593_Dual_8x1_Mux = "2593/Dual 8x1 Mux"
const DAQmx_Val_Switch_Topology_2593_8x1_Terminated_Mux = "2593/8x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2593_Dual_4x1_Terminated_Mux = "2593/Dual 4x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2593_Independent = "2593/Independent"
const DAQmx_Val_Switch_Topology_2594_4x1_Mux = "2594/4x1 Mux"
const DAQmx_Val_Switch_Topology_2595_4x1_Mux = "2595/4x1 Mux"
const DAQmx_Val_Switch_Topology_2596_Dual_6x1_Mux = "2596/Dual 6x1 Mux"
const DAQmx_Val_Switch_Topology_2597_6x1_Terminated_Mux = "2597/6x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2598_Dual_Transfer = "2598/Dual Transfer"
const DAQmx_Val_Switch_Topology_2599_2_SPDT = "2599/2-SPDT"
const DAQmx_Val_Switch_Topology_2720_Independent = "2720/Independent"
const DAQmx_Val_Switch_Topology_2722_Independent = "2722/Independent"
const DAQmx_Val_Switch_Topology_2725_Independent = "2725/Independent"
const DAQmx_Val_Switch_Topology_2727_Independent = "2727/Independent"
const DAQmx_Val_Switch_Topology_2790_Independent = "2790/Independent"
const DAQmx_Val_Switch_Topology_2796_Dual_6x1_Mux = "2796/Dual 6x1 Mux"
const DAQmx_Val_Switch_Topology_2797_6x1_Terminated_Mux = "2797/6x1 Terminated Mux"
const DAQmx_Val_Switch_Topology_2798_Dual_Transfer = "2798/Dual Transfer"
const DAQmx_Val_Switch_Topology_2799_2_SPDT = "2799/2-SPDT"

# Skipping MacroDefinition: DAQmxSuccess ( 0 ) #
# Skipping MacroDefinition: DAQmxFailed ( error ) ( ( error ) < 0 ) // Error and Warning Codes
# Skipping MacroDefinition: DAQmxErrorTimeStartTriggerBeforeArmStartTrigger ( - 209849 ) #
# Skipping MacroDefinition: DAQmxErrorTimeTriggerCannotBeSet ( - 209848 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTriggerWindowValue ( - 209847 ) #
# Skipping MacroDefinition: DAQmxErrorCannotQueryPropertyBeforeOrDuringAcquisition ( - 209846 ) #
# Skipping MacroDefinition: DAQmxErrorSampleClockTimebaseNotSupported ( - 209845 ) #
# Skipping MacroDefinition: DAQmxErrorTimestampNotYetReceived ( - 209844 ) #
# Skipping MacroDefinition: DAQmxErrorTimeTriggerNotSupported ( - 209843 ) #
# Skipping MacroDefinition: DAQmxErrorTimestampNotEnabled ( - 209842 ) #
# Skipping MacroDefinition: DAQmxErrorTimeTriggersInconsistent ( - 209841 ) #
# Skipping MacroDefinition: DAQmxErrorTriggerConfiguredIsInThePast ( - 209840 ) #
# Skipping MacroDefinition: DAQmxErrorTriggerConfiguredIsTooFarFromCurrentTime ( - 209839 ) #
# Skipping MacroDefinition: DAQmxErrorSynchronizationLockLost ( - 209838 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentTimescales ( - 209837 ) #
# Skipping MacroDefinition: DAQmxErrorCannotSynchronizeDevices ( - 209836 ) #
# Skipping MacroDefinition: DAQmxErrorAssociatedChansHaveAttributeConflictWithMultipleMaxMinRanges ( - 209835 ) #
# Skipping MacroDefinition: DAQmxErrorSampleRateNumChansOrAttributeValues ( - 209834 ) #
# Skipping MacroDefinition: DAQmxErrorWaitForValidTimestampNotSupported ( - 209833 ) #
# Skipping MacroDefinition: DAQmxErrorTrigWinTimeoutExpired ( - 209832 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTriggerCfgForDevice ( - 209831 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDataTransferMechanismForDevice ( - 209830 ) #
# Skipping MacroDefinition: DAQmxErrorInputFIFOOverflow3 ( - 209829 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyDevicesForAnalogMultiEdgeTrigCDAQ ( - 209828 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyTriggersTypesSpecifiedInTask ( - 209827 ) #
# Skipping MacroDefinition: DAQmxErrorMismatchedMultiTriggerConfigValues ( - 209826 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentAODACRangeAcrossTasks ( - 209825 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentDTToWrite ( - 209824 ) #
# Skipping MacroDefinition: DAQmxErrorFunctionObsolete ( - 209823 ) #
# Skipping MacroDefinition: DAQmxErrorNegativeDurationNotSupported ( - 209822 ) #
# Skipping MacroDefinition: DAQmxErrorDurationTooSmall ( - 209821 ) #
# Skipping MacroDefinition: DAQmxErrorDurationTooLong ( - 209820 ) #
# Skipping MacroDefinition: DAQmxErrorDurationBasedNotSupportedForSpecifiedTimingMode ( - 209819 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidLEDState ( - 209818 ) #
# Skipping MacroDefinition: DAQmxErrorWatchdogStatesNotUniform ( - 209817 ) #
# Skipping MacroDefinition: DAQmxErrorSelfTestFailedPowerSupplyOutOfTolerance ( - 209816 ) #
# Skipping MacroDefinition: DAQmxErrorHWTSPMultiSampleWrite ( - 209815 ) #
# Skipping MacroDefinition: DAQmxErrorOnboardRegenExceedsChannelLimit ( - 209814 ) #
# Skipping MacroDefinition: DAQmxErrorWatchdogChannelExpirationStateNotSpecified ( - 209813 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidShuntSourceForCalibration ( - 209812 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidShuntSelectForCalibration ( - 209811 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidShuntCalibrationConfiguration ( - 209810 ) #
# Skipping MacroDefinition: DAQmxErrorBufferedOperationsNotSupportedOnChannelStandalone ( - 209809 ) #
# Skipping MacroDefinition: DAQmxErrorFeatureNotAvailableOnAccessory ( - 209808 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentThreshVoltageAcrossTerminals ( - 209807 ) #
# Skipping MacroDefinition: DAQmxErrorDAQmxIsNotInstalledOnTarget ( - 209806 ) #
# Skipping MacroDefinition: DAQmxErrorCOCannotKeepUpInHWTimedSinglePoint ( - 209805 ) #
# Skipping MacroDefinition: DAQmxErrorWaitForNextSampClkDetected3OrMoreSampClks ( - 209803 ) #
# Skipping MacroDefinition: DAQmxErrorWaitForNextSampClkDetectedMissedSampClk ( - 209802 ) #
# Skipping MacroDefinition: DAQmxErrorWriteNotCompleteBeforeSampClk ( - 209801 ) #
# Skipping MacroDefinition: DAQmxErrorReadNotCompleteBeforeSampClk ( - 209800 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentDigitalFilteringAcrossTerminals ( - 201510 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentPullUpCfgAcrossTerminals ( - 201509 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentTermCfgAcrossTerminals ( - 201508 ) #
# Skipping MacroDefinition: DAQmxErrorVCXODCMBecameUnlocked ( - 201507 ) #
# Skipping MacroDefinition: DAQmxErrorPLLDACUpdateFailed ( - 201506 ) #
# Skipping MacroDefinition: DAQmxErrorNoCabledDevice ( - 201505 ) #
# Skipping MacroDefinition: DAQmxErrorLostRefClk ( - 201504 ) #
# Skipping MacroDefinition: DAQmxErrorCantUseAITimingEngineWithCounters ( - 201503 ) #
# Skipping MacroDefinition: DAQmxErrorDACOffsetValNotSet ( - 201502 ) #
# Skipping MacroDefinition: DAQmxErrorCalAdjustRefValOutOfRange ( - 201501 ) #
# Skipping MacroDefinition: DAQmxErrorChansForCalAdjustMustPerformSetContext ( - 201500 ) #
# Skipping MacroDefinition: DAQmxErrorGetCalDataInvalidForCalMode ( - 201499 ) #
# Skipping MacroDefinition: DAQmxErrorNoIEPEWithACNotAllowed ( - 201498 ) #
# Skipping MacroDefinition: DAQmxErrorSetupCalNeededBeforeGetCalDataPoints ( - 201497 ) #
# Skipping MacroDefinition: DAQmxErrorVoltageNotCalibrated ( - 201496 ) #
# Skipping MacroDefinition: DAQmxErrorMissingRangeForCalibration ( - 201495 ) #
# Skipping MacroDefinition: DAQmxErrorMultipleChansNotSupportedDuringCalAdjust ( - 201494 ) #
# Skipping MacroDefinition: DAQmxErrorShuntCalFailedOutOfRange ( - 201493 ) #
# Skipping MacroDefinition: DAQmxErrorOperationNotSupportedOnSimulatedDevice ( - 201492 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareVersionSameAsInstalledVersion ( - 201491 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareVersionOlderThanInstalledVersion ( - 201490 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareUpdateInvalidState ( - 201489 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareUpdateInvalidID ( - 201488 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareUpdateAutomaticManagementEnabled ( - 201487 ) #
# Skipping MacroDefinition: DAQmxErrorSetupCalibrationNotCalled ( - 201486 ) #
# Skipping MacroDefinition: DAQmxErrorCalMeasuredDataSizeVsActualDataSizeMismatch ( - 201485 ) #
# Skipping MacroDefinition: DAQmxErrorCDAQMissingDSAMasterForChanExpansion ( - 201484 ) #
# Skipping MacroDefinition: DAQmxErrorCDAQMasterNotFoundForChanExpansion ( - 201483 ) #
# Skipping MacroDefinition: DAQmxErrorAllChansShouldBeProvidedForCalibration ( - 201482 ) #
# Skipping MacroDefinition: DAQmxErrorMustSpecifyExpirationStateForAllLinesInRange ( - 201481 ) #
# Skipping MacroDefinition: DAQmxErrorOpenSessionExists ( - 201480 ) #
# Skipping MacroDefinition: DAQmxErrorCannotQueryTerminalForSWArmStart ( - 201479 ) #
# Skipping MacroDefinition: DAQmxErrorChassisWatchdogTimerExpired ( - 201478 ) #
# Skipping MacroDefinition: DAQmxErrorCantReserveWatchdogTaskWhileOtherTasksReserved ( - 201477 ) #
# Skipping MacroDefinition: DAQmxErrorCantReserveTaskWhileWatchdogTaskReserving ( - 201476 ) #
# Skipping MacroDefinition: DAQmxErrorAuxPowerSourceRequired ( - 201475 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNotSupportedOnLocalSystem ( - 201474 ) #
# Skipping MacroDefinition: DAQmxErrorOneTimestampChannelRequiredForCombinedNavigationRead ( - 201472 ) #
# Skipping MacroDefinition: DAQmxErrorMultDevsMultPhysChans ( - 201471 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalAdjustmentPointValues ( - 201470 ) #
# Skipping MacroDefinition: DAQmxErrorDifferentDigitizerFromCommunicator ( - 201469 ) #
# Skipping MacroDefinition: DAQmxErrorCDAQSyncMasterClockNotPresent ( - 201468 ) #
# Skipping MacroDefinition: DAQmxErrorAssociatedChansHaveConflictingProps ( - 201467 ) #
# Skipping MacroDefinition: DAQmxErrorAutoConfigBetweenMultipleDeviceStatesInvalid ( - 201466 ) #
# Skipping MacroDefinition: DAQmxErrorAutoConfigOfOfflineDevicesInvalid ( - 201465 ) #
# Skipping MacroDefinition: DAQmxErrorExternalFIFOFault ( - 201464 ) #
# Skipping MacroDefinition: DAQmxErrorConnectionsNotReciprocal ( - 201463 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidOutputToInputCDAQSyncConnection ( - 201462 ) #
# Skipping MacroDefinition: DAQmxErrorReferenceClockNotPresent ( - 201461 ) #
# Skipping MacroDefinition: DAQmxErrorBlankStringExpansionFoundNoSupportedCDAQSyncConnectionDevices ( - 201460 ) #
# Skipping MacroDefinition: DAQmxErrorNoDevicesSupportCDAQSyncConnections ( - 201459 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCDAQSyncTimeoutValue ( - 201458 ) #
# Skipping MacroDefinition: DAQmxErrorCDAQSyncConnectionToSamePort ( - 201457 ) #
# Skipping MacroDefinition: DAQmxErrorDevsWithoutCommonSyncConnectionStrategy ( - 201456 ) #
# Skipping MacroDefinition: DAQmxErrorNoCDAQSyncBetweenPhysAndSimulatedDevs ( - 201455 ) #
# Skipping MacroDefinition: DAQmxErrorUnableToContainCards ( - 201454 ) #
# Skipping MacroDefinition: DAQmxErrorFindDisconnectedBetweenPhysAndSimDeviceStatesInvalid ( - 201453 ) #
# Skipping MacroDefinition: DAQmxErrorOperationAborted ( - 201452 ) #
# Skipping MacroDefinition: DAQmxErrorTwoPortsRequired ( - 201451 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceDoesNotSupportCDAQSyncConnections ( - 201450 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidcDAQSyncPortConnectionFormat ( - 201449 ) #
# Skipping MacroDefinition: DAQmxErrorRosetteMeasurementsNotSpecified ( - 201448 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumOfPhysChansForDeltaRosette ( - 201447 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumOfPhysChansForTeeRosette ( - 201446 ) #
# Skipping MacroDefinition: DAQmxErrorRosetteStrainChanNamesNeeded ( - 201445 ) #
# Skipping MacroDefinition: DAQmxErrorMultideviceWithOnDemandTiming ( - 201444 ) #
# Skipping MacroDefinition: DAQmxErrorFREQOUTCannotProduceDesiredFrequency3 ( - 201443 ) #
# Skipping MacroDefinition: DAQmxErrorTwoEdgeSeparationSameTerminalSameEdge ( - 201442 ) #
# Skipping MacroDefinition: DAQmxErrorDontMixSyncPulseAndSampClkTimebaseOn449x ( - 201441 ) #
# Skipping MacroDefinition: DAQmxErrorNeitherRefClkNorSampClkTimebaseConfiguredForDSASync ( - 201440 ) #
# Skipping MacroDefinition: DAQmxErrorRetriggeringFiniteCONotAllowed ( - 201439 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceRebootedFromWDTTimeout ( - 201438 ) #
# Skipping MacroDefinition: DAQmxErrorTimeoutValueExceedsMaximum ( - 201437 ) #
# Skipping MacroDefinition: DAQmxErrorSharingDifferentWireModes ( - 201436 ) #
# Skipping MacroDefinition: DAQmxErrorCantPrimeWithEmptyBuffer ( - 201435 ) #
# Skipping MacroDefinition: DAQmxErrorConfigFailedBecauseWatchdogExpired ( - 201434 ) #
# Skipping MacroDefinition: DAQmxErrorWriteFailedBecauseWatchdogChangedLineDirection ( - 201433 ) #
# Skipping MacroDefinition: DAQmxErrorMultipleSubsytemCalibration ( - 201432 ) #
# Skipping MacroDefinition: DAQmxErrorIncorrectChannelForOffsetAdjustment ( - 201431 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumRefVoltagesToWrite ( - 201430 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigDelayWithDSAModule ( - 201429 ) #
# Skipping MacroDefinition: DAQmxErrorMoreThanOneSyncPulseDetected ( - 201428 ) #
# Skipping MacroDefinition: DAQmxErrorDevNotSupportedWithinDAQmxAPI ( - 201427 ) #
# Skipping MacroDefinition: DAQmxErrorDevsWithoutSyncStrategies ( - 201426 ) #
# Skipping MacroDefinition: DAQmxErrorDevsWithoutCommonSyncStrategy ( - 201425 ) #
# Skipping MacroDefinition: DAQmxErrorSyncStrategiesCannotSync ( - 201424 ) #
# Skipping MacroDefinition: DAQmxErrorChassisCommunicationInterrupted ( - 201423 ) #
# Skipping MacroDefinition: DAQmxErrorUnknownCardPowerProfileInCarrier ( - 201422 ) #
# Skipping MacroDefinition: DAQmxErrorAttrNotSupportedOnAccessory ( - 201421 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkDeviceReservedByAnotherHost ( - 201420 ) #
# Skipping MacroDefinition: DAQmxErrorIncorrectFirmwareFileUploaded ( - 201419 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidFirmwareFileUploaded ( - 201418 ) #
# Skipping MacroDefinition: DAQmxErrorInTimerTimeoutOnArm ( - 201417 ) #
# Skipping MacroDefinition: DAQmxErrorCantExceedSlotRelayDriveLimit ( - 201416 ) #
# Skipping MacroDefinition: DAQmxErrorModuleUnsupportedFor9163 ( - 201415 ) #
# Skipping MacroDefinition: DAQmxErrorConnectionsNotSupported ( - 201414 ) #
# Skipping MacroDefinition: DAQmxErrorAccessoryNotPresent ( - 201413 ) #
# Skipping MacroDefinition: DAQmxErrorSpecifiedAccessoryChannelsNotPresentOnDevice ( - 201412 ) #
# Skipping MacroDefinition: DAQmxErrorConnectionsNotSupportedOnAccessory ( - 201411 ) #
# Skipping MacroDefinition: DAQmxErrorRateTooFastForHWTSP ( - 201410 ) #
# Skipping MacroDefinition: DAQmxErrorDelayFromSampleClockOutOfRangeForHWTSP ( - 201409 ) #
# Skipping MacroDefinition: DAQmxErrorAveragingWhenNotInternalHWTSP ( - 201408 ) #
# Skipping MacroDefinition: DAQmxErrorAttributeNotSupportedUnlessHWTSP ( - 201407 ) #
# Skipping MacroDefinition: DAQmxErrorFiveVoltDetectFailed ( - 201406 ) #
# Skipping MacroDefinition: DAQmxErrorAnalogBusStateInconsistent ( - 201405 ) #
# Skipping MacroDefinition: DAQmxErrorCardDetectedDoesNotMatchExpectedCard ( - 201404 ) #
# Skipping MacroDefinition: DAQmxErrorLoggingStartNewFileNotCalled ( - 201403 ) #
# Skipping MacroDefinition: DAQmxErrorLoggingSampsPerFileNotDivisible ( - 201402 ) #
# Skipping MacroDefinition: DAQmxErrorRetrievingNetworkDeviceProperties ( - 201401 ) #
# Skipping MacroDefinition: DAQmxErrorFilePreallocationFailed ( - 201400 ) #
# Skipping MacroDefinition: DAQmxErrorModuleMismatchInSameTimedTask ( - 201399 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAttributeValuePossiblyDueToOtherAttributeValues ( - 201398 ) #
# Skipping MacroDefinition: DAQmxErrorChangeDetectionStoppedToPreventDeviceHang ( - 201397 ) #
# Skipping MacroDefinition: DAQmxErrorFilterDelayRemovalNotPosssibleWithAnalogTrigger ( - 201396 ) #
# Skipping MacroDefinition: DAQmxErrorNonbufferedOrNoChannels ( - 201395 ) #
# Skipping MacroDefinition: DAQmxErrorTristateLogicLevelNotSpecdForEntirePort ( - 201394 ) #
# Skipping MacroDefinition: DAQmxErrorTristateLogicLevelNotSupportedOnDigOutChan ( - 201393 ) #
# Skipping MacroDefinition: DAQmxErrorTristateLogicLevelNotSupported ( - 201392 ) #
# Skipping MacroDefinition: DAQmxErrorIncompleteGainAndCouplingCalAdjustment ( - 201391 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkStatusConnectionLost ( - 201390 ) #
# Skipping MacroDefinition: DAQmxErrorModuleChangeDuringConnectionLoss ( - 201389 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkDeviceNotReservedByHost ( - 201388 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicateCalibrationAdjustmentInput ( - 201387 ) #
# Skipping MacroDefinition: DAQmxErrorSelfCalFailedContactTechSupport ( - 201386 ) #
# Skipping MacroDefinition: DAQmxErrorSelfCalFailedToConverge ( - 201385 ) #
# Skipping MacroDefinition: DAQmxErrorUnsupportedSimulatedModuleForSimulatedChassis ( - 201384 ) #
# Skipping MacroDefinition: DAQmxErrorLoggingWriteSizeTooBig ( - 201383 ) #
# Skipping MacroDefinition: DAQmxErrorLoggingWriteSizeNotDivisible ( - 201382 ) #
# Skipping MacroDefinition: DAQmxErrorMyDAQPowerRailFault ( - 201381 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceDoesNotSupportThisOperation ( - 201380 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkDevicesNotSupportedOnThisPlatform ( - 201379 ) #
# Skipping MacroDefinition: DAQmxErrorUnknownFirmwareVersion ( - 201378 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareIsUpdating ( - 201377 ) #
# Skipping MacroDefinition: DAQmxErrorAccessoryEEPROMIsCorrupt ( - 201376 ) #
# Skipping MacroDefinition: DAQmxErrorThrmcplLeadOffsetNullingCalNotSupported ( - 201375 ) #
# Skipping MacroDefinition: DAQmxErrorSelfCalFailedTryExtCal ( - 201374 ) #
# Skipping MacroDefinition: DAQmxErrorOutputP2PNotSupportedWithMultithreadedScripts ( - 201373 ) #
# Skipping MacroDefinition: DAQmxErrorThrmcplCalibrationChannelsOpen ( - 201372 ) #
# Skipping MacroDefinition: DAQmxErrorMDNSServiceInstanceAlreadyInUse ( - 201371 ) #
# Skipping MacroDefinition: DAQmxErrorIPAddressAlreadyInUse ( - 201370 ) #
# Skipping MacroDefinition: DAQmxErrorHostnameAlreadyInUse ( - 201369 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumberOfCalAdjustmentPoints ( - 201368 ) #
# Skipping MacroDefinition: DAQmxErrorFilterOrDigitalSyncInternalSignal ( - 201367 ) #
# Skipping MacroDefinition: DAQmxErrorBadDDSSource ( - 201366 ) #
# Skipping MacroDefinition: DAQmxErrorOnboardRegenWithMoreThan16Channels ( - 201365 ) #
# Skipping MacroDefinition: DAQmxErrorTriggerTooFast ( - 201364 ) #
# Skipping MacroDefinition: DAQmxErrorMinMaxOutsideTableRange ( - 201363 ) #
# Skipping MacroDefinition: DAQmxErrorChannelExpansionWithInvalidAnalogTriggerDevice ( - 201362 ) #
# Skipping MacroDefinition: DAQmxErrorSyncPulseSrcInvalidForTask ( - 201361 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCarrierSlotNumberSpecd ( - 201360 ) #
# Skipping MacroDefinition: DAQmxErrorCardsMustBeInSameCarrier ( - 201359 ) #
# Skipping MacroDefinition: DAQmxErrorCardDevCarrierSimMustMatch ( - 201358 ) #
# Skipping MacroDefinition: DAQmxErrorDevMustHaveAtLeastOneCard ( - 201357 ) #
# Skipping MacroDefinition: DAQmxErrorCardTopologyError ( - 201356 ) #
# Skipping MacroDefinition: DAQmxErrorExceededCarrierPowerLimit ( - 201355 ) #
# Skipping MacroDefinition: DAQmxErrorCardsIncompatible ( - 201354 ) #
# Skipping MacroDefinition: DAQmxErrorAnalogBusNotValid ( - 201353 ) #
# Skipping MacroDefinition: DAQmxErrorReservationConflict ( - 201352 ) #
# Skipping MacroDefinition: DAQmxErrorMemMappedOnDemandNotSupported ( - 201351 ) #
# Skipping MacroDefinition: DAQmxErrorSlaveWithNoStartTriggerConfigured ( - 201350 ) #
# Skipping MacroDefinition: DAQmxErrorChannelExpansionWithDifferentTriggerDevices ( - 201349 ) #
# Skipping MacroDefinition: DAQmxErrorCounterSyncAndRetriggered ( - 201348 ) #
# Skipping MacroDefinition: DAQmxErrorNoExternalSyncPulseDetected ( - 201347 ) #
# Skipping MacroDefinition: DAQmxErrorSlaveAndNoExternalSyncPulse ( - 201346 ) #
# Skipping MacroDefinition: DAQmxErrorCustomTimingRequiredForAttribute ( - 201345 ) #
# Skipping MacroDefinition: DAQmxErrorCustomTimingModeNotSet ( - 201344 ) #
# Skipping MacroDefinition: DAQmxErrorAccessoryPowerTripped ( - 201343 ) #
# Skipping MacroDefinition: DAQmxErrorUnsupportedAccessory ( - 201342 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAccessoryChange ( - 201341 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareRequiresUpgrade ( - 201340 ) #
# Skipping MacroDefinition: DAQmxErrorFastExternalTimebaseNotSupportedForDevice ( - 201339 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidShuntLocationForCalibration ( - 201338 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNameTooLong ( - 201337 ) #
# Skipping MacroDefinition: DAQmxErrorBridgeScalesUnsupported ( - 201336 ) #
# Skipping MacroDefinition: DAQmxErrorMismatchedElecPhysValues ( - 201335 ) #
# Skipping MacroDefinition: DAQmxErrorLinearRequiresUniquePoints ( - 201334 ) #
# Skipping MacroDefinition: DAQmxErrorMissingRequiredScalingParameter ( - 201333 ) #
# Skipping MacroDefinition: DAQmxErrorLoggingNotSupportOnOutputTasks ( - 201332 ) #
# Skipping MacroDefinition: DAQmxErrorMemoryMappedHardwareTimedNonBufferedUnsupported ( - 201331 ) #
# Skipping MacroDefinition: DAQmxErrorCannotUpdatePulseTrainWithAutoIncrementEnabled ( - 201330 ) #
# Skipping MacroDefinition: DAQmxErrorHWTimedSinglePointAndDataXferNotDMA ( - 201329 ) #
# Skipping MacroDefinition: DAQmxErrorSCCSecondStageEmpty ( - 201328 ) #
# Skipping MacroDefinition: DAQmxErrorSCCInvalidDualStageCombo ( - 201327 ) #
# Skipping MacroDefinition: DAQmxErrorSCCInvalidSecondStage ( - 201326 ) #
# Skipping MacroDefinition: DAQmxErrorSCCInvalidFirstStage ( - 201325 ) #
# Skipping MacroDefinition: DAQmxErrorCounterMultipleSampleClockedChannels ( - 201324 ) #
# Skipping MacroDefinition: DAQmxError2CounterMeasurementModeAndSampleClocked ( - 201323 ) #
# Skipping MacroDefinition: DAQmxErrorCantHaveBothMemMappedAndNonMemMappedTasks ( - 201322 ) #
# Skipping MacroDefinition: DAQmxErrorMemMappedDataReadByAnotherProcess ( - 201321 ) #
# Skipping MacroDefinition: DAQmxErrorRetriggeringInvalidForGivenSettings ( - 201320 ) #
# Skipping MacroDefinition: DAQmxErrorAIOverrun ( - 201319 ) #
# Skipping MacroDefinition: DAQmxErrorCOOverrun ( - 201318 ) #
# Skipping MacroDefinition: DAQmxErrorCounterMultipleBufferedChannels ( - 201317 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTimebaseForCOHWTSP ( - 201316 ) #
# Skipping MacroDefinition: DAQmxErrorWriteBeforeEvent ( - 201315 ) #
# Skipping MacroDefinition: DAQmxErrorCIOverrun ( - 201314 ) #
# Skipping MacroDefinition: DAQmxErrorCounterNonResponsiveAndReset ( - 201313 ) #
# Skipping MacroDefinition: DAQmxErrorMeasTypeOrChannelNotSupportedForLogging ( - 201312 ) #
# Skipping MacroDefinition: DAQmxErrorFileAlreadyOpenedForWrite ( - 201311 ) #
# Skipping MacroDefinition: DAQmxErrorTdmsNotFound ( - 201310 ) #
# Skipping MacroDefinition: DAQmxErrorGenericFileIO ( - 201309 ) #
# Skipping MacroDefinition: DAQmxErrorFiniteSTCCounterNotSupportedForLogging ( - 201308 ) #
# Skipping MacroDefinition: DAQmxErrorMeasurementTypeNotSupportedForLogging ( - 201307 ) #
# Skipping MacroDefinition: DAQmxErrorFileAlreadyOpened ( - 201306 ) #
# Skipping MacroDefinition: DAQmxErrorDiskFull ( - 201305 ) #
# Skipping MacroDefinition: DAQmxErrorFilePathInvalid ( - 201304 ) #
# Skipping MacroDefinition: DAQmxErrorFileVersionMismatch ( - 201303 ) #
# Skipping MacroDefinition: DAQmxErrorFileWriteProtected ( - 201302 ) #
# Skipping MacroDefinition: DAQmxErrorReadNotSupportedForLoggingMode ( - 201301 ) #
# Skipping MacroDefinition: DAQmxErrorAttributeNotSupportedWhenLogging ( - 201300 ) #
# Skipping MacroDefinition: DAQmxErrorLoggingModeNotSupportedNonBuffered ( - 201299 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyNotSupportedWithConflictingProperty ( - 201298 ) #
# Skipping MacroDefinition: DAQmxErrorParallelSSHOnConnector1 ( - 201297 ) #
# Skipping MacroDefinition: DAQmxErrorCOOnlyImplicitSampleTimingTypeSupported ( - 201296 ) #
# Skipping MacroDefinition: DAQmxErrorCalibrationFailedAOOutOfRange ( - 201295 ) #
# Skipping MacroDefinition: DAQmxErrorCalibrationFailedAIOutOfRange ( - 201294 ) #
# Skipping MacroDefinition: DAQmxErrorCalPWMLinearityFailed ( - 201293 ) #
# Skipping MacroDefinition: DAQmxErrorOverrunUnderflowConfigurationCombo ( - 201292 ) #
# Skipping MacroDefinition: DAQmxErrorCannotWriteToFiniteCOTask ( - 201291 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkDAQInvalidWEPKeyLength ( - 201290 ) #
# Skipping MacroDefinition: DAQmxErrorCalInputsShortedNotSupported ( - 201289 ) #
# Skipping MacroDefinition: DAQmxErrorCannotSetPropertyWhenTaskIsReserved ( - 201288 ) #
# Skipping MacroDefinition: DAQmxErrorMinus12VFuseBlown ( - 201287 ) #
# Skipping MacroDefinition: DAQmxErrorPlus12VFuseBlown ( - 201286 ) #
# Skipping MacroDefinition: DAQmxErrorPlus5VFuseBlown ( - 201285 ) #
# Skipping MacroDefinition: DAQmxErrorPlus3VFuseBlown ( - 201284 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceSerialPortError ( - 201283 ) #
# Skipping MacroDefinition: DAQmxErrorPowerUpStateMachineNotDone ( - 201282 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyTriggersSpecifiedInTask ( - 201281 ) #
# Skipping MacroDefinition: DAQmxErrorVerticalOffsetNotSupportedOnDevice ( - 201280 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCouplingForMeasurementType ( - 201279 ) #
# Skipping MacroDefinition: DAQmxErrorDigitalLineUpdateTooFastForDevice ( - 201278 ) #
# Skipping MacroDefinition: DAQmxErrorCertificateIsTooBigToTransfer ( - 201277 ) #
# Skipping MacroDefinition: DAQmxErrorOnlyPEMOrDERCertiticatesAccepted ( - 201276 ) #
# Skipping MacroDefinition: DAQmxErrorCalCouplingNotSupported ( - 201275 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNotSupportedIn64Bit ( - 201274 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkDeviceInUse ( - 201273 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidIPv4AddressFormat ( - 201272 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkProductTypeMismatch ( - 201271 ) #
# Skipping MacroDefinition: DAQmxErrorOnlyPEMCertificatesAccepted ( - 201270 ) #
# Skipping MacroDefinition: DAQmxErrorCalibrationRequiresPrototypingBoardEnabled ( - 201269 ) #
# Skipping MacroDefinition: DAQmxErrorAllCurrentLimitingResourcesAlreadyTaken ( - 201268 ) #
# Skipping MacroDefinition: DAQmxErrorUserDefInfoStringBadLength ( - 201267 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyNotFound ( - 201266 ) #
# Skipping MacroDefinition: DAQmxErrorOverVoltageProtectionActivated ( - 201265 ) #
# Skipping MacroDefinition: DAQmxErrorScaledIQWaveformTooLarge ( - 201264 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareFailedToDownload ( - 201263 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyNotSupportedForBusType ( - 201262 ) #
# Skipping MacroDefinition: DAQmxErrorChangeRateWhileRunningCouldNotBeCompleted ( - 201261 ) #
# Skipping MacroDefinition: DAQmxErrorCannotQueryManualControlAttribute ( - 201260 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNetworkConfiguration ( - 201259 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWirelessConfiguration ( - 201258 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWirelessCountryCode ( - 201257 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWirelessChannel ( - 201256 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkEEPROMHasChanged ( - 201255 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkSerialNumberMismatch ( - 201254 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkStatusDown ( - 201253 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkTargetUnreachable ( - 201252 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkTargetNotFound ( - 201251 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkStatusTimedOut ( - 201250 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWirelessSecuritySelection ( - 201249 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkDeviceConfigurationLocked ( - 201248 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkDAQDeviceNotSupported ( - 201247 ) #
# Skipping MacroDefinition: DAQmxErrorNetworkDAQCannotCreateEmptySleeve ( - 201246 ) #
# Skipping MacroDefinition: DAQmxErrorUserDefInfoStringTooLong ( - 201245 ) #
# Skipping MacroDefinition: DAQmxErrorModuleTypeDoesNotMatchModuleTypeInDestination ( - 201244 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTEDSInterfaceAddress ( - 201243 ) #
# Skipping MacroDefinition: DAQmxErrorDevDoesNotSupportSCXIComm ( - 201242 ) #
# Skipping MacroDefinition: DAQmxErrorSCXICommDevConnector0MustBeCabledToModule ( - 201241 ) #
# Skipping MacroDefinition: DAQmxErrorSCXIModuleDoesNotSupportDigitizationMode ( - 201240 ) #
# Skipping MacroDefinition: DAQmxErrorDevDoesNotSupportMultiplexedSCXIDigitizationMode ( - 201239 ) #
# Skipping MacroDefinition: DAQmxErrorDevOrDevPhysChanDoesNotSupportSCXIDigitization ( - 201238 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidPhysChanName ( - 201237 ) #
# Skipping MacroDefinition: DAQmxErrorSCXIChassisCommModeInvalid ( - 201236 ) #
# Skipping MacroDefinition: DAQmxErrorRequiredDependencyNotFound ( - 201235 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidStorage ( - 201234 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidObject ( - 201233 ) #
# Skipping MacroDefinition: DAQmxErrorStorageAlteredPriorToSave ( - 201232 ) #
# Skipping MacroDefinition: DAQmxErrorTaskDoesNotReferenceLocalChannel ( - 201231 ) #
# Skipping MacroDefinition: DAQmxErrorReferencedDevSimMustMatchTarget ( - 201230 ) #
# Skipping MacroDefinition: DAQmxErrorProgrammedIOFailsBecauseOfWatchdogTimer ( - 201229 ) #
# Skipping MacroDefinition: DAQmxErrorWatchdogTimerFailsBecauseOfProgrammedIO ( - 201228 ) #
# Skipping MacroDefinition: DAQmxErrorCantUseThisTimingEngineWithAPort ( - 201227 ) #
# Skipping MacroDefinition: DAQmxErrorProgrammedIOConflict ( - 201226 ) #
# Skipping MacroDefinition: DAQmxErrorChangeDetectionIncompatibleWithProgrammedIO ( - 201225 ) #
# Skipping MacroDefinition: DAQmxErrorTristateNotEnoughLines ( - 201224 ) #
# Skipping MacroDefinition: DAQmxErrorTristateConflict ( - 201223 ) #
# Skipping MacroDefinition: DAQmxErrorGenerateOrFiniteWaitExpectedBeforeBreakBlock ( - 201222 ) #
# Skipping MacroDefinition: DAQmxErrorBreakBlockNotAllowedInLoop ( - 201221 ) #
# Skipping MacroDefinition: DAQmxErrorClearTriggerNotAllowedInBreakBlock ( - 201220 ) #
# Skipping MacroDefinition: DAQmxErrorNestingNotAllowedInBreakBlock ( - 201219 ) #
# Skipping MacroDefinition: DAQmxErrorIfElseBlockNotAllowedInBreakBlock ( - 201218 ) #
# Skipping MacroDefinition: DAQmxErrorRepeatUntilTriggerLoopNotAllowedInBreakBlock ( - 201217 ) #
# Skipping MacroDefinition: DAQmxErrorWaitUntilTriggerNotAllowedInBreakBlock ( - 201216 ) #
# Skipping MacroDefinition: DAQmxErrorMarkerPosInvalidInBreakBlock ( - 201215 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWaitDurationInBreakBlock ( - 201214 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSubsetLengthInBreakBlock ( - 201213 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWaveformLengthInBreakBlock ( - 201212 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWaitDurationBeforeBreakBlock ( - 201211 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSubsetLengthBeforeBreakBlock ( - 201210 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWaveformLengthBeforeBreakBlock ( - 201209 ) #
# Skipping MacroDefinition: DAQmxErrorSampleRateTooHighForADCTimingMode ( - 201208 ) #
# Skipping MacroDefinition: DAQmxErrorActiveDevNotSupportedWithMultiDevTask ( - 201207 ) #
# Skipping MacroDefinition: DAQmxErrorRealDevAndSimDevNotSupportedInSameTask ( - 201206 ) #
# Skipping MacroDefinition: DAQmxErrorRTSISimMustMatchDevSim ( - 201205 ) #
# Skipping MacroDefinition: DAQmxErrorBridgeShuntCaNotSupported ( - 201204 ) #
# Skipping MacroDefinition: DAQmxErrorStrainShuntCaNotSupported ( - 201203 ) #
# Skipping MacroDefinition: DAQmxErrorGainTooLargeForGainCalConst ( - 201202 ) #
# Skipping MacroDefinition: DAQmxErrorOffsetTooLargeForOffsetCalConst ( - 201201 ) #
# Skipping MacroDefinition: DAQmxErrorElvisPrototypingBoardRemoved ( - 201200 ) #
# Skipping MacroDefinition: DAQmxErrorElvis2PowerRailFault ( - 201199 ) #
# Skipping MacroDefinition: DAQmxErrorElvis2PhysicalChansFault ( - 201198 ) #
# Skipping MacroDefinition: DAQmxErrorElvis2PhysicalChansThermalEvent ( - 201197 ) #
# Skipping MacroDefinition: DAQmxErrorRXBitErrorRateLimitExceeded ( - 201196 ) #
# Skipping MacroDefinition: DAQmxErrorPHYBitErrorRateLimitExceeded ( - 201195 ) #
# Skipping MacroDefinition: DAQmxErrorTwoPartAttributeCalledOutOfOrder ( - 201194 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSCXIChassisAddress ( - 201193 ) #
# Skipping MacroDefinition: DAQmxErrorCouldNotConnectToRemoteMXS ( - 201192 ) #
# Skipping MacroDefinition: DAQmxErrorExcitationStateRequiredForAttributes ( - 201191 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNotUsableUntilUSBReplug ( - 201190 ) #
# Skipping MacroDefinition: DAQmxErrorInputFIFOOverflowDuringCalibrationOnFullSpeedUSB ( - 201189 ) #
# Skipping MacroDefinition: DAQmxErrorInputFIFOOverflowDuringCalibration ( - 201188 ) #
# Skipping MacroDefinition: DAQmxErrorCJCChanConflictsWithNonThermocoupleChan ( - 201187 ) #
# Skipping MacroDefinition: DAQmxErrorCommDeviceForPXIBackplaneNotInRightmostSlot ( - 201186 ) #
# Skipping MacroDefinition: DAQmxErrorCommDeviceForPXIBackplaneNotInSameChassis ( - 201185 ) #
# Skipping MacroDefinition: DAQmxErrorCommDeviceForPXIBackplaneNotPXI ( - 201184 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalExcitFrequency ( - 201183 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalExcitVoltage ( - 201182 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAIInputSrc ( - 201181 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalInputRef ( - 201180 ) #
# Skipping MacroDefinition: DAQmxErrordBReferenceValueNotGreaterThanZero ( - 201179 ) #
# Skipping MacroDefinition: DAQmxErrorSampleClockRateIsTooFastForSampleClockTiming ( - 201178 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNotUsableUntilColdStart ( - 201177 ) #
# Skipping MacroDefinition: DAQmxErrorSampleClockRateIsTooFastForBurstTiming ( - 201176 ) #
# Skipping MacroDefinition: DAQmxErrorDevImportFailedAssociatedResourceIDsNotSupported ( - 201175 ) #
# Skipping MacroDefinition: DAQmxErrorSCXI1600ImportNotSupported ( - 201174 ) #
# Skipping MacroDefinition: DAQmxErrorPowerSupplyConfigurationFailed ( - 201173 ) #
# Skipping MacroDefinition: DAQmxErrorIEPEWithDCNotAllowed ( - 201172 ) #
# Skipping MacroDefinition: DAQmxErrorMinTempForThermocoupleTypeOutsideAccuracyForPolyScaling ( - 201171 ) #
# Skipping MacroDefinition: DAQmxErrorDevImportFailedNoDeviceToOverwriteAndSimulationNotSupported ( - 201170 ) #
# Skipping MacroDefinition: DAQmxErrorDevImportFailedDeviceNotSupportedOnDestination ( - 201169 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareIsTooOld ( - 201168 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareCouldntUpdate ( - 201167 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareIsCorrupt ( - 201166 ) #
# Skipping MacroDefinition: DAQmxErrorFirmwareTooNew ( - 201165 ) #
# Skipping MacroDefinition: DAQmxErrorSampClockCannotBeExportedFromExternalSampClockSrc ( - 201164 ) #
# Skipping MacroDefinition: DAQmxErrorPhysChanReservedForInputWhenDesiredForOutput ( - 201163 ) #
# Skipping MacroDefinition: DAQmxErrorPhysChanReservedForOutputWhenDesiredForInput ( - 201162 ) #
# Skipping MacroDefinition: DAQmxErrorSpecifiedCDAQSlotNotEmpty ( - 201161 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceDoesNotSupportSimulation ( - 201160 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCDAQSlotNumberSpecd ( - 201159 ) #
# Skipping MacroDefinition: DAQmxErrorCSeriesModSimMustMatchCDAQChassisSim ( - 201158 ) #
# Skipping MacroDefinition: DAQmxErrorSCCCabledDevMustNotBeSimWhenSCCCarrierIsNotSim ( - 201157 ) #
# Skipping MacroDefinition: DAQmxErrorSCCModSimMustMatchSCCCarrierSim ( - 201156 ) #
# Skipping MacroDefinition: DAQmxErrorSCXIModuleDoesNotSupportSimulation ( - 201155 ) #
# Skipping MacroDefinition: DAQmxErrorSCXICableDevMustNotBeSimWhenModIsNotSim ( - 201154 ) #
# Skipping MacroDefinition: DAQmxErrorSCXIDigitizerSimMustNotBeSimWhenModIsNotSim ( - 201153 ) #
# Skipping MacroDefinition: DAQmxErrorSCXIModSimMustMatchSCXIChassisSim ( - 201152 ) #
# Skipping MacroDefinition: DAQmxErrorSimPXIDevReqSlotAndChassisSpecd ( - 201151 ) #
# Skipping MacroDefinition: DAQmxErrorSimDevConflictWithRealDev ( - 201150 ) #
# Skipping MacroDefinition: DAQmxErrorInsufficientDataForCalibration ( - 201149 ) #
# Skipping MacroDefinition: DAQmxErrorTriggerChannelMustBeEnabled ( - 201148 ) #
# Skipping MacroDefinition: DAQmxErrorCalibrationDataConflictCouldNotBeResolved ( - 201147 ) #
# Skipping MacroDefinition: DAQmxErrorSoftwareTooNewForSelfCalibrationData ( - 201146 ) #
# Skipping MacroDefinition: DAQmxErrorSoftwareTooNewForExtCalibrationData ( - 201145 ) #
# Skipping MacroDefinition: DAQmxErrorSelfCalibrationDataTooNewForSoftware ( - 201144 ) #
# Skipping MacroDefinition: DAQmxErrorExtCalibrationDataTooNewForSoftware ( - 201143 ) #
# Skipping MacroDefinition: DAQmxErrorSoftwareTooNewForEEPROM ( - 201142 ) #
# Skipping MacroDefinition: DAQmxErrorEEPROMTooNewForSoftware ( - 201141 ) #
# Skipping MacroDefinition: DAQmxErrorSoftwareTooNewForHardware ( - 201140 ) #
# Skipping MacroDefinition: DAQmxErrorHardwareTooNewForSoftware ( - 201139 ) #
# Skipping MacroDefinition: DAQmxErrorTaskCannotRestartFirstSampNotAvailToGenerate ( - 201138 ) #
# Skipping MacroDefinition: DAQmxErrorOnlyUseStartTrigSrcPrptyWithDevDataLines ( - 201137 ) #
# Skipping MacroDefinition: DAQmxErrorOnlyUsePauseTrigSrcPrptyWithDevDataLines ( - 201136 ) #
# Skipping MacroDefinition: DAQmxErrorOnlyUseRefTrigSrcPrptyWithDevDataLines ( - 201135 ) #
# Skipping MacroDefinition: DAQmxErrorPauseTrigDigPatternSizeDoesNotMatchSrcSize ( - 201134 ) #
# Skipping MacroDefinition: DAQmxErrorLineConflictCDAQ ( - 201133 ) #
# Skipping MacroDefinition: DAQmxErrorCannotWriteBeyondFinalFiniteSample ( - 201132 ) #
# Skipping MacroDefinition: DAQmxErrorRefAndStartTriggerSrcCantBeSame ( - 201131 ) #
# Skipping MacroDefinition: DAQmxErrorMemMappingIncompatibleWithPhysChansInTask ( - 201130 ) #
# Skipping MacroDefinition: DAQmxErrorOutputDriveTypeMemMappingConflict ( - 201129 ) #
# Skipping MacroDefinition: DAQmxErrorCAPIDeviceIndexInvalid ( - 201128 ) #
# Skipping MacroDefinition: DAQmxErrorRatiometricDevicesMustUseExcitationForScaling ( - 201127 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyRequiresPerDeviceCfg ( - 201126 ) #
# Skipping MacroDefinition: DAQmxErrorAICouplingAndAIInputSourceConflict ( - 201125 ) #
# Skipping MacroDefinition: DAQmxErrorOnlyOneTaskCanPerformDOMemoryMappingAtATime ( - 201124 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyChansForAnalogRefTrigCDAQ ( - 201123 ) #
# Skipping MacroDefinition: DAQmxErrorSpecdPropertyValueIsIncompatibleWithSampleTimingType ( - 201122 ) #
# Skipping MacroDefinition: DAQmxErrorCPUNotSupportedRequireSSE ( - 201121 ) #
# Skipping MacroDefinition: DAQmxErrorSpecdPropertyValueIsIncompatibleWithSampleTimingResponseMode ( - 201120 ) #
# Skipping MacroDefinition: DAQmxErrorConflictingNextWriteIsLastAndRegenModeProperties ( - 201119 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioOperationDoesNotSupportDeviceContext ( - 201118 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyValueInChannelExpansionContextInvalid ( - 201117 ) #
# Skipping MacroDefinition: DAQmxErrorHWTimedNonBufferedAONotSupported ( - 201116 ) #
# Skipping MacroDefinition: DAQmxErrorWaveformLengthNotMultOfQuantum ( - 201115 ) #
# Skipping MacroDefinition: DAQmxErrorDSAExpansionMixedBoardsWrongOrderInPXIChassis ( - 201114 ) #
# Skipping MacroDefinition: DAQmxErrorPowerLevelTooLowForOOK ( - 201113 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceComponentTestFailure ( - 201112 ) #
# Skipping MacroDefinition: DAQmxErrorUserDefinedWfmWithOOKUnsupported ( - 201111 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDigitalModulationUserDefinedWaveform ( - 201110 ) #
# Skipping MacroDefinition: DAQmxErrorBothRefInAndRefOutEnabled ( - 201109 ) #
# Skipping MacroDefinition: DAQmxErrorBothAnalogAndDigitalModulationEnabled ( - 201108 ) #
# Skipping MacroDefinition: DAQmxErrorBufferedOpsNotSupportedInSpecdSlotForCDAQ ( - 201107 ) #
# Skipping MacroDefinition: DAQmxErrorPhysChanNotSupportedInSpecdSlotForCDAQ ( - 201106 ) #
# Skipping MacroDefinition: DAQmxErrorResourceReservedWithConflictingSettings ( - 201105 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentAnalogTrigSettingsCDAQ ( - 201104 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyChansForAnalogPauseTrigCDAQ ( - 201103 ) #
# Skipping MacroDefinition: DAQmxErrorAnalogTrigNotFirstInScanListCDAQ ( - 201102 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyChansGivenTimingType ( - 201101 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkTimebaseDivWithExtSampClk ( - 201100 ) #
# Skipping MacroDefinition: DAQmxErrorCantSaveTaskWithPerDeviceTimingProperties ( - 201099 ) #
# Skipping MacroDefinition: DAQmxErrorConflictingAutoZeroMode ( - 201098 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateNotSupportedWithEAREnabled ( - 201097 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkTimebaseRateNotSpecd ( - 201096 ) #
# Skipping MacroDefinition: DAQmxErrorSessionCorruptedByDLLReload ( - 201095 ) #
# Skipping MacroDefinition: DAQmxErrorActiveDevNotSupportedWithChanExpansion ( - 201094 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateInvalid ( - 201093 ) #
# Skipping MacroDefinition: DAQmxErrorExtSyncPulseSrcCannotBeExported ( - 201092 ) #
# Skipping MacroDefinition: DAQmxErrorSyncPulseMinDelayToStartNeededForExtSyncPulseSrc ( - 201091 ) #
# Skipping MacroDefinition: DAQmxErrorSyncPulseSrcInvalid ( - 201090 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkTimebaseRateInvalid ( - 201089 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkTimebaseSrcInvalid ( - 201088 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateMustBeSpecd ( - 201087 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAttributeName ( - 201086 ) #
# Skipping MacroDefinition: DAQmxErrorCJCChanNameMustBeSetWhenCJCSrcIsScannableChan ( - 201085 ) #
# Skipping MacroDefinition: DAQmxErrorHiddenChanMissingInChansPropertyInCfgFile ( - 201084 ) #
# Skipping MacroDefinition: DAQmxErrorChanNamesNotSpecdInCfgFile ( - 201083 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicateHiddenChanNamesInCfgFile ( - 201082 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicateChanNameInCfgFile ( - 201081 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSCCModuleForSlotSpecd ( - 201080 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSCCSlotNumberSpecd ( - 201079 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSectionIdentifier ( - 201078 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSectionName ( - 201077 ) #
# Skipping MacroDefinition: DAQmxErrorDAQmxVersionNotSupported ( - 201076 ) #
# Skipping MacroDefinition: DAQmxErrorSWObjectsFoundInFile ( - 201075 ) #
# Skipping MacroDefinition: DAQmxErrorHWObjectsFoundInFile ( - 201074 ) #
# Skipping MacroDefinition: DAQmxErrorLocalChannelSpecdWithNoParentTask ( - 201073 ) #
# Skipping MacroDefinition: DAQmxErrorTaskReferencesMissingLocalChannel ( - 201072 ) #
# Skipping MacroDefinition: DAQmxErrorTaskReferencesLocalChannelFromOtherTask ( - 201071 ) #
# Skipping MacroDefinition: DAQmxErrorTaskMissingChannelProperty ( - 201070 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidLocalChanName ( - 201069 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidEscapeCharacterInString ( - 201068 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTableIdentifier ( - 201067 ) #
# Skipping MacroDefinition: DAQmxErrorValueFoundInInvalidColumn ( - 201066 ) #
# Skipping MacroDefinition: DAQmxErrorMissingStartOfTable ( - 201065 ) #
# Skipping MacroDefinition: DAQmxErrorFileMissingRequiredDAQmxHeader ( - 201064 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceIDDoesNotMatch ( - 201063 ) #
# Skipping MacroDefinition: DAQmxErrorBufferedOperationsNotSupportedOnSelectedLines ( - 201062 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyConflictsWithScale ( - 201061 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidINIFileSyntax ( - 201060 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceInfoFailedPXIChassisNotIdentified ( - 201059 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidHWProductNumber ( - 201058 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidHWProductType ( - 201057 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumericFormatSpecd ( - 201056 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicatePropertyInObject ( - 201055 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidEnumValueSpecd ( - 201054 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSSensorPhysicalChannelConflict ( - 201053 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyPhysicalChansForTEDSInterfaceSpecd ( - 201052 ) #
# Skipping MacroDefinition: DAQmxErrorIncapableTEDSInterfaceControllingDeviceSpecd ( - 201051 ) #
# Skipping MacroDefinition: DAQmxErrorSCCCarrierSpecdIsMissing ( - 201050 ) #
# Skipping MacroDefinition: DAQmxErrorIncapableSCCDigitizingDeviceSpecd ( - 201049 ) #
# Skipping MacroDefinition: DAQmxErrorAccessorySettingNotApplicable ( - 201048 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceAndConnectorSpecdAlreadyOccupied ( - 201047 ) #
# Skipping MacroDefinition: DAQmxErrorIllegalAccessoryTypeForDeviceSpecd ( - 201046 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDeviceConnectorNumberSpecd ( - 201045 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAccessoryName ( - 201044 ) #
# Skipping MacroDefinition: DAQmxErrorMoreThanOneMatchForSpecdDevice ( - 201043 ) #
# Skipping MacroDefinition: DAQmxErrorNoMatchForSpecdDevice ( - 201042 ) #
# Skipping MacroDefinition: DAQmxErrorProductTypeAndProductNumberConflict ( - 201041 ) #
# Skipping MacroDefinition: DAQmxErrorExtraPropertyDetectedInSpecdObject ( - 201040 ) #
# Skipping MacroDefinition: DAQmxErrorRequiredPropertyMissing ( - 201039 ) #
# Skipping MacroDefinition: DAQmxErrorCantSetAuthorForLocalChan ( - 201038 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTimeValue ( - 201037 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTimeFormat ( - 201036 ) #
# Skipping MacroDefinition: DAQmxErrorDigDevChansSpecdInModeOtherThanParallel ( - 201035 ) #
# Skipping MacroDefinition: DAQmxErrorCascadeDigitizationModeNotSupported ( - 201034 ) #
# Skipping MacroDefinition: DAQmxErrorSpecdSlotAlreadyOccupied ( - 201033 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSCXISlotNumberSpecd ( - 201032 ) #
# Skipping MacroDefinition: DAQmxErrorAddressAlreadyInUse ( - 201031 ) #
# Skipping MacroDefinition: DAQmxErrorSpecdDeviceDoesNotSupportRTSI ( - 201030 ) #
# Skipping MacroDefinition: DAQmxErrorSpecdDeviceIsAlreadyOnRTSIBus ( - 201029 ) #
# Skipping MacroDefinition: DAQmxErrorIdentifierInUse ( - 201028 ) #
# Skipping MacroDefinition: DAQmxErrorWaitForNextSampleClockOrReadDetected3OrMoreMissedSampClks ( - 201027 ) #
# Skipping MacroDefinition: DAQmxErrorHWTimedAndDataXferPIO ( - 201026 ) #
# Skipping MacroDefinition: DAQmxErrorNonBufferedAndHWTimed ( - 201025 ) #
# Skipping MacroDefinition: DAQmxErrorCTROutSampClkPeriodShorterThanGenPulseTrainPeriodPolled ( - 201024 ) #
# Skipping MacroDefinition: DAQmxErrorCTROutSampClkPeriodShorterThanGenPulseTrainPeriod2 ( - 201023 ) #
# Skipping MacroDefinition: DAQmxErrorCOCannotKeepUpInHWTimedSinglePointPolled ( - 201022 ) #
# Skipping MacroDefinition: DAQmxErrorWriteRecoveryCannotKeepUpInHWTimedSinglePoint ( - 201021 ) #
# Skipping MacroDefinition: DAQmxErrorNoChangeDetectionOnSelectedLineForDevice ( - 201020 ) #
# Skipping MacroDefinition: DAQmxErrorSMIOPauseTriggersNotSupportedWithChannelExpansion ( - 201019 ) #
# Skipping MacroDefinition: DAQmxErrorClockMasterForExternalClockNotLongestPipeline ( - 201018 ) #
# Skipping MacroDefinition: DAQmxErrorUnsupportedUnicodeByteOrderMarker ( - 201017 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyInstructionsInLoopInScript ( - 201016 ) #
# Skipping MacroDefinition: DAQmxErrorPLLNotLocked ( - 201015 ) #
# Skipping MacroDefinition: DAQmxErrorIfElseBlockNotAllowedInFiniteRepeatLoopInScript ( - 201014 ) #
# Skipping MacroDefinition: DAQmxErrorIfElseBlockNotAllowedInConditionalRepeatLoopInScript ( - 201013 ) #
# Skipping MacroDefinition: DAQmxErrorClearIsLastInstructionInIfElseBlockInScript ( - 201012 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWaitDurationBeforeIfElseBlockInScript ( - 201011 ) #
# Skipping MacroDefinition: DAQmxErrorMarkerPosInvalidBeforeIfElseBlockInScript ( - 201010 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSubsetLengthBeforeIfElseBlockInScript ( - 201009 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWaveformLengthBeforeIfElseBlockInScript ( - 201008 ) #
# Skipping MacroDefinition: DAQmxErrorGenerateOrFiniteWaitInstructionExpectedBeforeIfElseBlockInScript ( - 201007 ) #
# Skipping MacroDefinition: DAQmxErrorCalPasswordNotSupported ( - 201006 ) #
# Skipping MacroDefinition: DAQmxErrorSetupCalNeededBeforeAdjustCal ( - 201005 ) #
# Skipping MacroDefinition: DAQmxErrorMultipleChansNotSupportedDuringCalSetup ( - 201004 ) #
# Skipping MacroDefinition: DAQmxErrorDevCannotBeAccessed ( - 201003 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateDoesntMatchSampClkSrc ( - 201002 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateNotSupportedWithEARDisabled ( - 201001 ) #
# Skipping MacroDefinition: DAQmxErrorLabVIEWVersionDoesntSupportDAQmxEvents ( - 201000 ) #
# Skipping MacroDefinition: DAQmxErrorCOReadyForNewValNotSupportedWithOnDemand ( - 200999 ) #
# Skipping MacroDefinition: DAQmxErrorCIHWTimedSinglePointNotSupportedForMeasType ( - 200998 ) #
# Skipping MacroDefinition: DAQmxErrorOnDemandNotSupportedWithHWTimedSinglePoint ( - 200997 ) #
# Skipping MacroDefinition: DAQmxErrorHWTimedSinglePointAndDataXferNotProgIO ( - 200996 ) #
# Skipping MacroDefinition: DAQmxErrorMemMapAndHWTimedSinglePoint ( - 200995 ) #
# Skipping MacroDefinition: DAQmxErrorCannotSetPropertyWhenHWTimedSinglePointTaskIsRunning ( - 200994 ) #
# Skipping MacroDefinition: DAQmxErrorCTROutSampClkPeriodShorterThanGenPulseTrainPeriod ( - 200993 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyEventsGenerated ( - 200992 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioCppRemoveEventsBeforeStop ( - 200991 ) #
# Skipping MacroDefinition: DAQmxErrorCAPICannotRegisterSyncEventsFromMultipleThreads ( - 200990 ) #
# Skipping MacroDefinition: DAQmxErrorReadWaitNextSampClkWaitMismatchTwo ( - 200989 ) #
# Skipping MacroDefinition: DAQmxErrorReadWaitNextSampClkWaitMismatchOne ( - 200988 ) #
# Skipping MacroDefinition: DAQmxErrorDAQmxSignalEventTypeNotSupportedByChanTypesOrDevicesInTask ( - 200987 ) #
# Skipping MacroDefinition: DAQmxErrorCannotUnregisterDAQmxSoftwareEventWhileTaskIsRunning ( - 200986 ) #
# Skipping MacroDefinition: DAQmxErrorAutoStartWriteNotAllowedEventRegistered ( - 200985 ) #
# Skipping MacroDefinition: DAQmxErrorAutoStartReadNotAllowedEventRegistered ( - 200984 ) #
# Skipping MacroDefinition: DAQmxErrorCannotGetPropertyWhenTaskNotReservedCommittedOrRunning ( - 200983 ) #
# Skipping MacroDefinition: DAQmxErrorSignalEventsNotSupportedByDevice ( - 200982 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSamplesAcqIntoBufferEventNotSupportedByDevice ( - 200981 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSampsTransferredFromBufferEventNotSupportedByDevice ( - 200980 ) #
# Skipping MacroDefinition: DAQmxErrorCAPISyncEventsTaskStateChangeNotAllowedFromDifferentThread ( - 200979 ) #
# Skipping MacroDefinition: DAQmxErrorDAQmxSWEventsWithDifferentCallMechanisms ( - 200978 ) #
# Skipping MacroDefinition: DAQmxErrorCantSaveChanWithPolyCalScaleAndAllowInteractiveEdit ( - 200977 ) #
# Skipping MacroDefinition: DAQmxErrorChanDoesNotSupportCJC ( - 200976 ) #
# Skipping MacroDefinition: DAQmxErrorCOReadyForNewValNotSupportedWithHWTimedSinglePoint ( - 200975 ) #
# Skipping MacroDefinition: DAQmxErrorDACAllowConnToGndNotSupportedByDevWhenRefSrcExt ( - 200974 ) #
# Skipping MacroDefinition: DAQmxErrorCantGetPropertyTaskNotRunning ( - 200973 ) #
# Skipping MacroDefinition: DAQmxErrorCantSetPropertyTaskNotRunning ( - 200972 ) #
# Skipping MacroDefinition: DAQmxErrorCantSetPropertyTaskNotRunningCommitted ( - 200971 ) #
# Skipping MacroDefinition: DAQmxErrorAIEveryNSampsEventIntervalNotMultipleOf2 ( - 200970 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTEDSPhysChanNotAI ( - 200969 ) #
# Skipping MacroDefinition: DAQmxErrorCAPICannotPerformTaskOperationInAsyncCallback ( - 200968 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSampsTransferredFromBufferEventAlreadyRegistered ( - 200967 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSampsAcqIntoBufferEventAlreadyRegistered ( - 200966 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSampsTransferredFromBufferNotForInput ( - 200965 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSampsAcqIntoBufferNotForOutput ( - 200964 ) #
# Skipping MacroDefinition: DAQmxErrorAOSampTimingTypeDifferentIn2Tasks ( - 200963 ) #
# Skipping MacroDefinition: DAQmxErrorCouldNotDownloadFirmwareHWDamaged ( - 200962 ) #
# Skipping MacroDefinition: DAQmxErrorCouldNotDownloadFirmwareFileMissingOrDamaged ( - 200961 ) #
# Skipping MacroDefinition: DAQmxErrorCannotRegisterDAQmxSoftwareEventWhileTaskIsRunning ( - 200960 ) #
# Skipping MacroDefinition: DAQmxErrorDifferentRawDataCompression ( - 200959 ) #
# Skipping MacroDefinition: DAQmxErrorConfiguredTEDSInterfaceDevNotDetected ( - 200958 ) #
# Skipping MacroDefinition: DAQmxErrorCompressedSampSizeExceedsResolution ( - 200957 ) #
# Skipping MacroDefinition: DAQmxErrorChanDoesNotSupportCompression ( - 200956 ) #
# Skipping MacroDefinition: DAQmxErrorDifferentRawDataFormats ( - 200955 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkOutputTermIncludesStartTrigSrc ( - 200954 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigSrcEqualToSampClkSrc ( - 200953 ) #
# Skipping MacroDefinition: DAQmxErrorEventOutputTermIncludesTrigSrc ( - 200952 ) #
# Skipping MacroDefinition: DAQmxErrorCOMultipleWritesBetweenSampClks ( - 200951 ) #
# Skipping MacroDefinition: DAQmxErrorDoneEventAlreadyRegistered ( - 200950 ) #
# Skipping MacroDefinition: DAQmxErrorSignalEventAlreadyRegistered ( - 200949 ) #
# Skipping MacroDefinition: DAQmxErrorCannotHaveTimedLoopAndDAQmxSignalEventsInSameTask ( - 200948 ) #
# Skipping MacroDefinition: DAQmxErrorNeedLabVIEW711PatchToUseDAQmxEvents ( - 200947 ) #
# Skipping MacroDefinition: DAQmxErrorStartFailedDueToWriteFailure ( - 200946 ) #
# Skipping MacroDefinition: DAQmxErrorDataXferCustomThresholdNotDMAXferMethodSpecifiedForDev ( - 200945 ) #
# Skipping MacroDefinition: DAQmxErrorDataXferRequestConditionNotSpecifiedForCustomThreshold ( - 200944 ) #
# Skipping MacroDefinition: DAQmxErrorDataXferCustomThresholdNotSpecified ( - 200943 ) #
# Skipping MacroDefinition: DAQmxErrorCAPISyncCallbackNotSupportedOnThisPlatform ( - 200942 ) #
# Skipping MacroDefinition: DAQmxErrorCalChanReversePolyCoefNotSpecd ( - 200941 ) #
# Skipping MacroDefinition: DAQmxErrorCalChanForwardPolyCoefNotSpecd ( - 200940 ) #
# Skipping MacroDefinition: DAQmxErrorChanCalRepeatedNumberInPreScaledVals ( - 200939 ) #
# Skipping MacroDefinition: DAQmxErrorChanCalTableNumScaledNotEqualNumPrescaledVals ( - 200938 ) #
# Skipping MacroDefinition: DAQmxErrorChanCalTableScaledValsNotSpecd ( - 200937 ) #
# Skipping MacroDefinition: DAQmxErrorChanCalTablePreScaledValsNotSpecd ( - 200936 ) #
# Skipping MacroDefinition: DAQmxErrorChanCalScaleTypeNotSet ( - 200935 ) #
# Skipping MacroDefinition: DAQmxErrorChanCalExpired ( - 200934 ) #
# Skipping MacroDefinition: DAQmxErrorChanCalExpirationDateNotSet ( - 200933 ) #
# Skipping MacroDefinition: DAQmxError3OutputPortCombinationGivenSampTimingType653x ( - 200932 ) #
# Skipping MacroDefinition: DAQmxError3InputPortCombinationGivenSampTimingType653x ( - 200931 ) #
# Skipping MacroDefinition: DAQmxError2OutputPortCombinationGivenSampTimingType653x ( - 200930 ) #
# Skipping MacroDefinition: DAQmxError2InputPortCombinationGivenSampTimingType653x ( - 200929 ) #
# Skipping MacroDefinition: DAQmxErrorPatternMatcherMayBeUsedByOneTrigOnly ( - 200928 ) #
# Skipping MacroDefinition: DAQmxErrorNoChansSpecdForPatternSource ( - 200927 ) #
# Skipping MacroDefinition: DAQmxErrorChangeDetectionChanNotInTask ( - 200926 ) #
# Skipping MacroDefinition: DAQmxErrorChangeDetectionChanNotTristated ( - 200925 ) #
# Skipping MacroDefinition: DAQmxErrorWaitModeValueNotSupportedNonBuffered ( - 200924 ) #
# Skipping MacroDefinition: DAQmxErrorWaitModePropertyNotSupportedNonBuffered ( - 200923 ) #
# Skipping MacroDefinition: DAQmxErrorCantSavePerLineConfigDigChanSoInteractiveEditsAllowed ( - 200922 ) #
# Skipping MacroDefinition: DAQmxErrorCantSaveNonPortMultiLineDigChanSoInteractiveEditsAllowed ( - 200921 ) #
# Skipping MacroDefinition: DAQmxErrorBufferSizeNotMultipleOfEveryNSampsEventIntervalNoIrqOnDev ( - 200920 ) #
# Skipping MacroDefinition: DAQmxErrorGlobalTaskNameAlreadyChanName ( - 200919 ) #
# Skipping MacroDefinition: DAQmxErrorGlobalChanNameAlreadyTaskName ( - 200918 ) #
# Skipping MacroDefinition: DAQmxErrorAOEveryNSampsEventIntervalNotMultipleOf2 ( - 200917 ) #
# Skipping MacroDefinition: DAQmxErrorSampleTimebaseDivisorNotSupportedGivenTimingType ( - 200916 ) #
# Skipping MacroDefinition: DAQmxErrorHandshakeEventOutputTermNotSupportedGivenTimingType ( - 200915 ) #
# Skipping MacroDefinition: DAQmxErrorChangeDetectionOutputTermNotSupportedGivenTimingType ( - 200914 ) #
# Skipping MacroDefinition: DAQmxErrorReadyForTransferOutputTermNotSupportedGivenTimingType ( - 200913 ) #
# Skipping MacroDefinition: DAQmxErrorRefTrigOutputTermNotSupportedGivenTimingType ( - 200912 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigOutputTermNotSupportedGivenTimingType ( - 200911 ) #
# Skipping MacroDefinition: DAQmxErrorSampClockOutputTermNotSupportedGivenTimingType ( - 200910 ) #
# Skipping MacroDefinition: DAQmxError20MhzTimebaseNotSupportedGivenTimingType ( - 200909 ) #
# Skipping MacroDefinition: DAQmxErrorSampClockSourceNotSupportedGivenTimingType ( - 200908 ) #
# Skipping MacroDefinition: DAQmxErrorRefTrigTypeNotSupportedGivenTimingType ( - 200907 ) #
# Skipping MacroDefinition: DAQmxErrorPauseTrigTypeNotSupportedGivenTimingType ( - 200906 ) #
# Skipping MacroDefinition: DAQmxErrorHandshakeTrigTypeNotSupportedGivenTimingType ( - 200905 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigTypeNotSupportedGivenTimingType ( - 200904 ) #
# Skipping MacroDefinition: DAQmxErrorRefClkSrcNotSupported ( - 200903 ) #
# Skipping MacroDefinition: DAQmxErrorDataVoltageLowAndHighIncompatible ( - 200902 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCharInDigPatternString ( - 200901 ) #
# Skipping MacroDefinition: DAQmxErrorCantUsePort3AloneGivenSampTimingTypeOn653x ( - 200900 ) #
# Skipping MacroDefinition: DAQmxErrorCantUsePort1AloneGivenSampTimingTypeOn653x ( - 200899 ) #
# Skipping MacroDefinition: DAQmxErrorPartialUseOfPhysicalLinesWithinPortNotSupported653x ( - 200898 ) #
# Skipping MacroDefinition: DAQmxErrorPhysicalChanNotSupportedGivenSampTimingType653x ( - 200897 ) #
# Skipping MacroDefinition: DAQmxErrorCanExportOnlyDigEdgeTrigs ( - 200896 ) #
# Skipping MacroDefinition: DAQmxErrorRefTrigDigPatternSizeDoesNotMatchSourceSize ( - 200895 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigDigPatternSizeDoesNotMatchSourceSize ( - 200894 ) #
# Skipping MacroDefinition: DAQmxErrorChangeDetectionRisingAndFallingEdgeChanDontMatch ( - 200893 ) #
# Skipping MacroDefinition: DAQmxErrorPhysicalChansForChangeDetectionAndPatternMatch653x ( - 200892 ) #
# Skipping MacroDefinition: DAQmxErrorCanExportOnlyOnboardSampClk ( - 200891 ) #
# Skipping MacroDefinition: DAQmxErrorInternalSampClkNotRisingEdge ( - 200890 ) #
# Skipping MacroDefinition: DAQmxErrorRefTrigDigPatternChanNotInTask ( - 200889 ) #
# Skipping MacroDefinition: DAQmxErrorRefTrigDigPatternChanNotTristated ( - 200888 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigDigPatternChanNotInTask ( - 200887 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigDigPatternChanNotTristated ( - 200886 ) #
# Skipping MacroDefinition: DAQmxErrorPXIStarAndClock10Sync ( - 200885 ) #
# Skipping MacroDefinition: DAQmxErrorGlobalChanCannotBeSavedSoInteractiveEditsAllowed ( - 200884 ) #
# Skipping MacroDefinition: DAQmxErrorTaskCannotBeSavedSoInteractiveEditsAllowed ( - 200883 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidGlobalChan ( - 200882 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSampsEventAlreadyRegistered ( - 200881 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSampsEventIntervalZeroNotSupported ( - 200880 ) #
# Skipping MacroDefinition: DAQmxErrorChanSizeTooBigForU16PortWrite ( - 200879 ) #
# Skipping MacroDefinition: DAQmxErrorChanSizeTooBigForU16PortRead ( - 200878 ) #
# Skipping MacroDefinition: DAQmxErrorBufferSizeNotMultipleOfEveryNSampsEventIntervalWhenDMA ( - 200877 ) #
# Skipping MacroDefinition: DAQmxErrorWriteWhenTaskNotRunningCOTicks ( - 200876 ) #
# Skipping MacroDefinition: DAQmxErrorWriteWhenTaskNotRunningCOFreq ( - 200875 ) #
# Skipping MacroDefinition: DAQmxErrorWriteWhenTaskNotRunningCOTime ( - 200874 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotSupportedDACRangeTooSmall ( - 200873 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotSupportedGivenDACRange ( - 200872 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotSupportedGivenDACRangeAndOffsetVal ( - 200871 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotSupportedDACOffsetValInappropriate ( - 200870 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotSupportedGivenDACOffsetVal ( - 200869 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotSupportedDACRefValTooSmall ( - 200868 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotSupportedGivenDACRefVal ( - 200867 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotSupportedGivenDACRefAndOffsetVal ( - 200866 ) #
# Skipping MacroDefinition: DAQmxErrorWhenAcqCompAndNumSampsPerChanExceedsOnBrdBufSize ( - 200865 ) #
# Skipping MacroDefinition: DAQmxErrorWhenAcqCompAndNoRefTrig ( - 200864 ) #
# Skipping MacroDefinition: DAQmxErrorWaitForNextSampClkNotSupported ( - 200863 ) #
# Skipping MacroDefinition: DAQmxErrorDevInUnidentifiedPXIChassis ( - 200862 ) #
# Skipping MacroDefinition: DAQmxErrorMaxSoundPressureMicSensitivitRelatedAIPropertiesNotSupportedByDev ( - 200861 ) #
# Skipping MacroDefinition: DAQmxErrorMaxSoundPressureAndMicSensitivityNotSupportedByDev ( - 200860 ) #
# Skipping MacroDefinition: DAQmxErrorAOBufferSizeZeroForSampClkTimingType ( - 200859 ) #
# Skipping MacroDefinition: DAQmxErrorAOCallWriteBeforeStartForSampClkTimingType ( - 200858 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalLowPassCutoffFreq ( - 200857 ) #
# Skipping MacroDefinition: DAQmxErrorSimulationCannotBeDisabledForDevCreatedAsSimulatedDev ( - 200856 ) #
# Skipping MacroDefinition: DAQmxErrorCannotAddNewDevsAfterTaskConfiguration ( - 200855 ) #
# Skipping MacroDefinition: DAQmxErrorDifftSyncPulseSrcAndSampClkTimebaseSrcDevMultiDevTask ( - 200854 ) #
# Skipping MacroDefinition: DAQmxErrorTermWithoutDevInMultiDevTask ( - 200853 ) #
# Skipping MacroDefinition: DAQmxErrorSyncNoDevSampClkTimebaseOrSyncPulseInPXISlot2 ( - 200852 ) #
# Skipping MacroDefinition: DAQmxErrorPhysicalChanNotOnThisConnector ( - 200851 ) #
# Skipping MacroDefinition: DAQmxErrorNumSampsToWaitNotGreaterThanZeroInScript ( - 200850 ) #
# Skipping MacroDefinition: DAQmxErrorNumSampsToWaitNotMultipleOfAlignmentQuantumInScript ( - 200849 ) #
# Skipping MacroDefinition: DAQmxErrorEveryNSamplesEventNotSupportedForNonBufferedTasks ( - 200848 ) #
# Skipping MacroDefinition: DAQmxErrorBufferedAndDataXferPIO ( - 200847 ) #
# Skipping MacroDefinition: DAQmxErrorCannotWriteWhenAutoStartFalseAndTaskNotRunning ( - 200846 ) #
# Skipping MacroDefinition: DAQmxErrorNonBufferedAndDataXferInterrupts ( - 200845 ) #
# Skipping MacroDefinition: DAQmxErrorWriteFailedMultipleCtrsWithFREQOUT ( - 200844 ) #
# Skipping MacroDefinition: DAQmxErrorReadNotCompleteBefore3SampClkEdges ( - 200843 ) #
# Skipping MacroDefinition: DAQmxErrorCtrHWTimedSinglePointAndDataXferNotProgIO ( - 200842 ) #
# Skipping MacroDefinition: DAQmxErrorPrescalerNot1ForInputTerminal ( - 200841 ) #
# Skipping MacroDefinition: DAQmxErrorPrescalerNot1ForTimebaseSrc ( - 200840 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkTimingTypeWhenTristateIsFalse ( - 200839 ) #
# Skipping MacroDefinition: DAQmxErrorOutputBufferSizeNotMultOfXferSize ( - 200838 ) #
# Skipping MacroDefinition: DAQmxErrorSampPerChanNotMultOfXferSize ( - 200837 ) #
# Skipping MacroDefinition: DAQmxErrorWriteToTEDSFailed ( - 200836 ) #
# Skipping MacroDefinition: DAQmxErrorSCXIDevNotUsablePowerTurnedOff ( - 200835 ) #
# Skipping MacroDefinition: DAQmxErrorCannotReadWhenAutoStartFalseBufSizeZeroAndTaskNotRunning ( - 200834 ) #
# Skipping MacroDefinition: DAQmxErrorCannotReadWhenAutoStartFalseHWTimedSinglePtAndTaskNotRunning ( - 200833 ) #
# Skipping MacroDefinition: DAQmxErrorCannotReadWhenAutoStartFalseOnDemandAndTaskNotRunning ( - 200832 ) #
# Skipping MacroDefinition: DAQmxErrorSimultaneousAOWhenNotOnDemandTiming ( - 200831 ) #
# Skipping MacroDefinition: DAQmxErrorMemMapAndSimultaneousAO ( - 200830 ) #
# Skipping MacroDefinition: DAQmxErrorWriteFailedMultipleCOOutputTypes ( - 200829 ) #
# Skipping MacroDefinition: DAQmxErrorWriteToTEDSNotSupportedOnRT ( - 200828 ) #
# Skipping MacroDefinition: DAQmxErrorVirtualTEDSDataFileError ( - 200827 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSSensorDataError ( - 200826 ) #
# Skipping MacroDefinition: DAQmxErrorDataSizeMoreThanSizeOfEEPROMOnTEDS ( - 200825 ) #
# Skipping MacroDefinition: DAQmxErrorPROMOnTEDSContainsBasicTEDSData ( - 200824 ) #
# Skipping MacroDefinition: DAQmxErrorPROMOnTEDSAlreadyWritten ( - 200823 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSDoesNotContainPROM ( - 200822 ) #
# Skipping MacroDefinition: DAQmxErrorHWTimedSinglePointNotSupportedAI ( - 200821 ) #
# Skipping MacroDefinition: DAQmxErrorHWTimedSinglePointOddNumChansInAITask ( - 200820 ) #
# Skipping MacroDefinition: DAQmxErrorCantUseOnlyOnBoardMemWithProgrammedIO ( - 200819 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchDevShutDownDueToHighTemp ( - 200818 ) #
# Skipping MacroDefinition: DAQmxErrorExcitationNotSupportedWhenTermCfgDiff ( - 200817 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSMinElecValGEMaxElecVal ( - 200816 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSMinPhysValGEMaxPhysVal ( - 200815 ) #
# Skipping MacroDefinition: DAQmxErrorCIOnboardClockNotSupportedAsInputTerm ( - 200814 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSampModeForPositionMeas ( - 200813 ) #
# Skipping MacroDefinition: DAQmxErrorTrigWhenAOHWTimedSinglePtSampMode ( - 200812 ) #
# Skipping MacroDefinition: DAQmxErrorDAQmxCantUseStringDueToUnknownChar ( - 200811 ) #
# Skipping MacroDefinition: DAQmxErrorDAQmxCantRetrieveStringDueToUnknownChar ( - 200810 ) #
# Skipping MacroDefinition: DAQmxErrorClearTEDSNotSupportedOnRT ( - 200809 ) #
# Skipping MacroDefinition: DAQmxErrorCfgTEDSNotSupportedOnRT ( - 200808 ) #
# Skipping MacroDefinition: DAQmxErrorProgFilterClkCfgdToDifferentMinPulseWidthBySameTask1PerDev ( - 200807 ) #
# Skipping MacroDefinition: DAQmxErrorProgFilterClkCfgdToDifferentMinPulseWidthByAnotherTask1PerDev ( - 200806 ) #
# Skipping MacroDefinition: DAQmxErrorNoLastExtCalDateTimeLastExtCalNotDAQmx ( - 200804 ) #
# Skipping MacroDefinition: DAQmxErrorCannotWriteNotStartedAutoStartFalseNotOnDemandHWTimedSglPt ( - 200803 ) #
# Skipping MacroDefinition: DAQmxErrorCannotWriteNotStartedAutoStartFalseNotOnDemandBufSizeZero ( - 200802 ) #
# Skipping MacroDefinition: DAQmxErrorCOInvalidTimingSrcDueToSignal ( - 200801 ) #
# Skipping MacroDefinition: DAQmxErrorCIInvalidTimingSrcForSampClkDueToSampTimingType ( - 200800 ) #
# Skipping MacroDefinition: DAQmxErrorCIInvalidTimingSrcForEventCntDueToSampMode ( - 200799 ) #
# Skipping MacroDefinition: DAQmxErrorNoChangeDetectOnNonInputDigLineForDev ( - 200798 ) #
# Skipping MacroDefinition: DAQmxErrorEmptyStringTermNameNotSupported ( - 200797 ) #
# Skipping MacroDefinition: DAQmxErrorMemMapEnabledForHWTimedNonBufferedAO ( - 200796 ) #
# Skipping MacroDefinition: DAQmxErrorDevOnboardMemOverflowDuringHWTimedNonBufferedGen ( - 200795 ) #
# Skipping MacroDefinition: DAQmxErrorCODAQmxWriteMultipleChans ( - 200794 ) #
# Skipping MacroDefinition: DAQmxErrorCantMaintainExistingValueAOSync ( - 200793 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioMultiplePhysChansNotSupported ( - 200792 ) #
# Skipping MacroDefinition: DAQmxErrorCantConfigureTEDSForChan ( - 200791 ) #
# Skipping MacroDefinition: DAQmxErrorWriteDataTypeTooSmall ( - 200790 ) #
# Skipping MacroDefinition: DAQmxErrorReadDataTypeTooSmall ( - 200789 ) #
# Skipping MacroDefinition: DAQmxErrorMeasuredBridgeOffsetTooHigh ( - 200788 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigConflictWithCOHWTimedSinglePt ( - 200787 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateExtSampClkTimebaseRateMismatch ( - 200786 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTimingSrcDueToSampTimingType ( - 200785 ) #
# Skipping MacroDefinition: DAQmxErrorVirtualTEDSFileNotFound ( - 200784 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioNoForwardPolyScaleCoeffs ( - 200783 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioNoReversePolyScaleCoeffs ( - 200782 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioNoPolyScaleCoeffsUseCalc ( - 200781 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioNoForwardPolyScaleCoeffsUseCalc ( - 200780 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioNoReversePolyScaleCoeffsUseCalc ( - 200779 ) #
# Skipping MacroDefinition: DAQmxErrorCOSampModeSampTimingTypeSampClkConflict ( - 200778 ) #
# Skipping MacroDefinition: DAQmxErrorDevCannotProduceMinPulseWidth ( - 200777 ) #
# Skipping MacroDefinition: DAQmxErrorCannotProduceMinPulseWidthGivenPropertyValues ( - 200776 ) #
# Skipping MacroDefinition: DAQmxErrorTermCfgdToDifferentMinPulseWidthByAnotherTask ( - 200775 ) #
# Skipping MacroDefinition: DAQmxErrorTermCfgdToDifferentMinPulseWidthByAnotherProperty ( - 200774 ) #
# Skipping MacroDefinition: DAQmxErrorDigSyncNotAvailableOnTerm ( - 200773 ) #
# Skipping MacroDefinition: DAQmxErrorDigFilterNotAvailableOnTerm ( - 200772 ) #
# Skipping MacroDefinition: DAQmxErrorDigFilterEnabledMinPulseWidthNotCfg ( - 200771 ) #
# Skipping MacroDefinition: DAQmxErrorDigFilterAndSyncBothEnabled ( - 200770 ) #
# Skipping MacroDefinition: DAQmxErrorHWTimedSinglePointAOAndDataXferNotProgIO ( - 200769 ) #
# Skipping MacroDefinition: DAQmxErrorNonBufferedAOAndDataXferNotProgIO ( - 200768 ) #
# Skipping MacroDefinition: DAQmxErrorProgIODataXferForBufferedAO ( - 200767 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSLegacyTemplateIDInvalidOrUnsupported ( - 200766 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSMappingMethodInvalidOrUnsupported ( - 200765 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSLinearMappingSlopeZero ( - 200764 ) #
# Skipping MacroDefinition: DAQmxErrorAIInputBufferSizeNotMultOfXferSize ( - 200763 ) #
# Skipping MacroDefinition: DAQmxErrorNoSyncPulseExtSampClkTimebase ( - 200762 ) #
# Skipping MacroDefinition: DAQmxErrorNoSyncPulseAnotherTaskRunning ( - 200761 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotInGainRange ( - 200760 ) #
# Skipping MacroDefinition: DAQmxErrorAOMinMaxNotInDACRange ( - 200759 ) #
# Skipping MacroDefinition: DAQmxErrorDevOnlySupportsSampClkTimingAO ( - 200758 ) #
# Skipping MacroDefinition: DAQmxErrorDevOnlySupportsSampClkTimingAI ( - 200757 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSIncompatibleSensorAndMeasType ( - 200756 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSMultipleCalTemplatesNotSupported ( - 200755 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSTemplateParametersNotSupported ( - 200754 ) #
# Skipping MacroDefinition: DAQmxErrorParsingTEDSData ( - 200753 ) #
# Skipping MacroDefinition: DAQmxErrorMultipleActivePhysChansNotSupported ( - 200752 ) #
# Skipping MacroDefinition: DAQmxErrorNoChansSpecdForChangeDetect ( - 200751 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalVoltageForGivenGain ( - 200750 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalGain ( - 200749 ) #
# Skipping MacroDefinition: DAQmxErrorMultipleWritesBetweenSampClks ( - 200748 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAcqTypeForFREQOUT ( - 200747 ) #
# Skipping MacroDefinition: DAQmxErrorSuitableTimebaseNotFoundTimeCombo2 ( - 200746 ) #
# Skipping MacroDefinition: DAQmxErrorSuitableTimebaseNotFoundFrequencyCombo2 ( - 200745 ) #
# Skipping MacroDefinition: DAQmxErrorRefClkRateRefClkSrcMismatch ( - 200744 ) #
# Skipping MacroDefinition: DAQmxErrorNoTEDSTerminalBlock ( - 200743 ) #
# Skipping MacroDefinition: DAQmxErrorCorruptedTEDSMemory ( - 200742 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSNotSupported ( - 200741 ) #
# Skipping MacroDefinition: DAQmxErrorTimingSrcTaskStartedBeforeTimedLoop ( - 200740 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyNotSupportedForTimingSrc ( - 200739 ) #
# Skipping MacroDefinition: DAQmxErrorTimingSrcDoesNotExist ( - 200738 ) #
# Skipping MacroDefinition: DAQmxErrorInputBufferSizeNotEqualSampsPerChanForFiniteSampMode ( - 200737 ) #
# Skipping MacroDefinition: DAQmxErrorFREQOUTCannotProduceDesiredFrequency2 ( - 200736 ) #
# Skipping MacroDefinition: DAQmxErrorExtRefClkRateNotSpecified ( - 200735 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceDoesNotSupportDMADataXferForNonBufferedAcq ( - 200734 ) #
# Skipping MacroDefinition: DAQmxErrorDigFilterMinPulseWidthSetWhenTristateIsFalse ( - 200733 ) #
# Skipping MacroDefinition: DAQmxErrorDigFilterEnableSetWhenTristateIsFalse ( - 200732 ) #
# Skipping MacroDefinition: DAQmxErrorNoHWTimingWithOnDemand ( - 200731 ) #
# Skipping MacroDefinition: DAQmxErrorCannotDetectChangesWhenTristateIsFalse ( - 200730 ) #
# Skipping MacroDefinition: DAQmxErrorCannotHandshakeWhenTristateIsFalse ( - 200729 ) #
# Skipping MacroDefinition: DAQmxErrorLinesUsedForStaticInputNotForHandshakingControl ( - 200728 ) #
# Skipping MacroDefinition: DAQmxErrorLinesUsedForHandshakingControlNotForStaticInput ( - 200727 ) #
# Skipping MacroDefinition: DAQmxErrorLinesUsedForStaticInputNotForHandshakingInput ( - 200726 ) #
# Skipping MacroDefinition: DAQmxErrorLinesUsedForHandshakingInputNotForStaticInput ( - 200725 ) #
# Skipping MacroDefinition: DAQmxErrorDifferentDITristateValsForChansInTask ( - 200724 ) #
# Skipping MacroDefinition: DAQmxErrorTimebaseCalFreqVarianceTooLarge ( - 200723 ) #
# Skipping MacroDefinition: DAQmxErrorTimebaseCalFailedToConverge ( - 200722 ) #
# Skipping MacroDefinition: DAQmxErrorInadequateResolutionForTimebaseCal ( - 200721 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAOGainCalConst ( - 200720 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAOOffsetCalConst ( - 200719 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAIGainCalConst ( - 200718 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAIOffsetCalConst ( - 200717 ) #
# Skipping MacroDefinition: DAQmxErrorDigOutputOverrun ( - 200716 ) #
# Skipping MacroDefinition: DAQmxErrorDigInputOverrun ( - 200715 ) #
# Skipping MacroDefinition: DAQmxErrorAcqStoppedDriverCantXferDataFastEnough ( - 200714 ) #
# Skipping MacroDefinition: DAQmxErrorChansCantAppearInSameTask ( - 200713 ) #
# Skipping MacroDefinition: DAQmxErrorInputCfgFailedBecauseWatchdogExpired ( - 200712 ) #
# Skipping MacroDefinition: DAQmxErrorAnalogTrigChanNotExternal ( - 200711 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyChansForInternalAIInputSrc ( - 200710 ) #
# Skipping MacroDefinition: DAQmxErrorTEDSSensorNotDetected ( - 200709 ) #
# Skipping MacroDefinition: DAQmxErrorPrptyGetSpecdActiveItemFailedDueToDifftValues ( - 200708 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIClk10InNotInSlot2 ( - 200706 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarXNotInSlot2 ( - 200705 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarXNotInSlot2 ( - 200704 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarInSlot16AndAbove ( - 200703 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarInSlot16AndAbove ( - 200702 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarInSlot2 ( - 200701 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarInSlot2 ( - 200700 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIChassisNotIdentified ( - 200699 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIChassisNotIdentified ( - 200698 ) #
# Skipping MacroDefinition: DAQmxErrorFailedToAcquireCalData ( - 200697 ) #
# Skipping MacroDefinition: DAQmxErrorBridgeOffsetNullingCalNotSupported ( - 200696 ) #
# Skipping MacroDefinition: DAQmxErrorAIMaxNotSpecified ( - 200695 ) #
# Skipping MacroDefinition: DAQmxErrorAIMinNotSpecified ( - 200694 ) #
# Skipping MacroDefinition: DAQmxErrorOddTotalBufferSizeToWrite ( - 200693 ) #
# Skipping MacroDefinition: DAQmxErrorOddTotalNumSampsToWrite ( - 200692 ) #
# Skipping MacroDefinition: DAQmxErrorBufferWithWaitMode ( - 200691 ) #
# Skipping MacroDefinition: DAQmxErrorBufferWithHWTimedSinglePointSampMode ( - 200690 ) #
# Skipping MacroDefinition: DAQmxErrorCOWritePulseLowTicksNotSupported ( - 200689 ) #
# Skipping MacroDefinition: DAQmxErrorCOWritePulseHighTicksNotSupported ( - 200688 ) #
# Skipping MacroDefinition: DAQmxErrorCOWritePulseLowTimeOutOfRange ( - 200687 ) #
# Skipping MacroDefinition: DAQmxErrorCOWritePulseHighTimeOutOfRange ( - 200686 ) #
# Skipping MacroDefinition: DAQmxErrorCOWriteFreqOutOfRange ( - 200685 ) #
# Skipping MacroDefinition: DAQmxErrorCOWriteDutyCycleOutOfRange ( - 200684 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidInstallation ( - 200683 ) #
# Skipping MacroDefinition: DAQmxErrorRefTrigMasterSessionUnavailable ( - 200682 ) #
# Skipping MacroDefinition: DAQmxErrorRouteFailedBecauseWatchdogExpired ( - 200681 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceShutDownDueToHighTemp ( - 200680 ) #
# Skipping MacroDefinition: DAQmxErrorNoMemMapWhenHWTimedSinglePoint ( - 200679 ) #
# Skipping MacroDefinition: DAQmxErrorWriteFailedBecauseWatchdogExpired ( - 200678 ) #
# Skipping MacroDefinition: DAQmxErrorDifftInternalAIInputSrcs ( - 200677 ) #
# Skipping MacroDefinition: DAQmxErrorDifftAIInputSrcInOneChanGroup ( - 200676 ) #
# Skipping MacroDefinition: DAQmxErrorInternalAIInputSrcInMultChanGroups ( - 200675 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchOpFailedDueToPrevError ( - 200674 ) #
# Skipping MacroDefinition: DAQmxErrorWroteMultiSampsUsingSingleSampWrite ( - 200673 ) #
# Skipping MacroDefinition: DAQmxErrorMismatchedInputArraySizes ( - 200672 ) #
# Skipping MacroDefinition: DAQmxErrorCantExceedRelayDriveLimit ( - 200671 ) #
# Skipping MacroDefinition: DAQmxErrorDACRngLowNotEqualToMinusRefVal ( - 200670 ) #
# Skipping MacroDefinition: DAQmxErrorCantAllowConnectDACToGnd ( - 200669 ) #
# Skipping MacroDefinition: DAQmxErrorWatchdogTimeoutOutOfRangeAndNotSpecialVal ( - 200668 ) #
# Skipping MacroDefinition: DAQmxErrorNoWatchdogOutputOnPortReservedForInput ( - 200667 ) #
# Skipping MacroDefinition: DAQmxErrorNoInputOnPortCfgdForWatchdogOutput ( - 200666 ) #
# Skipping MacroDefinition: DAQmxErrorWatchdogExpirationStateNotEqualForLinesInPort ( - 200665 ) #
# Skipping MacroDefinition: DAQmxErrorCannotPerformOpWhenTaskNotReserved ( - 200664 ) #
# Skipping MacroDefinition: DAQmxErrorPowerupStateNotSupported ( - 200663 ) #
# Skipping MacroDefinition: DAQmxErrorWatchdogTimerNotSupported ( - 200662 ) #
# Skipping MacroDefinition: DAQmxErrorOpNotSupportedWhenRefClkSrcNone ( - 200661 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateUnavailable ( - 200660 ) #
# Skipping MacroDefinition: DAQmxErrorPrptyGetSpecdSingleActiveChanFailedDueToDifftVals ( - 200659 ) #
# Skipping MacroDefinition: DAQmxErrorPrptyGetImpliedActiveChanFailedDueToDifftVals ( - 200658 ) #
# Skipping MacroDefinition: DAQmxErrorPrptyGetSpecdActiveChanFailedDueToDifftVals ( - 200657 ) #
# Skipping MacroDefinition: DAQmxErrorNoRegenWhenUsingBrdMem ( - 200656 ) #
# Skipping MacroDefinition: DAQmxErrorNonbufferedReadMoreThanSampsPerChan ( - 200655 ) #
# Skipping MacroDefinition: DAQmxErrorWatchdogExpirationTristateNotSpecdForEntirePort ( - 200654 ) #
# Skipping MacroDefinition: DAQmxErrorPowerupTristateNotSpecdForEntirePort ( - 200653 ) #
# Skipping MacroDefinition: DAQmxErrorPowerupStateNotSpecdForEntirePort ( - 200652 ) #
# Skipping MacroDefinition: DAQmxErrorCantSetWatchdogExpirationOnDigInChan ( - 200651 ) #
# Skipping MacroDefinition: DAQmxErrorCantSetPowerupStateOnDigInChan ( - 200650 ) #
# Skipping MacroDefinition: DAQmxErrorPhysChanNotInTask ( - 200649 ) #
# Skipping MacroDefinition: DAQmxErrorPhysChanDevNotInTask ( - 200648 ) #
# Skipping MacroDefinition: DAQmxErrorDigInputNotSupported ( - 200647 ) #
# Skipping MacroDefinition: DAQmxErrorDigFilterIntervalNotEqualForLines ( - 200646 ) #
# Skipping MacroDefinition: DAQmxErrorDigFilterIntervalAlreadyCfgd ( - 200645 ) #
# Skipping MacroDefinition: DAQmxErrorCantResetExpiredWatchdog ( - 200644 ) #
# Skipping MacroDefinition: DAQmxErrorActiveChanTooManyLinesSpecdWhenGettingPrpty ( - 200643 ) #
# Skipping MacroDefinition: DAQmxErrorActiveChanNotSpecdWhenGetting1LinePrpty ( - 200642 ) #
# Skipping MacroDefinition: DAQmxErrorDigPrptyCannotBeSetPerLine ( - 200641 ) #
# Skipping MacroDefinition: DAQmxErrorSendAdvCmpltAfterWaitForTrigInScanlist ( - 200640 ) #
# Skipping MacroDefinition: DAQmxErrorDisconnectionRequiredInScanlist ( - 200639 ) #
# Skipping MacroDefinition: DAQmxErrorTwoWaitForTrigsAfterConnectionInScanlist ( - 200638 ) #
# Skipping MacroDefinition: DAQmxErrorActionSeparatorRequiredAfterBreakingConnectionInScanlist ( - 200637 ) #
# Skipping MacroDefinition: DAQmxErrorConnectionInScanlistMustWaitForTrig ( - 200636 ) #
# Skipping MacroDefinition: DAQmxErrorActionNotSupportedTaskNotWatchdog ( - 200635 ) #
# Skipping MacroDefinition: DAQmxErrorWfmNameSameAsScriptName ( - 200634 ) #
# Skipping MacroDefinition: DAQmxErrorScriptNameSameAsWfmName ( - 200633 ) #
# Skipping MacroDefinition: DAQmxErrorDSFStopClock ( - 200632 ) #
# Skipping MacroDefinition: DAQmxErrorDSFReadyForStartClock ( - 200631 ) #
# Skipping MacroDefinition: DAQmxErrorWriteOffsetNotMultOfIncr ( - 200630 ) #
# Skipping MacroDefinition: DAQmxErrorDifferentPrptyValsNotSupportedOnDev ( - 200629 ) #
# Skipping MacroDefinition: DAQmxErrorRefAndPauseTrigConfigured ( - 200628 ) #
# Skipping MacroDefinition: DAQmxErrorFailedToEnableHighSpeedInputClock ( - 200627 ) #
# Skipping MacroDefinition: DAQmxErrorEmptyPhysChanInPowerUpStatesArray ( - 200626 ) #
# Skipping MacroDefinition: DAQmxErrorActivePhysChanTooManyLinesSpecdWhenGettingPrpty ( - 200625 ) #
# Skipping MacroDefinition: DAQmxErrorActivePhysChanNotSpecdWhenGetting1LinePrpty ( - 200624 ) #
# Skipping MacroDefinition: DAQmxErrorPXIDevTempCausedShutDown ( - 200623 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumSampsToWrite ( - 200622 ) #
# Skipping MacroDefinition: DAQmxErrorOutputFIFOUnderflow2 ( - 200621 ) #
# Skipping MacroDefinition: DAQmxErrorRepeatedAIPhysicalChan ( - 200620 ) #
# Skipping MacroDefinition: DAQmxErrorMultScanOpsInOneChassis ( - 200619 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAIChanOrder ( - 200618 ) #
# Skipping MacroDefinition: DAQmxErrorReversePowerProtectionActivated ( - 200617 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAsynOpHandle ( - 200616 ) #
# Skipping MacroDefinition: DAQmxErrorFailedToEnableHighSpeedOutput ( - 200615 ) #
# Skipping MacroDefinition: DAQmxErrorCannotReadPastEndOfRecord ( - 200614 ) #
# Skipping MacroDefinition: DAQmxErrorAcqStoppedToPreventInputBufferOverwriteOneDataXferMech ( - 200613 ) #
# Skipping MacroDefinition: DAQmxErrorZeroBasedChanIndexInvalid ( - 200612 ) #
# Skipping MacroDefinition: DAQmxErrorNoChansOfGivenTypeInTask ( - 200611 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkSrcInvalidForOutputValidForInput ( - 200610 ) #
# Skipping MacroDefinition: DAQmxErrorOutputBufSizeTooSmallToStartGen ( - 200609 ) #
# Skipping MacroDefinition: DAQmxErrorInputBufSizeTooSmallToStartAcq ( - 200608 ) #
# Skipping MacroDefinition: DAQmxErrorExportTwoSignalsOnSameTerminal ( - 200607 ) #
# Skipping MacroDefinition: DAQmxErrorChanIndexInvalid ( - 200606 ) #
# Skipping MacroDefinition: DAQmxErrorRangeSyntaxNumberTooBig ( - 200605 ) #
# Skipping MacroDefinition: DAQmxErrorNULLPtr ( - 200604 ) #
# Skipping MacroDefinition: DAQmxErrorScaledMinEqualMax ( - 200603 ) #
# Skipping MacroDefinition: DAQmxErrorPreScaledMinEqualMax ( - 200602 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyNotSupportedForScaleType ( - 200601 ) #
# Skipping MacroDefinition: DAQmxErrorChannelNameGenerationNumberTooBig ( - 200600 ) #
# Skipping MacroDefinition: DAQmxErrorRepeatedNumberInScaledValues ( - 200599 ) #
# Skipping MacroDefinition: DAQmxErrorRepeatedNumberInPreScaledValues ( - 200598 ) #
# Skipping MacroDefinition: DAQmxErrorLinesAlreadyReservedForOutput ( - 200597 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchOperationChansSpanMultipleDevsInList ( - 200596 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidIDInListAtBeginningOfSwitchOperation ( - 200595 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioInvalidPolyDirection ( - 200594 ) #
# Skipping MacroDefinition: DAQmxErrorMStudioPropertyGetWhileTaskNotVerified ( - 200593 ) #
# Skipping MacroDefinition: DAQmxErrorRangeWithTooManyObjects ( - 200592 ) #
# Skipping MacroDefinition: DAQmxErrorCppDotNetAPINegativeBufferSize ( - 200591 ) #
# Skipping MacroDefinition: DAQmxErrorCppCantRemoveInvalidEventHandler ( - 200590 ) #
# Skipping MacroDefinition: DAQmxErrorCppCantRemoveEventHandlerTwice ( - 200589 ) #
# Skipping MacroDefinition: DAQmxErrorCppCantRemoveOtherObjectsEventHandler ( - 200588 ) #
# Skipping MacroDefinition: DAQmxErrorDigLinesReservedOrUnavailable ( - 200587 ) #
# Skipping MacroDefinition: DAQmxErrorDSFFailedToResetStream ( - 200586 ) #
# Skipping MacroDefinition: DAQmxErrorDSFReadyForOutputNotAsserted ( - 200585 ) #
# Skipping MacroDefinition: DAQmxErrorSampToWritePerChanNotMultipleOfIncr ( - 200584 ) #
# Skipping MacroDefinition: DAQmxErrorAOPropertiesCauseVoltageBelowMin ( - 200583 ) #
# Skipping MacroDefinition: DAQmxErrorAOPropertiesCauseVoltageOverMax ( - 200582 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyNotSupportedWhenRefClkSrcNone ( - 200581 ) #
# Skipping MacroDefinition: DAQmxErrorAIMaxTooSmall ( - 200580 ) #
# Skipping MacroDefinition: DAQmxErrorAIMaxTooLarge ( - 200579 ) #
# Skipping MacroDefinition: DAQmxErrorAIMinTooSmall ( - 200578 ) #
# Skipping MacroDefinition: DAQmxErrorAIMinTooLarge ( - 200577 ) #
# Skipping MacroDefinition: DAQmxErrorBuiltInCJCSrcNotSupported ( - 200576 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyPostTrigSampsPerChan ( - 200575 ) #
# Skipping MacroDefinition: DAQmxErrorTrigLineNotFoundSingleDevRoute ( - 200574 ) #
# Skipping MacroDefinition: DAQmxErrorDifferentInternalAIInputSources ( - 200573 ) #
# Skipping MacroDefinition: DAQmxErrorDifferentAIInputSrcInOneChanGroup ( - 200572 ) #
# Skipping MacroDefinition: DAQmxErrorInternalAIInputSrcInMultipleChanGroups ( - 200571 ) #
# Skipping MacroDefinition: DAQmxErrorCAPIChanIndexInvalid ( - 200570 ) #
# Skipping MacroDefinition: DAQmxErrorCollectionDoesNotMatchChanType ( - 200569 ) #
# Skipping MacroDefinition: DAQmxErrorOutputCantStartChangedRegenerationMode ( - 200568 ) #
# Skipping MacroDefinition: DAQmxErrorOutputCantStartChangedBufferSize ( - 200567 ) #
# Skipping MacroDefinition: DAQmxErrorChanSizeTooBigForU32PortWrite ( - 200566 ) #
# Skipping MacroDefinition: DAQmxErrorChanSizeTooBigForU8PortWrite ( - 200565 ) #
# Skipping MacroDefinition: DAQmxErrorChanSizeTooBigForU32PortRead ( - 200564 ) #
# Skipping MacroDefinition: DAQmxErrorChanSizeTooBigForU8PortRead ( - 200563 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDigDataWrite ( - 200562 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAODataWrite ( - 200561 ) #
# Skipping MacroDefinition: DAQmxErrorWaitUntilDoneDoesNotIndicateDone ( - 200560 ) #
# Skipping MacroDefinition: DAQmxErrorMultiChanTypesInTask ( - 200559 ) #
# Skipping MacroDefinition: DAQmxErrorMultiDevsInTask ( - 200558 ) #
# Skipping MacroDefinition: DAQmxErrorCannotSetPropertyWhenTaskRunning ( - 200557 ) #
# Skipping MacroDefinition: DAQmxErrorCannotGetPropertyWhenTaskNotCommittedOrRunning ( - 200556 ) #
# Skipping MacroDefinition: DAQmxErrorLeadingUnderscoreInString ( - 200555 ) #
# Skipping MacroDefinition: DAQmxErrorTrailingSpaceInString ( - 200554 ) #
# Skipping MacroDefinition: DAQmxErrorLeadingSpaceInString ( - 200553 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCharInString ( - 200552 ) #
# Skipping MacroDefinition: DAQmxErrorDLLBecameUnlocked ( - 200551 ) #
# Skipping MacroDefinition: DAQmxErrorDLLLock ( - 200550 ) #
# Skipping MacroDefinition: DAQmxErrorSelfCalConstsInvalid ( - 200549 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTrigCouplingExceptForExtTrigChan ( - 200548 ) #
# Skipping MacroDefinition: DAQmxErrorWriteFailsBufferSizeAutoConfigured ( - 200547 ) #
# Skipping MacroDefinition: DAQmxErrorExtCalAdjustExtRefVoltageFailed ( - 200546 ) #
# Skipping MacroDefinition: DAQmxErrorSelfCalFailedExtNoiseOrRefVoltageOutOfCal ( - 200545 ) #
# Skipping MacroDefinition: DAQmxErrorExtCalTemperatureNotDAQmx ( - 200544 ) #
# Skipping MacroDefinition: DAQmxErrorExtCalDateTimeNotDAQmx ( - 200543 ) #
# Skipping MacroDefinition: DAQmxErrorSelfCalTemperatureNotDAQmx ( - 200542 ) #
# Skipping MacroDefinition: DAQmxErrorSelfCalDateTimeNotDAQmx ( - 200541 ) #
# Skipping MacroDefinition: DAQmxErrorDACRefValNotSet ( - 200540 ) #
# Skipping MacroDefinition: DAQmxErrorAnalogMultiSampWriteNotSupported ( - 200539 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidActionInControlTask ( - 200538 ) #
# Skipping MacroDefinition: DAQmxErrorPolyCoeffsInconsistent ( - 200537 ) #
# Skipping MacroDefinition: DAQmxErrorSensorValTooLow ( - 200536 ) #
# Skipping MacroDefinition: DAQmxErrorSensorValTooHigh ( - 200535 ) #
# Skipping MacroDefinition: DAQmxErrorWaveformNameTooLong ( - 200534 ) #
# Skipping MacroDefinition: DAQmxErrorIdentifierTooLongInScript ( - 200533 ) #
# Skipping MacroDefinition: DAQmxErrorUnexpectedIDFollowingSwitchChanName ( - 200532 ) #
# Skipping MacroDefinition: DAQmxErrorRelayNameNotSpecifiedInList ( - 200531 ) #
# Skipping MacroDefinition: DAQmxErrorUnexpectedIDFollowingRelayNameInList ( - 200530 ) #
# Skipping MacroDefinition: DAQmxErrorUnexpectedIDFollowingSwitchOpInList ( - 200529 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidLineGrouping ( - 200528 ) #
# Skipping MacroDefinition: DAQmxErrorCtrMinMax ( - 200527 ) #
# Skipping MacroDefinition: DAQmxErrorWriteChanTypeMismatch ( - 200526 ) #
# Skipping MacroDefinition: DAQmxErrorReadChanTypeMismatch ( - 200525 ) #
# Skipping MacroDefinition: DAQmxErrorWriteNumChansMismatch ( - 200524 ) #
# Skipping MacroDefinition: DAQmxErrorOneChanReadForMultiChanTask ( - 200523 ) #
# Skipping MacroDefinition: DAQmxErrorCannotSelfCalDuringExtCal ( - 200522 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustOscillatorPhaseDAC ( - 200521 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalConstCalADCAdjustment ( - 200520 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalConstOscillatorFreqDACValue ( - 200519 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalConstOscillatorPhaseDACValue ( - 200518 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalConstOffsetDACValue ( - 200517 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalConstGainDACValue ( - 200516 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumCalADCReadsToAverage ( - 200515 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCfgCalAdjustDirectPathOutputImpedance ( - 200514 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCfgCalAdjustMainPathOutputImpedance ( - 200513 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCfgCalAdjustMainPathPostAmpGainAndOffset ( - 200512 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCfgCalAdjustMainPathPreAmpGain ( - 200511 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCfgCalAdjustMainPreAmpOffset ( - 200510 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustCalADC ( - 200509 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustOscillatorFrequency ( - 200508 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustDirectPathOutputImpedance ( - 200507 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustMainPathOutputImpedance ( - 200506 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustDirectPathGain ( - 200505 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustMainPathPostAmpGainAndOffset ( - 200504 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustMainPathPreAmpGain ( - 200503 ) #
# Skipping MacroDefinition: DAQmxErrorMeasCalAdjustMainPathPreAmpOffset ( - 200502 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDateTimeInEEPROM ( - 200501 ) #
# Skipping MacroDefinition: DAQmxErrorUnableToLocateErrorResources ( - 200500 ) #
# Skipping MacroDefinition: DAQmxErrorDotNetAPINotUnsigned32BitNumber ( - 200499 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRangeOfObjectsSyntaxInString ( - 200498 ) #
# Skipping MacroDefinition: DAQmxErrorAttemptToEnableLineNotPreviouslyDisabled ( - 200497 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCharInPattern ( - 200496 ) #
# Skipping MacroDefinition: DAQmxErrorIntermediateBufferFull ( - 200495 ) #
# Skipping MacroDefinition: DAQmxErrorLoadTaskFailsBecauseNoTimingOnDev ( - 200494 ) #
# Skipping MacroDefinition: DAQmxErrorCAPIReservedParamNotNULLNorEmpty ( - 200493 ) #
# Skipping MacroDefinition: DAQmxErrorCAPIReservedParamNotNULL ( - 200492 ) #
# Skipping MacroDefinition: DAQmxErrorCAPIReservedParamNotZero ( - 200491 ) #
# Skipping MacroDefinition: DAQmxErrorSampleValueOutOfRange ( - 200490 ) #
# Skipping MacroDefinition: DAQmxErrorChanAlreadyInTask ( - 200489 ) #
# Skipping MacroDefinition: DAQmxErrorVirtualChanDoesNotExist ( - 200488 ) #
# Skipping MacroDefinition: DAQmxErrorChanNotInTask ( - 200486 ) #
# Skipping MacroDefinition: DAQmxErrorTaskNotInDataNeighborhood ( - 200485 ) #
# Skipping MacroDefinition: DAQmxErrorCantSaveTaskWithoutReplace ( - 200484 ) #
# Skipping MacroDefinition: DAQmxErrorCantSaveChanWithoutReplace ( - 200483 ) #
# Skipping MacroDefinition: DAQmxErrorDevNotInTask ( - 200482 ) #
# Skipping MacroDefinition: DAQmxErrorDevAlreadyInTask ( - 200481 ) #
# Skipping MacroDefinition: DAQmxErrorCanNotPerformOpWhileTaskRunning ( - 200479 ) #
# Skipping MacroDefinition: DAQmxErrorCanNotPerformOpWhenNoChansInTask ( - 200478 ) #
# Skipping MacroDefinition: DAQmxErrorCanNotPerformOpWhenNoDevInTask ( - 200477 ) #
# Skipping MacroDefinition: DAQmxErrorCannotPerformOpWhenTaskNotRunning ( - 200475 ) #
# Skipping MacroDefinition: DAQmxErrorOperationTimedOut ( - 200474 ) #
# Skipping MacroDefinition: DAQmxErrorCannotReadWhenAutoStartFalseAndTaskNotRunningOrCommitted ( - 200473 ) #
# Skipping MacroDefinition: DAQmxErrorCannotWriteWhenAutoStartFalseAndTaskNotRunningOrCommitted ( - 200472 ) #
# Skipping MacroDefinition: DAQmxErrorTaskVersionNew ( - 200470 ) #
# Skipping MacroDefinition: DAQmxErrorChanVersionNew ( - 200469 ) #
# Skipping MacroDefinition: DAQmxErrorEmptyString ( - 200467 ) #
# Skipping MacroDefinition: DAQmxErrorChannelSizeTooBigForPortReadType ( - 200466 ) #
# Skipping MacroDefinition: DAQmxErrorChannelSizeTooBigForPortWriteType ( - 200465 ) #
# Skipping MacroDefinition: DAQmxErrorExpectedNumberOfChannelsVerificationFailed ( - 200464 ) #
# Skipping MacroDefinition: DAQmxErrorNumLinesMismatchInReadOrWrite ( - 200463 ) #
# Skipping MacroDefinition: DAQmxErrorOutputBufferEmpty ( - 200462 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidChanName ( - 200461 ) #
# Skipping MacroDefinition: DAQmxErrorReadNoInputChansInTask ( - 200460 ) #
# Skipping MacroDefinition: DAQmxErrorWriteNoOutputChansInTask ( - 200459 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyNotSupportedNotInputTask ( - 200457 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyNotSupportedNotOutputTask ( - 200456 ) #
# Skipping MacroDefinition: DAQmxErrorGetPropertyNotInputBufferedTask ( - 200455 ) #
# Skipping MacroDefinition: DAQmxErrorGetPropertyNotOutputBufferedTask ( - 200454 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTimeoutVal ( - 200453 ) #
# Skipping MacroDefinition: DAQmxErrorAttributeNotSupportedInTaskContext ( - 200452 ) #
# Skipping MacroDefinition: DAQmxErrorAttributeNotQueryableUnlessTaskIsCommitted ( - 200451 ) #
# Skipping MacroDefinition: DAQmxErrorAttributeNotSettableWhenTaskIsRunning ( - 200450 ) #
# Skipping MacroDefinition: DAQmxErrorDACRngLowNotMinusRefValNorZero ( - 200449 ) #
# Skipping MacroDefinition: DAQmxErrorDACRngHighNotEqualRefVal ( - 200448 ) #
# Skipping MacroDefinition: DAQmxErrorUnitsNotFromCustomScale ( - 200447 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidVoltageReadingDuringExtCal ( - 200446 ) #
# Skipping MacroDefinition: DAQmxErrorCalFunctionNotSupported ( - 200445 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidPhysicalChanForCal ( - 200444 ) #
# Skipping MacroDefinition: DAQmxErrorExtCalNotComplete ( - 200443 ) #
# Skipping MacroDefinition: DAQmxErrorCantSyncToExtStimulusFreqDuringCal ( - 200442 ) #
# Skipping MacroDefinition: DAQmxErrorUnableToDetectExtStimulusFreqDuringCal ( - 200441 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCloseAction ( - 200440 ) #
# Skipping MacroDefinition: DAQmxErrorExtCalFunctionOutsideExtCalSession ( - 200439 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidCalArea ( - 200438 ) #
# Skipping MacroDefinition: DAQmxErrorExtCalConstsInvalid ( - 200437 ) #
# Skipping MacroDefinition: DAQmxErrorStartTrigDelayWithExtSampClk ( - 200436 ) #
# Skipping MacroDefinition: DAQmxErrorDelayFromSampClkWithExtConv ( - 200435 ) #
# Skipping MacroDefinition: DAQmxErrorFewerThan2PreScaledVals ( - 200434 ) #
# Skipping MacroDefinition: DAQmxErrorFewerThan2ScaledValues ( - 200433 ) #
# Skipping MacroDefinition: DAQmxErrorPhysChanOutputType ( - 200432 ) #
# Skipping MacroDefinition: DAQmxErrorPhysChanMeasType ( - 200431 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidPhysChanType ( - 200430 ) #
# Skipping MacroDefinition: DAQmxErrorLabVIEWEmptyTaskOrChans ( - 200429 ) #
# Skipping MacroDefinition: DAQmxErrorLabVIEWInvalidTaskOrChans ( - 200428 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRefClkRate ( - 200427 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidExtTrigImpedance ( - 200426 ) #
# Skipping MacroDefinition: DAQmxErrorHystTrigLevelAIMax ( - 200425 ) #
# Skipping MacroDefinition: DAQmxErrorLineNumIncompatibleWithVideoSignalFormat ( - 200424 ) #
# Skipping MacroDefinition: DAQmxErrorTrigWindowAIMinAIMaxCombo ( - 200423 ) #
# Skipping MacroDefinition: DAQmxErrorTrigAIMinAIMax ( - 200422 ) #
# Skipping MacroDefinition: DAQmxErrorHystTrigLevelAIMin ( - 200421 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSampRateConsiderRIS ( - 200420 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidReadPosDuringRIS ( - 200419 ) #
# Skipping MacroDefinition: DAQmxErrorImmedTrigDuringRISMode ( - 200418 ) #
# Skipping MacroDefinition: DAQmxErrorTDCNotEnabledDuringRISMode ( - 200417 ) #
# Skipping MacroDefinition: DAQmxErrorMultiRecWithRIS ( - 200416 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRefClkSrc ( - 200415 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSampClkSrc ( - 200414 ) #
# Skipping MacroDefinition: DAQmxErrorInsufficientOnBoardMemForNumRecsAndSamps ( - 200413 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAIAttenuation ( - 200412 ) #
# Skipping MacroDefinition: DAQmxErrorACCouplingNotAllowedWith50OhmImpedance ( - 200411 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRecordNum ( - 200410 ) #
# Skipping MacroDefinition: DAQmxErrorZeroSlopeLinearScale ( - 200409 ) #
# Skipping MacroDefinition: DAQmxErrorZeroReversePolyScaleCoeffs ( - 200408 ) #
# Skipping MacroDefinition: DAQmxErrorZeroForwardPolyScaleCoeffs ( - 200407 ) #
# Skipping MacroDefinition: DAQmxErrorNoReversePolyScaleCoeffs ( - 200406 ) #
# Skipping MacroDefinition: DAQmxErrorNoForwardPolyScaleCoeffs ( - 200405 ) #
# Skipping MacroDefinition: DAQmxErrorNoPolyScaleCoeffs ( - 200404 ) #
# Skipping MacroDefinition: DAQmxErrorReversePolyOrderLessThanNumPtsToCompute ( - 200403 ) #
# Skipping MacroDefinition: DAQmxErrorReversePolyOrderNotPositive ( - 200402 ) #
# Skipping MacroDefinition: DAQmxErrorNumPtsToComputeNotPositive ( - 200401 ) #
# Skipping MacroDefinition: DAQmxErrorWaveformLengthNotMultipleOfIncr ( - 200400 ) #
# Skipping MacroDefinition: DAQmxErrorCAPINoExtendedErrorInfoAvailable ( - 200399 ) #
# Skipping MacroDefinition: DAQmxErrorCVIFunctionNotFoundInDAQmxDLL ( - 200398 ) #
# Skipping MacroDefinition: DAQmxErrorCVIFailedToLoadDAQmxDLL ( - 200397 ) #
# Skipping MacroDefinition: DAQmxErrorNoCommonTrigLineForImmedRoute ( - 200396 ) #
# Skipping MacroDefinition: DAQmxErrorNoCommonTrigLineForTaskRoute ( - 200395 ) #
# Skipping MacroDefinition: DAQmxErrorF64PrptyValNotUnsignedInt ( - 200394 ) #
# Skipping MacroDefinition: DAQmxErrorRegisterNotWritable ( - 200393 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidOutputVoltageAtSampClkRate ( - 200392 ) #
# Skipping MacroDefinition: DAQmxErrorStrobePhaseShiftDCMBecameUnlocked ( - 200391 ) #
# Skipping MacroDefinition: DAQmxErrorDrivePhaseShiftDCMBecameUnlocked ( - 200390 ) #
# Skipping MacroDefinition: DAQmxErrorClkOutPhaseShiftDCMBecameUnlocked ( - 200389 ) #
# Skipping MacroDefinition: DAQmxErrorOutputBoardClkDCMBecameUnlocked ( - 200388 ) #
# Skipping MacroDefinition: DAQmxErrorInputBoardClkDCMBecameUnlocked ( - 200387 ) #
# Skipping MacroDefinition: DAQmxErrorInternalClkDCMBecameUnlocked ( - 200386 ) #
# Skipping MacroDefinition: DAQmxErrorDCMLock ( - 200385 ) #
# Skipping MacroDefinition: DAQmxErrorDataLineReservedForDynamicOutput ( - 200384 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRefClkSrcGivenSampClkSrc ( - 200383 ) #
# Skipping MacroDefinition: DAQmxErrorNoPatternMatcherAvailable ( - 200382 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDelaySampRateBelowPhaseShiftDCMThresh ( - 200381 ) #
# Skipping MacroDefinition: DAQmxErrorStrainGageCalibration ( - 200380 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidExtClockFreqAndDivCombo ( - 200379 ) #
# Skipping MacroDefinition: DAQmxErrorCustomScaleDoesNotExist ( - 200378 ) #
# Skipping MacroDefinition: DAQmxErrorOnlyFrontEndChanOpsDuringScan ( - 200377 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidOptionForDigitalPortChannel ( - 200376 ) #
# Skipping MacroDefinition: DAQmxErrorUnsupportedSignalTypeExportSignal ( - 200375 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSignalTypeExportSignal ( - 200374 ) #
# Skipping MacroDefinition: DAQmxErrorUnsupportedTrigTypeSendsSWTrig ( - 200373 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTrigTypeSendsSWTrig ( - 200372 ) #
# Skipping MacroDefinition: DAQmxErrorRepeatedPhysicalChan ( - 200371 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForRouteInTask ( - 200370 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForRoute ( - 200369 ) #
# Skipping MacroDefinition: DAQmxErrorRouteNotSupportedByHW ( - 200368 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForExportSignalPolarity ( - 200367 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForInversionInTask ( - 200366 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForInversion ( - 200365 ) #
# Skipping MacroDefinition: DAQmxErrorExportSignalPolarityNotSupportedByHW ( - 200364 ) #
# Skipping MacroDefinition: DAQmxErrorInversionNotSupportedByHW ( - 200363 ) #
# Skipping MacroDefinition: DAQmxErrorOverloadedChansExistNotRead ( - 200362 ) #
# Skipping MacroDefinition: DAQmxErrorInputFIFOOverflow2 ( - 200361 ) #
# Skipping MacroDefinition: DAQmxErrorCJCChanNotSpecd ( - 200360 ) #
# Skipping MacroDefinition: DAQmxErrorCtrExportSignalNotPossible ( - 200359 ) #
# Skipping MacroDefinition: DAQmxErrorRefTrigWhenContinuous ( - 200358 ) #
# Skipping MacroDefinition: DAQmxErrorIncompatibleSensorOutputAndDeviceInputRanges ( - 200357 ) #
# Skipping MacroDefinition: DAQmxErrorCustomScaleNameUsed ( - 200356 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyValNotSupportedByHW ( - 200355 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyValNotValidTermName ( - 200354 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForProperty ( - 200353 ) #
# Skipping MacroDefinition: DAQmxErrorCJCChanAlreadyUsed ( - 200352 ) #
# Skipping MacroDefinition: DAQmxErrorForwardPolynomialCoefNotSpecd ( - 200351 ) #
# Skipping MacroDefinition: DAQmxErrorTableScaleNumPreScaledAndScaledValsNotEqual ( - 200350 ) #
# Skipping MacroDefinition: DAQmxErrorTableScalePreScaledValsNotSpecd ( - 200349 ) #
# Skipping MacroDefinition: DAQmxErrorTableScaleScaledValsNotSpecd ( - 200348 ) #
# Skipping MacroDefinition: DAQmxErrorIntermediateBufferSizeNotMultipleOfIncr ( - 200347 ) #
# Skipping MacroDefinition: DAQmxErrorEventPulseWidthOutOfRange ( - 200346 ) #
# Skipping MacroDefinition: DAQmxErrorEventDelayOutOfRange ( - 200345 ) #
# Skipping MacroDefinition: DAQmxErrorSampPerChanNotMultipleOfIncr ( - 200344 ) #
# Skipping MacroDefinition: DAQmxErrorCannotCalculateNumSampsTaskNotStarted ( - 200343 ) #
# Skipping MacroDefinition: DAQmxErrorScriptNotInMem ( - 200342 ) #
# Skipping MacroDefinition: DAQmxErrorOnboardMemTooSmall ( - 200341 ) #
# Skipping MacroDefinition: DAQmxErrorReadAllAvailableDataWithoutBuffer ( - 200340 ) #
# Skipping MacroDefinition: DAQmxErrorPulseActiveAtStart ( - 200339 ) #
# Skipping MacroDefinition: DAQmxErrorCalTempNotSupported ( - 200338 ) #
# Skipping MacroDefinition: DAQmxErrorDelayFromSampClkTooLong ( - 200337 ) #
# Skipping MacroDefinition: DAQmxErrorDelayFromSampClkTooShort ( - 200336 ) #
# Skipping MacroDefinition: DAQmxErrorAIConvRateTooHigh ( - 200335 ) #
# Skipping MacroDefinition: DAQmxErrorDelayFromStartTrigTooLong ( - 200334 ) #
# Skipping MacroDefinition: DAQmxErrorDelayFromStartTrigTooShort ( - 200333 ) #
# Skipping MacroDefinition: DAQmxErrorSampRateTooHigh ( - 200332 ) #
# Skipping MacroDefinition: DAQmxErrorSampRateTooLow ( - 200331 ) #
# Skipping MacroDefinition: DAQmxErrorPFI0UsedForAnalogAndDigitalSrc ( - 200330 ) #
# Skipping MacroDefinition: DAQmxErrorPrimingCfgFIFO ( - 200329 ) #
# Skipping MacroDefinition: DAQmxErrorCannotOpenTopologyCfgFile ( - 200328 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDTInsideWfmDataType ( - 200327 ) #
# Skipping MacroDefinition: DAQmxErrorRouteSrcAndDestSame ( - 200326 ) #
# Skipping MacroDefinition: DAQmxErrorReversePolynomialCoefNotSpecd ( - 200325 ) #
# Skipping MacroDefinition: DAQmxErrorDevAbsentOrUnavailable ( - 200324 ) #
# Skipping MacroDefinition: DAQmxErrorNoAdvTrigForMultiDevScan ( - 200323 ) #
# Skipping MacroDefinition: DAQmxErrorInterruptsInsufficientDataXferMech ( - 200322 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAttentuationBasedOnMinMax ( - 200321 ) #
# Skipping MacroDefinition: DAQmxErrorCabledModuleCannotRouteSSH ( - 200320 ) #
# Skipping MacroDefinition: DAQmxErrorCabledModuleCannotRouteConvClk ( - 200319 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidExcitValForScaling ( - 200318 ) #
# Skipping MacroDefinition: DAQmxErrorNoDevMemForScript ( - 200317 ) #
# Skipping MacroDefinition: DAQmxErrorScriptDataUnderflow ( - 200316 ) #
# Skipping MacroDefinition: DAQmxErrorNoDevMemForWaveform ( - 200315 ) #
# Skipping MacroDefinition: DAQmxErrorStreamDCMBecameUnlocked ( - 200314 ) #
# Skipping MacroDefinition: DAQmxErrorStreamDCMLock ( - 200313 ) #
# Skipping MacroDefinition: DAQmxErrorWaveformNotInMem ( - 200312 ) #
# Skipping MacroDefinition: DAQmxErrorWaveformWriteOutOfBounds ( - 200311 ) #
# Skipping MacroDefinition: DAQmxErrorWaveformPreviouslyAllocated ( - 200310 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkTbMasterTbDivNotAppropriateForSampTbSrc ( - 200309 ) #
# Skipping MacroDefinition: DAQmxErrorSampTbRateSampTbSrcMismatch ( - 200308 ) #
# Skipping MacroDefinition: DAQmxErrorMasterTbRateMasterTbSrcMismatch ( - 200307 ) #
# Skipping MacroDefinition: DAQmxErrorSampsPerChanTooBig ( - 200306 ) #
# Skipping MacroDefinition: DAQmxErrorFinitePulseTrainNotPossible ( - 200305 ) #
# Skipping MacroDefinition: DAQmxErrorExtMasterTimebaseRateNotSpecified ( - 200304 ) #
# Skipping MacroDefinition: DAQmxErrorExtSampClkSrcNotSpecified ( - 200303 ) #
# Skipping MacroDefinition: DAQmxErrorInputSignalSlowerThanMeasTime ( - 200302 ) #
# Skipping MacroDefinition: DAQmxErrorCannotUpdatePulseGenProperty ( - 200301 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTimingType ( - 200300 ) #
# Skipping MacroDefinition: DAQmxErrorPropertyUnavailWhenUsingOnboardMemory ( - 200297 ) #
# Skipping MacroDefinition: DAQmxErrorCannotWriteAfterStartWithOnboardMemory ( - 200295 ) #
# Skipping MacroDefinition: DAQmxErrorNotEnoughSampsWrittenForInitialXferRqstCondition ( - 200294 ) #
# Skipping MacroDefinition: DAQmxErrorNoMoreSpace ( - 200293 ) #
# Skipping MacroDefinition: DAQmxErrorSamplesCanNotYetBeWritten ( - 200292 ) #
# Skipping MacroDefinition: DAQmxErrorGenStoppedToPreventIntermediateBufferRegenOfOldSamples ( - 200291 ) #
# Skipping MacroDefinition: DAQmxErrorGenStoppedToPreventRegenOfOldSamples ( - 200290 ) #
# Skipping MacroDefinition: DAQmxErrorSamplesNoLongerWriteable ( - 200289 ) #
# Skipping MacroDefinition: DAQmxErrorSamplesWillNeverBeGenerated ( - 200288 ) #
# Skipping MacroDefinition: DAQmxErrorNegativeWriteSampleNumber ( - 200287 ) #
# Skipping MacroDefinition: DAQmxErrorNoAcqStarted ( - 200286 ) #
# Skipping MacroDefinition: DAQmxErrorSamplesNotYetAvailable ( - 200284 ) #
# Skipping MacroDefinition: DAQmxErrorAcqStoppedToPreventIntermediateBufferOverflow ( - 200283 ) #
# Skipping MacroDefinition: DAQmxErrorNoRefTrigConfigured ( - 200282 ) #
# Skipping MacroDefinition: DAQmxErrorCannotReadRelativeToRefTrigUntilDone ( - 200281 ) #
# Skipping MacroDefinition: DAQmxErrorSamplesNoLongerAvailable ( - 200279 ) #
# Skipping MacroDefinition: DAQmxErrorSamplesWillNeverBeAvailable ( - 200278 ) #
# Skipping MacroDefinition: DAQmxErrorNegativeReadSampleNumber ( - 200277 ) #
# Skipping MacroDefinition: DAQmxErrorExternalSampClkAndRefClkThruSameTerm ( - 200276 ) #
# Skipping MacroDefinition: DAQmxErrorExtSampClkRateTooLowForClkIn ( - 200275 ) #
# Skipping MacroDefinition: DAQmxErrorExtSampClkRateTooHighForBackplane ( - 200274 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateAndDivCombo ( - 200273 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkRateTooLowForDivDown ( - 200272 ) #
# Skipping MacroDefinition: DAQmxErrorProductOfAOMinAndGainTooSmall ( - 200271 ) #
# Skipping MacroDefinition: DAQmxErrorInterpolationRateNotPossible ( - 200270 ) #
# Skipping MacroDefinition: DAQmxErrorOffsetTooLarge ( - 200269 ) #
# Skipping MacroDefinition: DAQmxErrorOffsetTooSmall ( - 200268 ) #
# Skipping MacroDefinition: DAQmxErrorProductOfAOMaxAndGainTooLarge ( - 200267 ) #
# Skipping MacroDefinition: DAQmxErrorMinAndMaxNotSymmetric ( - 200266 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAnalogTrigSrc ( - 200265 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyChansForAnalogRefTrig ( - 200264 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyChansForAnalogPauseTrig ( - 200263 ) #
# Skipping MacroDefinition: DAQmxErrorTrigWhenOnDemandSampTiming ( - 200262 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentAnalogTrigSettings ( - 200261 ) #
# Skipping MacroDefinition: DAQmxErrorMemMapDataXferModeSampTimingCombo ( - 200260 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidJumperedAttr ( - 200259 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidGainBasedOnMinMax ( - 200258 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentExcit ( - 200257 ) #
# Skipping MacroDefinition: DAQmxErrorTopologyNotSupportedByCfgTermBlock ( - 200256 ) #
# Skipping MacroDefinition: DAQmxErrorBuiltInTempSensorNotSupported ( - 200255 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTerm ( - 200254 ) #
# Skipping MacroDefinition: DAQmxErrorCannotTristateTerm ( - 200253 ) #
# Skipping MacroDefinition: DAQmxErrorCannotTristateBusyTerm ( - 200252 ) #
# Skipping MacroDefinition: DAQmxErrorNoDMAChansAvailable ( - 200251 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidWaveformLengthWithinLoopInScript ( - 200250 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSubsetLengthWithinLoopInScript ( - 200249 ) #
# Skipping MacroDefinition: DAQmxErrorMarkerPosInvalidForLoopInScript ( - 200248 ) #
# Skipping MacroDefinition: DAQmxErrorIntegerExpectedInScript ( - 200247 ) #
# Skipping MacroDefinition: DAQmxErrorPLLBecameUnlocked ( - 200246 ) #
# Skipping MacroDefinition: DAQmxErrorPLLLock ( - 200245 ) #
# Skipping MacroDefinition: DAQmxErrorDDCClkOutDCMBecameUnlocked ( - 200244 ) #
# Skipping MacroDefinition: DAQmxErrorDDCClkOutDCMLock ( - 200243 ) #
# Skipping MacroDefinition: DAQmxErrorClkDoublerDCMBecameUnlocked ( - 200242 ) #
# Skipping MacroDefinition: DAQmxErrorClkDoublerDCMLock ( - 200241 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkDCMBecameUnlocked ( - 200240 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkDCMLock ( - 200239 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkTimebaseDCMBecameUnlocked ( - 200238 ) #
# Skipping MacroDefinition: DAQmxErrorSampClkTimebaseDCMLock ( - 200237 ) #
# Skipping MacroDefinition: DAQmxErrorAttrCannotBeReset ( - 200236 ) #
# Skipping MacroDefinition: DAQmxErrorExplanationNotFound ( - 200235 ) #
# Skipping MacroDefinition: DAQmxErrorWriteBufferTooSmall ( - 200234 ) #
# Skipping MacroDefinition: DAQmxErrorSpecifiedAttrNotValid ( - 200233 ) #
# Skipping MacroDefinition: DAQmxErrorAttrCannotBeRead ( - 200232 ) #
# Skipping MacroDefinition: DAQmxErrorAttrCannotBeSet ( - 200231 ) #
# Skipping MacroDefinition: DAQmxErrorNULLPtrForC_Api ( - 200230 ) #
# Skipping MacroDefinition: DAQmxErrorReadBufferTooSmall ( - 200229 ) #
# Skipping MacroDefinition: DAQmxErrorBufferTooSmallForString ( - 200228 ) #
# Skipping MacroDefinition: DAQmxErrorNoAvailTrigLinesOnDevice ( - 200227 ) #
# Skipping MacroDefinition: DAQmxErrorTrigBusLineNotAvail ( - 200226 ) #
# Skipping MacroDefinition: DAQmxErrorCouldNotReserveRequestedTrigLine ( - 200225 ) #
# Skipping MacroDefinition: DAQmxErrorTrigLineNotFound ( - 200224 ) #
# Skipping MacroDefinition: DAQmxErrorSCXI1126ThreshHystCombination ( - 200223 ) #
# Skipping MacroDefinition: DAQmxErrorAcqStoppedToPreventInputBufferOverwrite ( - 200222 ) #
# Skipping MacroDefinition: DAQmxErrorTimeoutExceeded ( - 200221 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDeviceID ( - 200220 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAOChanOrder ( - 200219 ) #
# Skipping MacroDefinition: DAQmxErrorSampleTimingTypeAndDataXferMode ( - 200218 ) #
# Skipping MacroDefinition: DAQmxErrorBufferWithOnDemandSampTiming ( - 200217 ) #
# Skipping MacroDefinition: DAQmxErrorBufferAndDataXferMode ( - 200216 ) #
# Skipping MacroDefinition: DAQmxErrorMemMapAndBuffer ( - 200215 ) #
# Skipping MacroDefinition: DAQmxErrorNoAnalogTrigHW ( - 200214 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyPretrigPlusMinPostTrigSamps ( - 200213 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentUnitsSpecified ( - 200212 ) #
# Skipping MacroDefinition: DAQmxErrorMultipleRelaysForSingleRelayOp ( - 200211 ) #
# Skipping MacroDefinition: DAQmxErrorMultipleDevIDsPerChassisSpecifiedInList ( - 200210 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicateDevIDInList ( - 200209 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRangeStatementCharInList ( - 200208 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidDeviceIDInList ( - 200207 ) #
# Skipping MacroDefinition: DAQmxErrorTriggerPolarityConflict ( - 200206 ) #
# Skipping MacroDefinition: DAQmxErrorCannotScanWithCurrentTopology ( - 200205 ) #
# Skipping MacroDefinition: DAQmxErrorUnexpectedIdentifierInFullySpecifiedPathInList ( - 200204 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchCannotDriveMultipleTrigLines ( - 200203 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRelayName ( - 200202 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchScanlistTooBig ( - 200201 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchChanInUse ( - 200200 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchNotResetBeforeScan ( - 200199 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTopology ( - 200198 ) #
# Skipping MacroDefinition: DAQmxErrorAttrNotSupported ( - 200197 ) #
# Skipping MacroDefinition: DAQmxErrorUnexpectedEndOfActionsInList ( - 200196 ) #
# Skipping MacroDefinition: DAQmxErrorPowerLimitExceeded ( - 200195 ) #
# Skipping MacroDefinition: DAQmxErrorHWUnexpectedlyPoweredOffAndOn ( - 200194 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchOperationNotSupported ( - 200193 ) #
# Skipping MacroDefinition: DAQmxErrorOnlyContinuousScanSupported ( - 200192 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchDifferentTopologyWhenScanning ( - 200191 ) #
# Skipping MacroDefinition: DAQmxErrorDisconnectPathNotSameAsExistingPath ( - 200190 ) #
# Skipping MacroDefinition: DAQmxErrorConnectionNotPermittedOnChanReservedForRouting ( - 200189 ) #
# Skipping MacroDefinition: DAQmxErrorCannotConnectSrcChans ( - 200188 ) #
# Skipping MacroDefinition: DAQmxErrorCannotConnectChannelToItself ( - 200187 ) #
# Skipping MacroDefinition: DAQmxErrorChannelNotReservedForRouting ( - 200186 ) #
# Skipping MacroDefinition: DAQmxErrorCannotConnectChansDirectly ( - 200185 ) #
# Skipping MacroDefinition: DAQmxErrorChansAlreadyConnected ( - 200184 ) #
# Skipping MacroDefinition: DAQmxErrorChanDuplicatedInPath ( - 200183 ) #
# Skipping MacroDefinition: DAQmxErrorNoPathToDisconnect ( - 200182 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSwitchChan ( - 200181 ) #
# Skipping MacroDefinition: DAQmxErrorNoPathAvailableBetween2SwitchChans ( - 200180 ) #
# Skipping MacroDefinition: DAQmxErrorExplicitConnectionExists ( - 200179 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchDifferentSettlingTimeWhenScanning ( - 200178 ) #
# Skipping MacroDefinition: DAQmxErrorOperationOnlyPermittedWhileScanning ( - 200177 ) #
# Skipping MacroDefinition: DAQmxErrorOperationNotPermittedWhileScanning ( - 200176 ) #
# Skipping MacroDefinition: DAQmxErrorHardwareNotResponding ( - 200175 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSampAndMasterTimebaseRateCombo ( - 200173 ) #
# Skipping MacroDefinition: DAQmxErrorNonZeroBufferSizeInProgIOXfer ( - 200172 ) #
# Skipping MacroDefinition: DAQmxErrorVirtualChanNameUsed ( - 200171 ) #
# Skipping MacroDefinition: DAQmxErrorPhysicalChanDoesNotExist ( - 200170 ) #
# Skipping MacroDefinition: DAQmxErrorMemMapOnlyForProgIOXfer ( - 200169 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyChans ( - 200168 ) #
# Skipping MacroDefinition: DAQmxErrorCannotHaveCJTempWithOtherChans ( - 200167 ) #
# Skipping MacroDefinition: DAQmxErrorOutputBufferUnderwrite ( - 200166 ) #
# Skipping MacroDefinition: DAQmxErrorSensorInvalidCompletionResistance ( - 200163 ) #
# Skipping MacroDefinition: DAQmxErrorVoltageExcitIncompatibleWith2WireCfg ( - 200162 ) #
# Skipping MacroDefinition: DAQmxErrorIntExcitSrcNotAvailable ( - 200161 ) #
# Skipping MacroDefinition: DAQmxErrorCannotCreateChannelAfterTaskVerified ( - 200160 ) #
# Skipping MacroDefinition: DAQmxErrorLinesReservedForSCXIControl ( - 200159 ) #
# Skipping MacroDefinition: DAQmxErrorCouldNotReserveLinesForSCXIControl ( - 200158 ) #
# Skipping MacroDefinition: DAQmxErrorCalibrationFailed ( - 200157 ) #
# Skipping MacroDefinition: DAQmxErrorReferenceFrequencyInvalid ( - 200156 ) #
# Skipping MacroDefinition: DAQmxErrorReferenceResistanceInvalid ( - 200155 ) #
# Skipping MacroDefinition: DAQmxErrorReferenceCurrentInvalid ( - 200154 ) #
# Skipping MacroDefinition: DAQmxErrorReferenceVoltageInvalid ( - 200153 ) #
# Skipping MacroDefinition: DAQmxErrorEEPROMDataInvalid ( - 200152 ) #
# Skipping MacroDefinition: DAQmxErrorCabledModuleNotCapableOfRoutingAI ( - 200151 ) #
# Skipping MacroDefinition: DAQmxErrorChannelNotAvailableInParallelMode ( - 200150 ) #
# Skipping MacroDefinition: DAQmxErrorExternalTimebaseRateNotKnownForDelay ( - 200149 ) #
# Skipping MacroDefinition: DAQmxErrorFREQOUTCannotProduceDesiredFrequency ( - 200148 ) #
# Skipping MacroDefinition: DAQmxErrorMultipleCounterInputTask ( - 200147 ) #
# Skipping MacroDefinition: DAQmxErrorCounterStartPauseTriggerConflict ( - 200146 ) #
# Skipping MacroDefinition: DAQmxErrorCounterInputPauseTriggerAndSampleClockInvalid ( - 200145 ) #
# Skipping MacroDefinition: DAQmxErrorCounterOutputPauseTriggerInvalid ( - 200144 ) #
# Skipping MacroDefinition: DAQmxErrorCounterTimebaseRateNotSpecified ( - 200143 ) #
# Skipping MacroDefinition: DAQmxErrorCounterTimebaseRateNotFound ( - 200142 ) #
# Skipping MacroDefinition: DAQmxErrorCounterOverflow ( - 200141 ) #
# Skipping MacroDefinition: DAQmxErrorCounterNoTimebaseEdgesBetweenGates ( - 200140 ) #
# Skipping MacroDefinition: DAQmxErrorCounterMaxMinRangeFreq ( - 200139 ) #
# Skipping MacroDefinition: DAQmxErrorCounterMaxMinRangeTime ( - 200138 ) #
# Skipping MacroDefinition: DAQmxErrorSuitableTimebaseNotFoundTimeCombo ( - 200137 ) #
# Skipping MacroDefinition: DAQmxErrorSuitableTimebaseNotFoundFrequencyCombo ( - 200136 ) #
# Skipping MacroDefinition: DAQmxErrorInternalTimebaseSourceDivisorCombo ( - 200135 ) #
# Skipping MacroDefinition: DAQmxErrorInternalTimebaseSourceRateCombo ( - 200134 ) #
# Skipping MacroDefinition: DAQmxErrorInternalTimebaseRateDivisorSourceCombo ( - 200133 ) #
# Skipping MacroDefinition: DAQmxErrorExternalTimebaseRateNotknownForRate ( - 200132 ) #
# Skipping MacroDefinition: DAQmxErrorAnalogTrigChanNotFirstInScanList ( - 200131 ) #
# Skipping MacroDefinition: DAQmxErrorNoDivisorForExternalSignal ( - 200130 ) #
# Skipping MacroDefinition: DAQmxErrorAttributeInconsistentAcrossRepeatedPhysicalChannels ( - 200128 ) #
# Skipping MacroDefinition: DAQmxErrorCannotHandshakeWithPort0 ( - 200127 ) #
# Skipping MacroDefinition: DAQmxErrorControlLineConflictOnPortC ( - 200126 ) #
# Skipping MacroDefinition: DAQmxErrorLines4To7ConfiguredForOutput ( - 200125 ) #
# Skipping MacroDefinition: DAQmxErrorLines4To7ConfiguredForInput ( - 200124 ) #
# Skipping MacroDefinition: DAQmxErrorLines0To3ConfiguredForOutput ( - 200123 ) #
# Skipping MacroDefinition: DAQmxErrorLines0To3ConfiguredForInput ( - 200122 ) #
# Skipping MacroDefinition: DAQmxErrorPortConfiguredForOutput ( - 200121 ) #
# Skipping MacroDefinition: DAQmxErrorPortConfiguredForInput ( - 200120 ) #
# Skipping MacroDefinition: DAQmxErrorPortConfiguredForStaticDigitalOps ( - 200119 ) #
# Skipping MacroDefinition: DAQmxErrorPortReservedForHandshaking ( - 200118 ) #
# Skipping MacroDefinition: DAQmxErrorPortDoesNotSupportHandshakingDataIO ( - 200117 ) #
# Skipping MacroDefinition: DAQmxErrorCannotTristate8255OutputLines ( - 200116 ) #
# Skipping MacroDefinition: DAQmxErrorTemperatureOutOfRangeForCalibration ( - 200113 ) #
# Skipping MacroDefinition: DAQmxErrorCalibrationHandleInvalid ( - 200112 ) #
# Skipping MacroDefinition: DAQmxErrorPasswordRequired ( - 200111 ) #
# Skipping MacroDefinition: DAQmxErrorIncorrectPassword ( - 200110 ) #
# Skipping MacroDefinition: DAQmxErrorPasswordTooLong ( - 200109 ) #
# Skipping MacroDefinition: DAQmxErrorCalibrationSessionAlreadyOpen ( - 200108 ) #
# Skipping MacroDefinition: DAQmxErrorSCXIModuleIncorrect ( - 200107 ) #
# Skipping MacroDefinition: DAQmxErrorAttributeInconsistentAcrossChannelsOnDevice ( - 200106 ) #
# Skipping MacroDefinition: DAQmxErrorSCXI1122ResistanceChanNotSupportedForCfg ( - 200105 ) #
# Skipping MacroDefinition: DAQmxErrorBracketPairingMismatchInList ( - 200104 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentNumSamplesToWrite ( - 200103 ) #
# Skipping MacroDefinition: DAQmxErrorIncorrectDigitalPattern ( - 200102 ) #
# Skipping MacroDefinition: DAQmxErrorIncorrectNumChannelsToWrite ( - 200101 ) #
# Skipping MacroDefinition: DAQmxErrorIncorrectReadFunction ( - 200100 ) #
# Skipping MacroDefinition: DAQmxErrorPhysicalChannelNotSpecified ( - 200099 ) #
# Skipping MacroDefinition: DAQmxErrorMoreThanOneTerminal ( - 200098 ) #
# Skipping MacroDefinition: DAQmxErrorMoreThanOneActiveChannelSpecified ( - 200097 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumberSamplesToRead ( - 200096 ) #
# Skipping MacroDefinition: DAQmxErrorAnalogWaveformExpected ( - 200095 ) #
# Skipping MacroDefinition: DAQmxErrorDigitalWaveformExpected ( - 200094 ) #
# Skipping MacroDefinition: DAQmxErrorActiveChannelNotSpecified ( - 200093 ) #
# Skipping MacroDefinition: DAQmxErrorFunctionNotSupportedForDeviceTasks ( - 200092 ) #
# Skipping MacroDefinition: DAQmxErrorFunctionNotInLibrary ( - 200091 ) #
# Skipping MacroDefinition: DAQmxErrorLibraryNotPresent ( - 200090 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicateTask ( - 200089 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTask ( - 200088 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidChannel ( - 200087 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSyntaxForPhysicalChannelRange ( - 200086 ) #
# Skipping MacroDefinition: DAQmxErrorMinNotLessThanMax ( - 200082 ) #
# Skipping MacroDefinition: DAQmxErrorSampleRateNumChansConvertPeriodCombo ( - 200081 ) #
# Skipping MacroDefinition: DAQmxErrorAODuringCounter1DMAConflict ( - 200079 ) #
# Skipping MacroDefinition: DAQmxErrorAIDuringCounter0DMAConflict ( - 200078 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAttributeValue ( - 200077 ) #
# Skipping MacroDefinition: DAQmxErrorSuppliedCurrentDataOutsideSpecifiedRange ( - 200076 ) #
# Skipping MacroDefinition: DAQmxErrorSuppliedVoltageDataOutsideSpecifiedRange ( - 200075 ) #
# Skipping MacroDefinition: DAQmxErrorCannotStoreCalConst ( - 200074 ) #
# Skipping MacroDefinition: DAQmxErrorSCXIModuleNotFound ( - 200073 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicatePhysicalChansNotSupported ( - 200072 ) #
# Skipping MacroDefinition: DAQmxErrorTooManyPhysicalChansInList ( - 200071 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidAdvanceEventTriggerType ( - 200070 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceIsNotAValidSwitch ( - 200069 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceDoesNotSupportScanning ( - 200068 ) #
# Skipping MacroDefinition: DAQmxErrorScanListCannotBeTimed ( - 200067 ) #
# Skipping MacroDefinition: DAQmxErrorConnectOperatorInvalidAtPointInList ( - 200066 ) #
# Skipping MacroDefinition: DAQmxErrorUnexpectedSwitchActionInList ( - 200065 ) #
# Skipping MacroDefinition: DAQmxErrorUnexpectedSeparatorInList ( - 200064 ) #
# Skipping MacroDefinition: DAQmxErrorExpectedTerminatorInList ( - 200063 ) #
# Skipping MacroDefinition: DAQmxErrorExpectedConnectOperatorInList ( - 200062 ) #
# Skipping MacroDefinition: DAQmxErrorExpectedSeparatorInList ( - 200061 ) #
# Skipping MacroDefinition: DAQmxErrorFullySpecifiedPathInListContainsRange ( - 200060 ) #
# Skipping MacroDefinition: DAQmxErrorConnectionSeparatorAtEndOfList ( - 200059 ) #
# Skipping MacroDefinition: DAQmxErrorIdentifierInListTooLong ( - 200058 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicateDeviceIDInListWhenSettling ( - 200057 ) #
# Skipping MacroDefinition: DAQmxErrorChannelNameNotSpecifiedInList ( - 200056 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceIDNotSpecifiedInList ( - 200055 ) #
# Skipping MacroDefinition: DAQmxErrorSemicolonDoesNotFollowRangeInList ( - 200054 ) #
# Skipping MacroDefinition: DAQmxErrorSwitchActionInListSpansMultipleDevices ( - 200053 ) #
# Skipping MacroDefinition: DAQmxErrorRangeWithoutAConnectActionInList ( - 200052 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidIdentifierFollowingSeparatorInList ( - 200051 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidChannelNameInList ( - 200050 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidNumberInRepeatStatementInList ( - 200049 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTriggerLineInList ( - 200048 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidIdentifierInListFollowingDeviceID ( - 200047 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidIdentifierInListAtEndOfSwitchAction ( - 200046 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceRemoved ( - 200045 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingPathNotAvailable ( - 200044 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingHardwareBusy ( - 200043 ) #
# Skipping MacroDefinition: DAQmxErrorRequestedSignalInversionForRoutingNotPossible ( - 200042 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRoutingDestinationTerminalName ( - 200041 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRoutingSourceTerminalName ( - 200040 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingNotSupportedForDevice ( - 200039 ) #
# Skipping MacroDefinition: DAQmxErrorWaitIsLastInstructionOfLoopInScript ( - 200038 ) #
# Skipping MacroDefinition: DAQmxErrorClearIsLastInstructionOfLoopInScript ( - 200037 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidLoopIterationsInScript ( - 200036 ) #
# Skipping MacroDefinition: DAQmxErrorRepeatLoopNestingTooDeepInScript ( - 200035 ) #
# Skipping MacroDefinition: DAQmxErrorMarkerPositionOutsideSubsetInScript ( - 200034 ) #
# Skipping MacroDefinition: DAQmxErrorSubsetStartOffsetNotAlignedInScript ( - 200033 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSubsetLengthInScript ( - 200032 ) #
# Skipping MacroDefinition: DAQmxErrorMarkerPositionNotAlignedInScript ( - 200031 ) #
# Skipping MacroDefinition: DAQmxErrorSubsetOutsideWaveformInScript ( - 200030 ) #
# Skipping MacroDefinition: DAQmxErrorMarkerOutsideWaveformInScript ( - 200029 ) #
# Skipping MacroDefinition: DAQmxErrorWaveformInScriptNotInMem ( - 200028 ) #
# Skipping MacroDefinition: DAQmxErrorKeywordExpectedInScript ( - 200027 ) #
# Skipping MacroDefinition: DAQmxErrorBufferNameExpectedInScript ( - 200026 ) #
# Skipping MacroDefinition: DAQmxErrorProcedureNameExpectedInScript ( - 200025 ) #
# Skipping MacroDefinition: DAQmxErrorScriptHasInvalidIdentifier ( - 200024 ) #
# Skipping MacroDefinition: DAQmxErrorScriptHasInvalidCharacter ( - 200023 ) #
# Skipping MacroDefinition: DAQmxErrorResourceAlreadyReserved ( - 200022 ) #
# Skipping MacroDefinition: DAQmxErrorSelfTestFailed ( - 200020 ) #
# Skipping MacroDefinition: DAQmxErrorADCOverrun ( - 200019 ) #
# Skipping MacroDefinition: DAQmxErrorDACUnderflow ( - 200018 ) #
# Skipping MacroDefinition: DAQmxErrorInputFIFOUnderflow ( - 200017 ) #
# Skipping MacroDefinition: DAQmxErrorOutputFIFOUnderflow ( - 200016 ) #
# Skipping MacroDefinition: DAQmxErrorSCXISerialCommunication ( - 200015 ) #
# Skipping MacroDefinition: DAQmxErrorDigitalTerminalSpecifiedMoreThanOnce ( - 200014 ) #
# Skipping MacroDefinition: DAQmxErrorDigitalOutputNotSupported ( - 200012 ) #
# Skipping MacroDefinition: DAQmxErrorInconsistentChannelDirections ( - 200011 ) #
# Skipping MacroDefinition: DAQmxErrorInputFIFOOverflow ( - 200010 ) #
# Skipping MacroDefinition: DAQmxErrorTimeStampOverwritten ( - 200009 ) #
# Skipping MacroDefinition: DAQmxErrorStopTriggerHasNotOccurred ( - 200008 ) #
# Skipping MacroDefinition: DAQmxErrorRecordNotAvailable ( - 200007 ) #
# Skipping MacroDefinition: DAQmxErrorRecordOverwritten ( - 200006 ) #
# Skipping MacroDefinition: DAQmxErrorDataNotAvailable ( - 200005 ) #
# Skipping MacroDefinition: DAQmxErrorDataOverwrittenInDeviceMemory ( - 200004 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicatedChannel ( - 200003 ) #
# Skipping MacroDefinition: DAQmxWarningTimestampCounterRolledOver ( 200003 ) #
# Skipping MacroDefinition: DAQmxWarningInputTerminationOverloaded ( 200004 ) #
# Skipping MacroDefinition: DAQmxWarningADCOverloaded ( 200005 ) #
# Skipping MacroDefinition: DAQmxWarningPLLUnlocked ( 200007 ) #
# Skipping MacroDefinition: DAQmxWarningCounter0DMADuringAIConflict ( 200008 ) #
# Skipping MacroDefinition: DAQmxWarningCounter1DMADuringAOConflict ( 200009 ) #
# Skipping MacroDefinition: DAQmxWarningStoppedBeforeDone ( 200010 ) #
# Skipping MacroDefinition: DAQmxWarningRateViolatesSettlingTime ( 200011 ) #
# Skipping MacroDefinition: DAQmxWarningRateViolatesMaxADCRate ( 200012 ) #
# Skipping MacroDefinition: DAQmxWarningUserDefInfoStringTooLong ( 200013 ) #
# Skipping MacroDefinition: DAQmxWarningTooManyInterruptsPerSecond ( 200014 ) #
# Skipping MacroDefinition: DAQmxWarningPotentialGlitchDuringWrite ( 200015 ) #
# Skipping MacroDefinition: DAQmxWarningDevNotSelfCalibratedWithDAQmx ( 200016 ) #
# Skipping MacroDefinition: DAQmxWarningAISampRateTooLow ( 200017 ) #
# Skipping MacroDefinition: DAQmxWarningAIConvRateTooLow ( 200018 ) #
# Skipping MacroDefinition: DAQmxWarningReadOffsetCoercion ( 200019 ) #
# Skipping MacroDefinition: DAQmxWarningPretrigCoercion ( 200020 ) #
# Skipping MacroDefinition: DAQmxWarningSampValCoercedToMax ( 200021 ) #
# Skipping MacroDefinition: DAQmxWarningSampValCoercedToMin ( 200022 ) #
# Skipping MacroDefinition: DAQmxWarningPropertyVersionNew ( 200024 ) #
# Skipping MacroDefinition: DAQmxWarningUserDefinedInfoTooLong ( 200025 ) #
# Skipping MacroDefinition: DAQmxWarningCAPIStringTruncatedToFitBuffer ( 200026 ) #
# Skipping MacroDefinition: DAQmxWarningSampClkRateTooLow ( 200027 ) #
# Skipping MacroDefinition: DAQmxWarningPossiblyInvalidCTRSampsInFiniteDMAAcq ( 200028 ) #
# Skipping MacroDefinition: DAQmxWarningRISAcqCompletedSomeBinsNotFilled ( 200029 ) #
# Skipping MacroDefinition: DAQmxWarningPXIDevTempExceedsMaxOpTemp ( 200030 ) #
# Skipping MacroDefinition: DAQmxWarningOutputGainTooLowForRFFreq ( 200031 ) #
# Skipping MacroDefinition: DAQmxWarningOutputGainTooHighForRFFreq ( 200032 ) #
# Skipping MacroDefinition: DAQmxWarningMultipleWritesBetweenSampClks ( 200033 ) #
# Skipping MacroDefinition: DAQmxWarningDeviceMayShutDownDueToHighTemp ( 200034 ) #
# Skipping MacroDefinition: DAQmxWarningRateViolatesMinADCRate ( 200035 ) #
# Skipping MacroDefinition: DAQmxWarningSampClkRateAboveDevSpecs ( 200036 ) #
# Skipping MacroDefinition: DAQmxWarningCOPrevDAQmxWriteSettingsOverwrittenForHWTimedSinglePoint ( 200037 ) #
# Skipping MacroDefinition: DAQmxWarningLowpassFilterSettlingTimeExceedsUserTimeBetween2ADCConversions ( 200038 ) #
# Skipping MacroDefinition: DAQmxWarningLowpassFilterSettlingTimeExceedsDriverTimeBetween2ADCConversions ( 200039 ) #
# Skipping MacroDefinition: DAQmxWarningSampClkRateViolatesSettlingTimeForGen ( 200040 ) #
# Skipping MacroDefinition: DAQmxWarningInvalidCalConstValueForAI ( 200041 ) #
# Skipping MacroDefinition: DAQmxWarningInvalidCalConstValueForAO ( 200042 ) #
# Skipping MacroDefinition: DAQmxWarningChanCalExpired ( 200043 ) #
# Skipping MacroDefinition: DAQmxWarningUnrecognizedEnumValueEncounteredInStorage ( 200044 ) #
# Skipping MacroDefinition: DAQmxWarningTableCRCNotCorrect ( 200045 ) #
# Skipping MacroDefinition: DAQmxWarningExternalCRCNotCorrect ( 200046 ) #
# Skipping MacroDefinition: DAQmxWarningSelfCalCRCNotCorrect ( 200047 ) #
# Skipping MacroDefinition: DAQmxWarningDeviceSpecExceeded ( 200048 ) #
# Skipping MacroDefinition: DAQmxWarningOnlyGainCalibrated ( 200049 ) #
# Skipping MacroDefinition: DAQmxWarningReversePowerProtectionActivated ( 200050 ) #
# Skipping MacroDefinition: DAQmxWarningOverVoltageProtectionActivated ( 200051 ) #
# Skipping MacroDefinition: DAQmxWarningBufferSizeNotMultipleOfSectorSize ( 200052 ) #
# Skipping MacroDefinition: DAQmxWarningSampleRateMayCauseAcqToFail ( 200053 ) #
# Skipping MacroDefinition: DAQmxWarningUserAreaCRCNotCorrect ( 200054 ) #
# Skipping MacroDefinition: DAQmxWarningPowerUpInfoCRCNotCorrect ( 200055 ) #
# Skipping MacroDefinition: DAQmxWarningConnectionCountHasExceededRecommendedLimit ( 200056 ) #
# Skipping MacroDefinition: DAQmxWarningNetworkDeviceAlreadyAdded ( 200057 ) #
# Skipping MacroDefinition: DAQmxWarningAccessoryConnectionCountIsInvalid ( 200058 ) #
# Skipping MacroDefinition: DAQmxWarningUnableToDisconnectPorts ( 200059 ) #
# Skipping MacroDefinition: DAQmxWarningReadRepeatedData ( 200060 ) #
# Skipping MacroDefinition: DAQmxWarningPXI5600_NotConfigured ( 200061 ) #
# Skipping MacroDefinition: DAQmxWarningPXI5661_IncorrectlyConfigured ( 200062 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5601_NotConfigured ( 200063 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5663_IncorrectlyConfigured ( 200064 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5663E_IncorrectlyConfigured ( 200065 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5603_NotConfigured ( 200066 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5665_5603_IncorrectlyConfigured ( 200067 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5667_5603_IncorrectlyConfigured ( 200068 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5605_NotConfigured ( 200069 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5665_5605_IncorrectlyConfigured ( 200070 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5667_5605_IncorrectlyConfigured ( 200071 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5606_NotConfigured ( 200072 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5665_5606_IncorrectlyConfigured ( 200073 ) #
# Skipping MacroDefinition: DAQmxWarningPXI5610_NotConfigured ( 200074 ) #
# Skipping MacroDefinition: DAQmxWarningPXI5610_IncorrectlyConfigured ( 200075 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5611_NotConfigured ( 200076 ) #
# Skipping MacroDefinition: DAQmxWarningPXIe5611_IncorrectlyConfigured ( 200077 ) #
# Skipping MacroDefinition: DAQmxWarningUSBHotfixForDAQ ( 200078 ) #
# Skipping MacroDefinition: DAQmxWarningNoChangeSupersededByIdleBehavior ( 200079 ) #
# Skipping MacroDefinition: DAQmxWarningReadNotCompleteBeforeSampClk ( 209800 ) #
# Skipping MacroDefinition: DAQmxWarningWriteNotCompleteBeforeSampClk ( 209801 ) #
# Skipping MacroDefinition: DAQmxWarningWaitForNextSampClkDetectedMissedSampClk ( 209802 ) #
# Skipping MacroDefinition: DAQmxWarningOutputDataTransferConditionNotSupported ( 209803 ) #
# Skipping MacroDefinition: DAQmxWarningTimestampMayBeInvalid ( 209804 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIDStarXNotInSystemTimingSlot_Routing ( - 89167 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIDStarXNotInSystemTimingSlot_Routing ( - 89166 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIDStarInNonDStarTriggerSlot_Routing ( - 89165 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIDStarInNonDStarTriggerSlot_Routing ( - 89164 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIClk10InNotInStarTriggerSlot_Routing ( - 89162 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIClk10InNotInSystemTimingSlot_Routing ( - 89161 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarXNotInStarTriggerSlot_Routing ( - 89160 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarXNotInSystemTimingSlot_Routing ( - 89159 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarXNotInStarTriggerSlot_Routing ( - 89158 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarXNotInSystemTimingSlot_Routing ( - 89157 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarInNonStarTriggerSlot_Routing ( - 89156 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarInNonStarTriggerSlot_Routing ( - 89155 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarInStarTriggerSlot_Routing ( - 89154 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarInSystemTimingSlot_Routing ( - 89153 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarInStarTriggerSlot_Routing ( - 89152 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarInSystemTimingSlot_Routing ( - 89151 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidSignalModifier_Routing ( - 89150 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIClk10InNotInSlot2_Routing ( - 89149 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarXNotInSlot2_Routing ( - 89148 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarXNotInSlot2_Routing ( - 89147 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarInSlot16AndAbove_Routing ( - 89146 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarInSlot16AndAbove_Routing ( - 89145 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIStarInSlot2_Routing ( - 89144 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIStarInSlot2_Routing ( - 89143 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingDestTermPXIChassisNotIdentified_Routing ( - 89142 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingSrcTermPXIChassisNotIdentified_Routing ( - 89141 ) #
# Skipping MacroDefinition: DAQmxErrorTrigLineNotFoundSingleDevRoute_Routing ( - 89140 ) #
# Skipping MacroDefinition: DAQmxErrorNoCommonTrigLineForRoute_Routing ( - 89139 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForRouteInTask_Routing ( - 89138 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForRoute_Routing ( - 89137 ) #
# Skipping MacroDefinition: DAQmxErrorRouteNotSupportedByHW_Routing ( - 89136 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForInversionInTask_Routing ( - 89135 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForInversion_Routing ( - 89134 ) #
# Skipping MacroDefinition: DAQmxErrorInversionNotSupportedByHW_Routing ( - 89133 ) #
# Skipping MacroDefinition: DAQmxErrorResourcesInUseForProperty_Routing ( - 89132 ) #
# Skipping MacroDefinition: DAQmxErrorRouteSrcAndDestSame_Routing ( - 89131 ) #
# Skipping MacroDefinition: DAQmxErrorDevAbsentOrUnavailable_Routing ( - 89130 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidTerm_Routing ( - 89129 ) #
# Skipping MacroDefinition: DAQmxErrorCannotTristateTerm_Routing ( - 89128 ) #
# Skipping MacroDefinition: DAQmxErrorCannotTristateBusyTerm_Routing ( - 89127 ) #
# Skipping MacroDefinition: DAQmxErrorCouldNotReserveRequestedTrigLine_Routing ( - 89126 ) #
# Skipping MacroDefinition: DAQmxErrorTrigLineNotFound_Routing ( - 89125 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingPathNotAvailable_Routing ( - 89124 ) #
# Skipping MacroDefinition: DAQmxErrorRoutingHardwareBusy_Routing ( - 89123 ) #
# Skipping MacroDefinition: DAQmxErrorRequestedSignalInversionForRoutingNotPossible_Routing ( - 89122 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRoutingDestinationTerminalName_Routing ( - 89121 ) #
# Skipping MacroDefinition: DAQmxErrorInvalidRoutingSourceTerminalName_Routing ( - 89120 ) #
# Skipping MacroDefinition: DAQmxErrorServiceLocatorNotAvailable_Routing ( - 88907 ) #
# Skipping MacroDefinition: DAQmxErrorCouldNotConnectToServer_Routing ( - 88900 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNameContainsSpacesOrPunctuation_Routing ( - 88720 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNameContainsNonprintableCharacters_Routing ( - 88719 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNameIsEmpty_Routing ( - 88718 ) #
# Skipping MacroDefinition: DAQmxErrorDeviceNameNotFound_Routing ( - 88717 ) #
# Skipping MacroDefinition: DAQmxErrorLocalRemoteDriverVersionMismatch_Routing ( - 88716 ) #
# Skipping MacroDefinition: DAQmxErrorDuplicateDeviceName_Routing ( - 88715 ) #
# Skipping MacroDefinition: DAQmxErrorRuntimeAborting_Routing ( - 88710 ) #
# Skipping MacroDefinition: DAQmxErrorRuntimeAborted_Routing ( - 88709 ) #
# Skipping MacroDefinition: DAQmxErrorResourceNotInPool_Routing ( - 88708 ) #
# Skipping MacroDefinition: DAQmxErrorDriverDeviceGUIDNotFound_Routing ( - 88705 ) #
# Skipping MacroDefinition: DAQmxErrorPALUSBTransactionError ( - 50808 ) #
# Skipping MacroDefinition: DAQmxErrorPALIsocStreamBufferError ( - 50807 ) #
# Skipping MacroDefinition: DAQmxErrorPALInvalidAddressComponent ( - 50806 ) #
# Skipping MacroDefinition: DAQmxErrorPALSharingViolation ( - 50805 ) #
# Skipping MacroDefinition: DAQmxErrorPALInvalidDeviceState ( - 50804 ) #
# Skipping MacroDefinition: DAQmxErrorPALConnectionReset ( - 50803 ) #
# Skipping MacroDefinition: DAQmxErrorPALConnectionAborted ( - 50802 ) #
# Skipping MacroDefinition: DAQmxErrorPALConnectionRefused ( - 50801 ) #
# Skipping MacroDefinition: DAQmxErrorPALBusResetOccurred ( - 50800 ) #
# Skipping MacroDefinition: DAQmxErrorPALWaitInterrupted ( - 50700 ) #
# Skipping MacroDefinition: DAQmxErrorPALMessageUnderflow ( - 50651 ) #
# Skipping MacroDefinition: DAQmxErrorPALMessageOverflow ( - 50650 ) #
# Skipping MacroDefinition: DAQmxErrorPALThreadAlreadyDead ( - 50604 ) #
# Skipping MacroDefinition: DAQmxErrorPALThreadStackSizeNotSupported ( - 50603 ) #
# Skipping MacroDefinition: DAQmxErrorPALThreadControllerIsNotThreadCreator ( - 50602 ) #
# Skipping MacroDefinition: DAQmxErrorPALThreadHasNoThreadObject ( - 50601 ) #
# Skipping MacroDefinition: DAQmxErrorPALThreadCouldNotRun ( - 50600 ) #
# Skipping MacroDefinition: DAQmxErrorPALSyncAbandoned ( - 50551 ) #
# Skipping MacroDefinition: DAQmxErrorPALSyncTimedOut ( - 50550 ) #
# Skipping MacroDefinition: DAQmxErrorPALReceiverSocketInvalid ( - 50503 ) #
# Skipping MacroDefinition: DAQmxErrorPALSocketListenerInvalid ( - 50502 ) #
# Skipping MacroDefinition: DAQmxErrorPALSocketListenerAlreadyRegistered ( - 50501 ) #
# Skipping MacroDefinition: DAQmxErrorPALDispatcherAlreadyExported ( - 50500 ) #
# Skipping MacroDefinition: DAQmxErrorPALDMALinkEventMissed ( - 50450 ) #
# Skipping MacroDefinition: DAQmxErrorPALBusError ( - 50413 ) #
# Skipping MacroDefinition: DAQmxErrorPALRetryLimitExceeded ( - 50412 ) #
# Skipping MacroDefinition: DAQmxErrorPALTransferOverread ( - 50411 ) #
# Skipping MacroDefinition: DAQmxErrorPALTransferOverwritten ( - 50410 ) #
# Skipping MacroDefinition: DAQmxErrorPALPhysicalBufferFull ( - 50409 ) #
# Skipping MacroDefinition: DAQmxErrorPALPhysicalBufferEmpty ( - 50408 ) #
# Skipping MacroDefinition: DAQmxErrorPALLogicalBufferFull ( - 50407 ) #
# Skipping MacroDefinition: DAQmxErrorPALLogicalBufferEmpty ( - 50406 ) #
# Skipping MacroDefinition: DAQmxErrorPALTransferAborted ( - 50405 ) #
# Skipping MacroDefinition: DAQmxErrorPALTransferStopped ( - 50404 ) #
# Skipping MacroDefinition: DAQmxErrorPALTransferInProgress ( - 50403 ) #
# Skipping MacroDefinition: DAQmxErrorPALTransferNotInProgress ( - 50402 ) #
# Skipping MacroDefinition: DAQmxErrorPALCommunicationsFault ( - 50401 ) #
# Skipping MacroDefinition: DAQmxErrorPALTransferTimedOut ( - 50400 ) #
# Skipping MacroDefinition: DAQmxErrorPALMemoryHeapNotEmpty ( - 50355 ) #
# Skipping MacroDefinition: DAQmxErrorPALMemoryBlockCheckFailed ( - 50354 ) #
# Skipping MacroDefinition: DAQmxErrorPALMemoryPageLockFailed ( - 50353 ) #
# Skipping MacroDefinition: DAQmxErrorPALMemoryFull ( - 50352 ) #
# Skipping MacroDefinition: DAQmxErrorPALMemoryAlignmentFault ( - 50351 ) #
# Skipping MacroDefinition: DAQmxErrorPALMemoryConfigurationFault ( - 50350 ) #
# Skipping MacroDefinition: DAQmxErrorPALDeviceInitializationFault ( - 50303 ) #
# Skipping MacroDefinition: DAQmxErrorPALDeviceNotSupported ( - 50302 ) #
# Skipping MacroDefinition: DAQmxErrorPALDeviceUnknown ( - 50301 ) #
# Skipping MacroDefinition: DAQmxErrorPALDeviceNotFound ( - 50300 ) #
# Skipping MacroDefinition: DAQmxErrorPALFeatureDisabled ( - 50265 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentBusy ( - 50264 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentAlreadyInstalled ( - 50263 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentNotUnloadable ( - 50262 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentNeverLoaded ( - 50261 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentAlreadyLoaded ( - 50260 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentCircularDependency ( - 50259 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentInitializationFault ( - 50258 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentImageCorrupt ( - 50257 ) #
# Skipping MacroDefinition: DAQmxErrorPALFeatureNotSupported ( - 50256 ) #
# Skipping MacroDefinition: DAQmxErrorPALFunctionNotFound ( - 50255 ) #
# Skipping MacroDefinition: DAQmxErrorPALFunctionObsolete ( - 50254 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentTooNew ( - 50253 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentTooOld ( - 50252 ) #
# Skipping MacroDefinition: DAQmxErrorPALComponentNotFound ( - 50251 ) #
# Skipping MacroDefinition: DAQmxErrorPALVersionMismatch ( - 50250 ) #
# Skipping MacroDefinition: DAQmxErrorPALFileFault ( - 50209 ) #
# Skipping MacroDefinition: DAQmxErrorPALFileWriteFault ( - 50208 ) #
# Skipping MacroDefinition: DAQmxErrorPALFileReadFault ( - 50207 ) #
# Skipping MacroDefinition: DAQmxErrorPALFileSeekFault ( - 50206 ) #
# Skipping MacroDefinition: DAQmxErrorPALFileCloseFault ( - 50205 ) #
# Skipping MacroDefinition: DAQmxErrorPALFileOpenFault ( - 50204 ) #
# Skipping MacroDefinition: DAQmxErrorPALDiskFull ( - 50203 ) #
# Skipping MacroDefinition: DAQmxErrorPALOSFault ( - 50202 ) #
# Skipping MacroDefinition: DAQmxErrorPALOSInitializationFault ( - 50201 ) #
# Skipping MacroDefinition: DAQmxErrorPALOSUnsupported ( - 50200 ) #
# Skipping MacroDefinition: DAQmxErrorPALCalculationOverflow ( - 50175 ) #
# Skipping MacroDefinition: DAQmxErrorPALHardwareFault ( - 50152 ) #
# Skipping MacroDefinition: DAQmxErrorPALFirmwareFault ( - 50151 ) #
# Skipping MacroDefinition: DAQmxErrorPALSoftwareFault ( - 50150 ) #
# Skipping MacroDefinition: DAQmxErrorPALMessageQueueFull ( - 50108 ) #
# Skipping MacroDefinition: DAQmxErrorPALResourceAmbiguous ( - 50107 ) #
# Skipping MacroDefinition: DAQmxErrorPALResourceBusy ( - 50106 ) #
# Skipping MacroDefinition: DAQmxErrorPALResourceInitialized ( - 50105 ) #
# Skipping MacroDefinition: DAQmxErrorPALResourceNotInitialized ( - 50104 ) #
# Skipping MacroDefinition: DAQmxErrorPALResourceReserved ( - 50103 ) #
# Skipping MacroDefinition: DAQmxErrorPALResourceNotReserved ( - 50102 ) #
# Skipping MacroDefinition: DAQmxErrorPALResourceNotAvailable ( - 50101 ) #
# Skipping MacroDefinition: DAQmxErrorPALResourceOwnedBySystem ( - 50100 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadToken ( - 50020 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadThreadMultitask ( - 50019 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadLibrarySpecifier ( - 50018 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadAddressSpace ( - 50017 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadWindowType ( - 50016 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadAddressClass ( - 50015 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadWriteCount ( - 50014 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadWriteOffset ( - 50013 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadWriteMode ( - 50012 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadReadCount ( - 50011 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadReadOffset ( - 50010 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadReadMode ( - 50009 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadCount ( - 50008 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadOffset ( - 50007 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadMode ( - 50006 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadDataSize ( - 50005 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadPointer ( - 50004 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadSelector ( - 50003 ) #
# Skipping MacroDefinition: DAQmxErrorPALBadDevice ( - 50002 ) #
# Skipping MacroDefinition: DAQmxErrorPALIrrelevantAttribute ( - 50001 ) #
# Skipping MacroDefinition: DAQmxErrorPALValueConflict ( - 50000 ) #
# Skipping MacroDefinition: DAQmxWarningPALValueConflict ( 50000 ) #
# Skipping MacroDefinition: DAQmxWarningPALIrrelevantAttribute ( 50001 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadDevice ( 50002 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadSelector ( 50003 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadPointer ( 50004 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadDataSize ( 50005 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadMode ( 50006 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadOffset ( 50007 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadCount ( 50008 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadReadMode ( 50009 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadReadOffset ( 50010 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadReadCount ( 50011 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadWriteMode ( 50012 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadWriteOffset ( 50013 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadWriteCount ( 50014 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadAddressClass ( 50015 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadWindowType ( 50016 ) #
# Skipping MacroDefinition: DAQmxWarningPALBadThreadMultitask ( 50019 ) #
# Skipping MacroDefinition: DAQmxWarningPALResourceOwnedBySystem ( 50100 ) #
# Skipping MacroDefinition: DAQmxWarningPALResourceNotAvailable ( 50101 ) #
# Skipping MacroDefinition: DAQmxWarningPALResourceNotReserved ( 50102 ) #
# Skipping MacroDefinition: DAQmxWarningPALResourceReserved ( 50103 ) #
# Skipping MacroDefinition: DAQmxWarningPALResourceNotInitialized ( 50104 ) #
# Skipping MacroDefinition: DAQmxWarningPALResourceInitialized ( 50105 ) #
# Skipping MacroDefinition: DAQmxWarningPALResourceBusy ( 50106 ) #
# Skipping MacroDefinition: DAQmxWarningPALResourceAmbiguous ( 50107 ) #
# Skipping MacroDefinition: DAQmxWarningPALFirmwareFault ( 50151 ) #
# Skipping MacroDefinition: DAQmxWarningPALHardwareFault ( 50152 ) #
# Skipping MacroDefinition: DAQmxWarningPALOSUnsupported ( 50200 ) #
# Skipping MacroDefinition: DAQmxWarningPALOSFault ( 50202 ) #
# Skipping MacroDefinition: DAQmxWarningPALFunctionObsolete ( 50254 ) #
# Skipping MacroDefinition: DAQmxWarningPALFunctionNotFound ( 50255 ) #
# Skipping MacroDefinition: DAQmxWarningPALFeatureNotSupported ( 50256 ) #
# Skipping MacroDefinition: DAQmxWarningPALComponentInitializationFault ( 50258 ) #
# Skipping MacroDefinition: DAQmxWarningPALComponentAlreadyLoaded ( 50260 ) #
# Skipping MacroDefinition: DAQmxWarningPALComponentNotUnloadable ( 50262 ) #
# Skipping MacroDefinition: DAQmxWarningPALMemoryAlignmentFault ( 50351 ) #
# Skipping MacroDefinition: DAQmxWarningPALMemoryHeapNotEmpty ( 50355 ) #
# Skipping MacroDefinition: DAQmxWarningPALTransferNotInProgress ( 50402 ) #
# Skipping MacroDefinition: DAQmxWarningPALTransferInProgress ( 50403 ) #
# Skipping MacroDefinition: DAQmxWarningPALTransferStopped ( 50404 ) #
# Skipping MacroDefinition: DAQmxWarningPALTransferAborted ( 50405 ) #
# Skipping MacroDefinition: DAQmxWarningPALLogicalBufferEmpty ( 50406 ) #
# Skipping MacroDefinition: DAQmxWarningPALLogicalBufferFull ( 50407 ) #
# Skipping MacroDefinition: DAQmxWarningPALPhysicalBufferEmpty ( 50408 ) #
# Skipping MacroDefinition: DAQmxWarningPALPhysicalBufferFull ( 50409 ) #
# Skipping MacroDefinition: DAQmxWarningPALTransferOverwritten ( 50410 ) #
# Skipping MacroDefinition: DAQmxWarningPALTransferOverread ( 50411 ) #
# Skipping MacroDefinition: DAQmxWarningPALDispatcherAlreadyExported ( 50500 ) #
# Skipping MacroDefinition: DAQmxWarningPALSyncAbandoned ( 50551 ) #

const int8 = UInt8
const uInt8 = Cuchar
const int16 = Int16
const uInt16 = UInt16
const int32 = Cint
const uInt32 = UInt32
const float32 = Cfloat
const float64 = Cdouble
const int64 = Clonglong
const uInt64 = Culonglong

mutable struct CVITime
    lsb::uInt64
    msb::int64
end

mutable struct CVIAbsoluteTime
    _CVIAbsoluteTime::NTuple{4, uInt32}
end

#const CVIAbsoluteTime = Void
const bool32 = Bool32
const TaskHandle = Ptr{Void}
const CalHandle = uInt32
const DAQmxEveryNSamplesEventCallbackPtr = Ptr{Void}
const DAQmxDoneEventCallbackPtr = Ptr{Void}
const DAQmxSignalEventCallbackPtr = Ptr{Void}
