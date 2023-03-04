local CAMxx = 0.67;
local CAMyy = 0.67;
local xx = 420;
local yy = 450;
local xx2 = 700;
local yy2 = 450;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
			setProperty('defaultCamZoom', CAMyy)	
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
			setProperty('defaultCamZoom', CAMxx)	
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
function onCreate()
makeLuaSprite('angry', 'wadsaaa', -600, -300)
setScrollFactor('angry', 0.9, 0.9)
addLuaSprite('angry', false)

makeLuaSprite('shader2', 'BlackShader', -600, -300);
	scaleObject('shader2', 2, 2);
	setScrollFactor('shader2', 0.9, 0.9);
	addLuaSprite('shader2', true)

makeAnimatedLuaSprite('fire1','tabi/fire/fireglow',-90,50);
    setScrollFactor('fire1',1,1);
    scaleObject('fire1', 1.5,1.5);
    addAnimationByPrefix('fire1','Idle','FireStage',24,true);
	addLuaSprite('fire1',false);
	
	makeAnimatedLuaSprite('fire2','tabi/fire/fireglow',150,50);
    setScrollFactor('fire2',1,1);
    scaleObject('fire2', 1.54,1.45);
    addAnimationByPrefix('fire2','Idle','FireStage',30,true);
	addLuaSprite('fire2',false);
	
	makeAnimatedLuaSprite('fire3','tabi/fire/fireglow',390,50);
    setScrollFactor('fire3',1,1);
    scaleObject('fire3', 1.6,1.6);
    addAnimationByPrefix('fire3','Idle','FireStage',20,true);
	addLuaSprite('fire3',false);
	
	makeAnimatedLuaSprite('fire4','tabi/fire/fireglow',630,50);
    setScrollFactor('fire4',1,1);
    scaleObject('fire4', 1.1,1.1);
    addAnimationByPrefix('fire4','Idle','FireStage',10,true);
	addLuaSprite('fire4',false);
	
	makeAnimatedLuaSprite('fire5','tabi/fire/fireglow',870,50);
    setScrollFactor('fire5',1,1);
    scaleObject('fire5', 1.4,1.4);
    addAnimationByPrefix('fire5','Idle','FireStage',40,true);
	addLuaSprite('fire5',false);
	
	makeAnimatedLuaSprite('fire6','tabi/fire/fireglow',-330,50);
    setScrollFactor('fire6',1,1);
    scaleObject('fire6', 1.5,1.5);
    addAnimationByPrefix('fire6','Idle','FireStage',60,true);
	addLuaSprite('fire6',false);
	
	makeAnimatedLuaSprite('fire7','tabi/fire/fireglow',-630,50);
    setScrollFactor('fire7',1,1);
    scaleObject('fire7', 1.6,1.6);
    addAnimationByPrefix('fire7','Idle','FireStage',50,true);
	addLuaSprite('fire7',false);
	
	makeAnimatedLuaSprite('fire8','tabi/fire/fireglow',-930,50);
    setScrollFactor('fire8',1,1);
    scaleObject('fire8', 1,1);
    addAnimationByPrefix('fire8','Idle','FireStage',12,true);
	addLuaSprite('fire8',false);
	
	makeAnimatedLuaSprite('fire9','tabi/fire/fireglow',-1130,50);
    setScrollFactor('fire9',1,1);
    scaleObject('fire9', 1.7,1.7);
    addAnimationByPrefix('fire9','Idle','FireStage',8,true);
	addLuaSprite('fire9',false);
	
	makeAnimatedLuaSprite('fire10','tabi/fire/fireglow',-1430,50);
    setScrollFactor('fire10',1,1);
    scaleObject('fire10', 1.5,1.5);
    addAnimationByPrefix('fire10','Idle','FireStage',35,true);
	addLuaSprite('fire10',false);
	
	makeAnimatedLuaSprite('fire11','tabi/fire/fireglow',-1730,50);
    setScrollFactor('fire11', 1,1);
    scaleObject('fire11', 1.3,1.3);
    addAnimationByPrefix('fire11','Idle','FireStage',24,true);
	addLuaSprite('fire11',false);
	
	makeAnimatedLuaSprite('fire12','tabi/fire/fireglow',-2030,50);
    setScrollFactor('fire12',1,1);
    scaleObject('fire12', 1.2,1.2);
    addAnimationByPrefix('fire12','Idle','FireStage',28,true);
	addLuaSprite('fire12',false);
	
end
function opponentNoteHit()
if dadName == 'tabi genocide' then
cameraShake('hud', 0.0075, 0.5)
cameraShake('game', 0.0075, 0.5)
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.03);
        end
    end
    if dadName == 'tabi noshake' then
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.03);
        end
    end
end
function onBeatHit()
objectPlayAnimation('fire1','idle',true)
end
function goodNoteHit()
	health = getProperty('health')
	if getProperty('health') > 0.0 then
        setProperty('health', health+ 0.025);
        end
    end
local BeatPorcent = 0
local BeatStyle = 0
local BeatStrentghGame = 0.07
local BeatStrentghHUD = 0.07

local Beated = false

function onStepHit()
    if curStep/4 % BeatPorcent == 0 then
        if BeatStyle == 0 then
            if Beated == false then
                Beated = true
                triggerEvent('Add Camera Zoom',BeatStrentghGame,BeatStrentghHUD)
            end
        elseif BeatStyle == 1 then
            if (curStep/4) % 4 ~= 0 then
                if  curStep/4 % BeatPorcent == 0 and Beated == false then
                    triggerEvent('Add Camera Zoom',BeatStrentghGame  * BeatValue,BeatStrentghHUD * BeatValue)
                    BeatValue = BeatValue * -1
                    Beated = true
                end
            else
                if (curStep/4) % BeatPorcent == 0 and Beated == false then
                    triggerEvent('Add Camera Zoom',BeatStrentghGame * BeatValue + (0.025 * BeatValue),BeatStrentghHUD * BeatValue + (0.03 * BeatValue))
                    BeatValue = BeatValue * -1
                    Beated = true
                end
            end
        end
    else
        Beated = false
    end
    if curStep == 129 then
    BeatPorcent = -2
            BeatStyle = 0
            end
            if curStep == 729 then
            BeatPorcent = 0
            BeatStyle = 0
            end
            if curStep == 897 then
            BeatPorcent = -2
            BeatStyle = 0
            end
            if curStep == 1665 then
            BeatPorcent = 0
            BeatStyle = 0
            end
            if curStep == 1697 then
            BeatPorcent = 1
            BeatStyle = 0
            end
            if curStep == 1953 then
            BeatPorcent = 0
            BeatStyle = 0
            end
            end