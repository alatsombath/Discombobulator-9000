function Update()
  local roundlineLength, roundlineGap = SKIN:ParseFormula(SKIN:GetVariable("RoundlineLength")), SKIN:ParseFormula(SKIN:GetVariable("RoundlineGap"))
  local centerOffset = SKIN:ParseFormula(SKIN:GetVariable("CenterOffset"))
  local invert = SKIN:ParseFormula(SKIN:GetVariable("Invert"))
  local meterName, lowerLimit, upperLimit = {}, SKIN:ParseFormula(SKIN:GetVariable("FirstBandIndex")) + 1, (SKIN:ParseFormula(SKIN:GetVariable("Bands")) - 1) + 1
  
  for i = lowerLimit, upperLimit do
    meterName[i] = "MeterRoundline" .. i-1
	if SKIN:GetMeter(meterName[i]) == nil then return 0 end
    SKIN:Bang("!SetOption", meterName[i], "Group", "Roundlines")
    SKIN:Bang("!UpdateMeter", meterName[i])
  end

  for i = lowerLimit, upperLimit do
    SKIN:Bang("!SetOption", meterName[i], "LineStart", centerOffset + (roundlineLength + roundlineGap) * i)
    SKIN:Bang("!SetOption", meterName[i], "LineLength", centerOffset + (roundlineLength * (i+1)) + (roundlineGap * i))
  end  
  SKIN:Bang("!SetOptionGroup", "Roundlines", "W", 2 * (centerOffset + (roundlineLength + roundlineGap) * (lowerLimit + upperLimit - 1)))
  SKIN:Bang("!SetOptionGroup", "Roundlines", "H", 2 * (centerOffset + (roundlineLength + roundlineGap) * (lowerLimit + upperLimit - 1)))
  SKIN:Bang("!SetOptionGroup", "Roundlines", "Solid", 1)
  SKIN:Bang("!SetOptionGroup", "Roundlines", "AntiAlias", 1)
  SKIN:Bang("!SetOptionGroup", "Roundlines", "LineColor", "255,255,255,0")
  
  SKIN:Bang("!SetOptionGroup","Roundlines","LeftMouseUpAction","#OpenSettingsWindow#")
  SKIN:Bang("!SetOptionGroup", "Roundlines", "UpdateDivider", 1)
  SKIN:Bang("!UpdateMeterGroup", "Roundlines")
end