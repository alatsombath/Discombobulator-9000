[Variables]

Bands=9
; Number of bars - Activate Discombobulator 9000\GenerateBands.ini skin after changing this value

RoundlineLength=12
RoundlineGap=4

CenterOffset=0
; Distance from the center of the eye

AverageSize=3
; Average sound levels over time to provide continuity

LoudnessEqualization=1
; Increases visibility for quiet audio sources when applicable

FFTSize=10240
FFTOverlap="(#FFTSize#-512)"
FFTAttack=45
FFTDecay=455
FreqMin=20
FreqMax=20000
Sensitivity=18
; http://docs.rainmeter.net/manual-beta/plugins/audiolevel

MusicPlayer=None
; Music player process name

Colors=Random
; Single, Random, Custom, Individual, IndivRand, Wallpaper, Taskbar

ColorsPlugin=None
; None, Chameleon (Wallpaper), SysColor (Taskbar)

WallpaperColorSource=Avg
; Avg, FG1, BG1, FG2, BG2

PaletteColor1=255,0,0
PaletteColor2=0,255,0
PaletteColor3=0,0,255
PaletteColor4=0,0,0

TransitionTime=6
hBlendingMultiplier=0.4
vBlendingMultiplier=0.1

DecayEffect=1
DecayThreshold=25
DecaySustain=45
DecayDuration=455

FirstBandIndex=1

; Environment variables for settings window
SkinGroup=Discombobulator9000
Config=Discombobulator 9000
ConfigPath=#ROOTCONFIGPATH##Config#.ini
WriteVariable=PaletteColor1
Invert=0
Channel=Avg
Port=Output
ID=
