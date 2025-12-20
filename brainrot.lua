if queue_on_teleport then
    queue_on_teleport([[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2726/afk-brainrot/main/brainrot.lua"))()
    ]])
end 


task.delay(4, function()
    game:Shutdown()
end)

-- Script: Payaso Más Valioso + FIREBASE (Server Info)
local clownBillboards = {}
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

-- 
local HttpService = game:GetService("HttpService")
local FIREBASE_URL = "https://finderbrainrot-default-rtdb.firebaseio.com"
local FIXED_PLACE_ID = 109983668079237

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

-- 🔹 ENVÍA A FIREBASE (SERVER INFO)
local function sendClownToWebhook(clownName, valueNumber, prettyValue)
    local data = {
        name = clownName,
        priceText = prettyValue,
        priceNumber = valueNumber,
        jobId = game.JobId,
        placeId = FIXED_PLACE_ID,
        serverPlayers = #Players:GetPlayers() .. "/" .. Players.MaxPlayers,
        time = os.time()
    }

    local url = FIREBASE_URL .. "/servers/current.json"

    request({
        Url = url,
        Method = "PUT",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode(data)
    })
end

-- Muestra el billboard y envía info
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

        -- ENVÍO (FIREBASE)
        sendClownToWebhook(closestClown.Name, val, prettyVal)
    end
end

-- Detecta tu base y ejecuta la búsqueda
detectMyBase()
showMostValuableClown()


