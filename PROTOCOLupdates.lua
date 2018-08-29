if gg.isVisible(true) then
   menuk = 1
    gg.setVisible(false)
end

print ('scripted by ningen (updates coming soon!)')

START = 1

function START()
menu = gg.choice({'Silent Aimbot','Aimbot','Magic Bullets','EXIT'},nil,' script made by ningen!')
if menu == 1 then SA() end
if menu == 2 then AB() end
if menu == 3 then mbullets1() end
if menu == 4 then os.exit() end
if menu == nil then END() end
menuk = -1
end

function SA()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('3', gg.TYPE_FLOAT)
gg.getResults(39)
gg.editAll(500, gg.TYPE_FLOAT)
gg.toast('Silent Aimbot On!')
gg.clearResults()
START()
end

function AB()
local old = gg.getRanges();
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('1', gg.TYPE_FLOAT)
t = gg.getResults(100)
t[83].value = '3000'
t[83].freeze = true
t[83].freezType = gg.FREEZE_NORMAL
print('Replaced: ', gg.addListItems(t))
gg.toast('Aimbot On!')
gg.setRanges(old)
START()
end

function mbullets1()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('2', gg.TYPE_FLOAT)
local results = gg.getResults(22)
local excludedResultsNumber = 20
if results[excludedResultsNumber] ~= nil then
  results[excludedResultsNumber] = nil
end
for k, v in pairs(results) do
  v.value = '-2'
end
print('setValues :', gg.setValues(results))
START()
end

function END()
print('script by ningen! :)')
end

if menuk == 1 then START() end