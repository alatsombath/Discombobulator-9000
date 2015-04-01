[MeasureAudioRepeat]
Measure=Plugin
Plugin=AudioLevel
Parent=MeasureAudio
Type=Band
BandIdx=Repeat

[MeterRoundlineRepeat]
Meter=Roundline
MeterStyle=MeterRoundline
LineStart=(#CenterOffset#+(#RoundlineLength#*(Abs([Invert]-Repeat)-1))+(#RoundlineGap#*(Abs([Invert]-Repeat)-1)))
LineLength=(#CenterOffset#+(#RoundlineLength#*Abs([Invert]-Repeat))+(#RoundlineGap#*(Abs([Invert]-Repeat)-1)))