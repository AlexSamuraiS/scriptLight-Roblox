local lightScript = script.Parent

local lightOne = lightScript.LightOne
local lightTwo = lightScript.LightTwo
local lightThree = lightScript.LightThree
local lightFour = lightScript.LightFour
local timer = 60 --seconds
local transOn = 0
local transOff = 0.9

while true do
    wait(1)
    if timer == 60 then
        wait(0.5)
        lightOne.Green.SpotLight.Enabled = true
        lightOne.Green.Transparency = transOn
        lightTwo.Red.SpotLight.Enabled = true
        lightTwo.Red.Transparency = transOn
        lightThree.Green.SpotLight.Enabled = true
        lightThree.Green.Transparency = transOn
        lightFour.Red.SpotLight.Enabled = true
        lightFour.Red.Transparency = transOn
    elseif timer == 30 then 
        wait(0.5)
        --Transparency off for the first if
        lightOne.Green.Transparency = transOff
        lightTwo.Red.Transparency = transOff
        lightThree.Green.Transparency = transOff
        lightFour.Red.Transparency = transOff
        --Transparency on for all the lights yellow
        lightOne.Yellow.Transparency = transOn
        lightTwo.Yellow.Transparency = transOn
        lightThree.Yellow.Transparency = transOn
        lightFour.Yellow.Transparency = transOn
        --Turing all the lights yellow to stop all the vehicle
        lightOne.Green.SpotLight.Enabled = false
        lightOne.Yellow.SpotLight.Enabled = true
        lightTwo.Red.SpotLight.Enabled = false
        lightTwo.Yellow.SpotLight.Enabled = true
        lightThree.Green.SpotLight.Enabled = false
        lightThree.Yellow.SpotLight.Enabled = true
        lightFour.Red.SpotLight.Enabled = false
        lightFour.Yellow.SpotLight.Enabled = true
    elseif timer == 25 then
        wait(0.5)
        -- Transaprency off for the second if
        lightOne.Yellow.Transparency = transOff
        lightTwo.Yellow.Transparency = transOff
        lightThree.Yellow.Transparency = transOff
        lightFour.Yellow.Transparency = transOff
        -- Transparency for the second if
        lightOne.Red.Transparency = transOn
        lightTwo.Green.Transparency = transOn
        lightThree.Red.Transparency = transOn
        lightFour.Green.Transparency = transOn
        -- second if
        lightOne.Red.SpotLight.Enabled = true
        lightOne.Yellow.SpotLight.Enabled = false
        lightTwo.Green.SpotLight.Enabled = true
        lightTwo.Yellow.SpotLight.Enabled = false
        lightThree.Red.SpotLight.Enabled = true
        lightThree.Yellow.SpotLight.Enabled = false
        lightFour.Green.SpotLight.Enabled = true
        lightFour.Yellow.SpotLight.Enabled = false
    end
    timer = timer - 1 
    --print(timer)
    if    timer == 0 then
        timer = 60
        lightOne.Red.SpotLight.Enabled = false
        lightTwo.Green.SpotLight.Enabled = false
        lightThree.Red.SpotLight.Enabled = false
        lightFour.Green.SpotLight.Enabled = false
        lightOne.Red.Transparency = transOff
        lightTwo.Green.Transparency = transOff
        lightThree.Red.Transparency = transOff
        lightFour.Green.Transparency = transOff
    end
end