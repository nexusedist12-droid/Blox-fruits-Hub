local place = game.PlaceId

local Sea = ""

if place == 2753915549 then
Sea = "First"
print("First Sea")
elseif place == 4442272183 then
Sea = "Second"
print("Second Sea")
elseif place == 7449423635 then
Sea = "Third"
print("Third Sea")
end

if Sea == "First" then
print("Loading First Sea Script")
end

if Sea == "Second" then
print("Loading Second Sea Script")
end

if Sea == "Third" then
print("Loading Third Sea Script")
end
