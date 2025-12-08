-- 🔹 Script: Payaso Más Valioso + Webhook DELTA EXECUTOR (Server Info)
local clownBillboards = {}
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

-- Convierte texto de ganancia ($1.2M/s, etc.) a número
local function parseRateToNumber(text)
    if not text or type(text) ~= "string" then return 0 end
    local cleaned = text:gsub("%$", ""):gsub("/s", ""):gsub("%s+", "")
    local num = tonumber(cleaned)
    if num then return num end
    local val, suf = string.match(cleaned, "([%d%.]+)([kKmMbB])")
    if not val then return 0 end
    val = tonumber(val)
    suf = suf:lower()
    if suf == "k" then val = val * 1e3
    elseif suf == "m" then val = val * 1e6
    elseif suf == "b" then val = val * 1e9 end
    return val
end

-- Formatea número a texto bonito tipo 1.2M/s
local function formatRate(num)
    if num >= 1e9 then return string.format("$%.2fB/s", num/1e9)
    elseif num >= 1e6 then return string.format("$%.2fM/s", num/1e6)
    elseif num >= 1e3 then return string.format("$%.1fK/s", num/1e3)
    else return string.format("$%d/s", num) end
end

local function cleanupClowns()
    for _, bb in pairs(clownBillboards) do
        if bb and bb.Parent then bb:Destroy() end
    end
    clownBillboards = {}
end

-- Detecta tu base para excluirla
local myBase = nil
local function detectMyBase()
    if not hrp then return end
    local closestDist = math.huge
    if workspace:FindFirstChild("Plots") then
        for _, plot in ipairs(workspace.Plots:GetChildren()) do
            if plot:IsA("Model") then
                for _, deco in ipairs(plot:GetDescendants()) do
                    if deco:IsA("TextLabel") and deco.Text == "YOUR BASE" then
                        local part = deco.Parent:IsA("BasePart") and deco.Parent or deco:FindFirstAncestorWhichIsA("BasePart")
                        if part then
                            local dist = (hrp.Position - part.Position).Magnitude
                            if dist < closestDist then closestDist = dist; myBase = plot end
                        end
                    end
                end
            end
        end
    end
end

local function isInsideMyBase(obj)
    return myBase and obj:IsDescendantOf(myBase)
end

-- Encuentra el payaso más valioso excluyendo tu base
local function findRichestClownExcludingMyBase()
    local richest, bestVal = nil, -math.huge
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("TextLabel") and obj.Text and obj.Text:find("/s") then
            local cur = obj
            local insideAnyBase = false
            while cur do
                local n = cur.Name:lower()
                if n:find("base") or n:find("plot") then insideAnyBase = true; break end
                cur = cur.Parent
            end
            if insideAnyBase and not isInsideMyBase(obj) then
                local val = parseRateToNumber(obj.Text)
                if val and val > bestVal then
                    local model = obj:FindFirstAncestorOfClass("Model")
                    if model and model:FindFirstChildWhichIsA("BasePart") then
                        richest = {part = model:FindFirstChildWhichIsA("BasePart"), value = val}
                        bestVal = val
                    end
                end
            end
        end
    end
    return richest and richest.part or nil, richest and richest.value or 0
end

-- 🔹 ENVÍA AL WEBHOOK CON LINK, JOBID COPIABLE Y SERVER INFO SEGÚN VALOR
local function sendClownToWebhook(clownName, valueNumber, prettyValue)
    local WEBHOOK_LOW = "https://discord.com/api/webhooks/1436961139886919722/0WVXb7qV_Mj9b8Tya-H3ArLbnJXe4f1cShpZpoEW6ifebJFx-E2VivkMQXW4u516DAal"
    local WEBHOOK_HIGH = "https://discord.com/api/webhooks/1447414654316839055/aTXHinE4wmJlDB6XHTg1GaHvFvehqPjdEx-19OnKqTL8BULVPL938ld9PlfZfZNmL0Rj"

    local chosenWebhook = nil
    if valueNumber >= 500000 and valueNumber <= 9000000 then
        chosenWebhook = WEBHOOK_LOW
    elseif valueNumber >= 10000000 then
        chosenWebhook = WEBHOOK_HIGH
    else
        return -- no enviar si no cumple rango
    end

    local placeId = game.PlaceId
    local jobId = game.JobId
    local joinUrl = "https://kebabman.vercel.app/start?placeId=" .. placeId .. "&gameInstanceId=" .. jobId

    local playerCount = #Players:GetPlayers()
    local maxPlayers = Players.MaxPlayers
    local playerText = playerCount .. "/" .. maxPlayers .. " Players"

    local data = {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "Brainrot Más Valioso",
            ["fields"] = {
                {["name"]="Nombre",["value"]=clownName,["inline"]=true},
                {["name"]="Precio",["value"]=prettyValue,["inline"]=true},
                {["name"]="Unirse al servidor",["value"]="[Click aquí para unirse](" .. joinUrl .. ")",["inline"]=false},
                {["name"]="JobId",["value"]="`"..jobId.."`",["inline"]=false},
                {["name"]="Server Info",["value"]=playerText,["inline"]=false}
            },
            ["color"]=16711680,
            ["timestamp"]=os.date("!%Y-%m-%dT%H:%M:%SZ")
        }}
    }

    local jsonData = game:GetService("HttpService"):JSONEncode(data)

    request({
        Url = chosenWebhook,
        Method = "POST",
        Headers = {["Content-Type"]="application/json"},
        Body = jsonData
    })

    print("✅ Webhook enviado a la URL correcta según valor del payaso.")
