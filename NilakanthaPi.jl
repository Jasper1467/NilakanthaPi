global a = 2
global b = 3
global c = 4

global previousResult = 3
global operatorSwitch = 0

function clc()
    if Sys.iswindows()
        return read(run(`powershell cls`), String)
    elseif Sys.isunix()
        return read(run(`clear`), String)
    elseif Sys.islinux()
        return read(run(`printf "\033c"`), String)
    end
end

while true
    clc()

    if operatorSwitch == 0
        currentResult = previousResult + (4 / (a * b * c))
        global operatorSwitch = 1
    else
        currentResult = previousResult - (4 / (a * b * c))
        global operatorSwitch = 0
    end

    println(currentResult)

    global a += 2
    global b += 2
    global c += 2

    global previousResult = currentResult
end