end

-- Muestra el billboard y envía webhook según valor
local function showMostValuableClown()
    cleanupClowns()
    local part, val = findRichestClownExcludingMyBase()
    if not part then 
        return warn("❌ No se encontró payaso valioso") 
    end

    local closestClown, closestDist = nil, math.huge
    local plots = workspace:FindFirstChild("Plots")
    if plots then
        for _, plot in pairs(plots:GetChildren()) do
            for _, obj in pairs(plot:GetChildren()) do
                if obj:FindFirstChild("RootPart") and obj:FindFirstChild("VfxInstance") then
                    local dist = (obj.RootPart.Position - part.Position).Magnitude
                    if dist < closestDist then 
                        closestDist = dist
                        closestClown = obj
                    end
                end
            end
        end
    end

    if closestClown then
        local root = closestClown.RootPart
        local billboard = Instance.new("BillboardGui", root)
        billboard.Size = UDim2.new(0, 120, 0, 40)
        billboard.Adornee = root
        billboard.AlwaysOnTop = true
        billboard.StudsOffset = Vector3.new(0, 5, 0)

        local nameLabel = Instance.new("TextLabel", billboard)
        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = closestClown.Name
        nameLabel.TextColor3 = Color3.new(1,1,1)
        nameLabel.Font = Enum.Font.GothamBold
        nameLabel.TextSize = 16

        local prettyVal = formatRate(val)
        local valLabel = Instance.new("TextLabel", billboard)
        valLabel.Size = UDim2.new(1, 0, 0.5, 0)
        valLabel.Position = UDim2.new(0, 0, 0.5, 0)
        valLabel.BackgroundTransparency = 1
        valLabel.Text = prettyVal
        valLabel.TextColor3 = Color3.fromRGB(0, 170, 255)
        valLabel.Font = Enum.Font.GothamBold
        valLabel.TextSize = 18

        clownBillboards[root] = billboard

        -- Enviar webhook según valor
        sendClownToWebhook(closestClown.Name, val, prettyVal)
    end
end

-- Detecta tu base y ejecuta la búsqueda
detectMyBase()
showMostValuableClown()




-- Script dentro de StarterGui > ScreenGui > LocalScript

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer
local placeId = game.PlaceId

-- Crear GUI y botón
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Hub"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local serverHopButton = Instance.new("TextButton")
serverHopButton.Size = UDim2.new(0, 200, 0, 50)
serverHopButton.Position = UDim2.new(0.5, -100, 0.5, -25)
serverHopButton.Text = "Server Hop"
serverHopButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
serverHopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
serverHopButton.Font = Enum.Font.SourceSansBold
serverHopButton.TextScaled = true
serverHopButton.Parent = screenGui

-- ===================================
-- Función serverHop con control de servidores ya intentados
-- ===================================
local triedServers = {}  -- para guardar IDs de servidores ya intentados

local function serverHop()
    local success, response = pcall(function()
        return HttpService:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/"..placeId.."/servers/Public?sortOrder=Asc&limit=100"))
    end)

    if success and response and response.data then
        local servers = response.data
        local targetServer

        -- Buscar un servidor que no sea el actual y que no hayamos intentado antes
        for _, server in pairs(servers) do
            if server.id ~= game.JobId and not triedServers[server.id] then
                targetServer = server.id
                break
            end
        end

        if targetServer then
            triedServers[targetServer] = true  -- marcar como intentado
            TeleportService:TeleportToPlaceInstance(placeId, targetServer, player)
        else
            warn("No se encontró un servidor nuevo disponible.")
        end
    else
        warn("Error al obtener servidores: "..tostring(response))
    end
end

serverHopButton.MouseButton1Click:Connect(serverHop)

-- ==============================
-- Activación automática después de 4s y luego cada 1s
-- ==============================
spawn(function()
    wait(4)  -- esperar 4 segundos antes del primer intento
    pcall(serverHop)  -- primera activación

    while true do
        wait(1)
        pcall(serverHop)  -- ejecuta cada 1 segundo, ignorando errores
    end
end)

