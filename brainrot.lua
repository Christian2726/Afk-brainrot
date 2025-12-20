ChrisAim
chris.aim
No molestar

ChrisAim — 17/10/2025 18:45
https://rscripts.wiki/
Xeno Executor
Xeno Team
Latest Roblox Executor v1.2.80 - Xeno Executor
Xeno Executor for Roblox It is the best roblox script executor that is trusted by thousands of players in the world. it’s free, fast and designed to run most of the roblox scripts. You can use the Xeno Executor on Windows PC/Laptop. How Xeno Executor works? Whether you are a beginner or pro player in ... Read more
Latest Roblox Executor v1.2.80 - Xeno Executor
ChrisAim — 17/10/2025 18:54
loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2726/Christianscript/main/Christian.lua"))()
C4NU-NPMX-IUXB-HZYF
ChrisAim — 17/10/2025 20:02
https://create.roblox.com/store/asset/101491434169003/Steal-A-Brainrot-Map
ChrisAim — 17/10/2025 20:10
https://create.roblox.com/store/asset/70369688144234/Steal-a-Thing
ChrisAim — 19/10/2025 0:48
https://multipctabs-bf5dsdec.manus.space/
nskdjdbsjdjdj@gmail.com
ChrisAim — 20/10/2025 14:34
https://raw.githubusercontent.com/08v3/keyless/refs/heads/main/dayfarm.lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/keyless/refs/heads/main/dayfarm.lua",true))()
ChrisAim — 20/10/2025 18:15
loadstring(game:HttpGet("https://raw.githubusercontent.com/Makuscripts/Steal-A-Brainrot/refs/heads/main/SAB-OPSCRIPT.lua"))()
ChrisAim — 20/10/2025 18:38
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/keyless/refs/heads/main/dayfarm.lua",true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader2.lua", true))()
ChrisAim — 20/10/2025 19:31
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
ChrisAim — 20/10/2025 19:44
https://www.nvidia.com/en-us/drivers/
NVIDIA
Download The Latest Official NVIDIA Drivers
Download the latest official NVIDIA drivers to enhance your PC gaming experience and run apps faster.
Download The Latest Official NVIDIA Drivers
ChrisAim — 21/10/2025 21:04
eBpZrMPtR-eP63UBtzq-NtDgUaUnb
ChrisAim — 26/10/2025 14:47
leagaston27#3856683
ChrisAim — 31/10/2025 20:40
https://multimedia.easeus.com/es/voice-changer/?utm_source=elbraanks&utm_medium=youtubevideo&utm_campaign=fenghao-202411-evw-ful
EaseUS® Multimedia | La herramienta de vídeo y audio imprescindible
¡Cambia tu voz en tiempo real de forma gratuita con EaseUS VoiceWave!
¿Está buscando un modulador de voz en tiempo real gratis? EaseUS VoiceWave es el mejor cambiador de voz de IA gratuito para PC que ayuda a cambiar la voz en tiempo real en Discord, Zoom, Google Meet, Twitch, Skype, etc., Es perfecto para reuniones en línea, juegos, charlas y streaming en vivo.
mejor cambiador de voz gratuito
ChrisAim — 07/11/2025 15:21
https://chatgpt.com/share/690e70b7-b374-8007-89c6-1f1ba3056810
ChatGPT
ChatGPT - Juego roblox creación personajes
Shared via ChatGPT
Imagen
ChrisAim — 07/11/2025 20:25
https://www.mediafire.com/file/3jarrln02rha1u8/SAB+MODDED+LUCK.rbxl/file
MediaFire
SAB MODDED LUCK
SAB MODDED LUCK
ChrisAim — 07/11/2025 21:13
https://github.com/kartFr/Asset-Reuploader/releases/tag/1.4.1
GitHub
Release v1.4.1 · kartFr/Asset-Reuploader
Got rid of atomic writing (very naive to put that in lmaooo)
(actually) Fixed mesh changing colors.
Fixed case in animations where if the owner had a place it wouldn&#39;t look at the place list. (...
Release v1.4.1 · kartFr/Asset-Reuploader
ChrisAim — 08/11/2025 6:25
https://manus.im/share/c2km9WEaQQrMqAC3USh3GL?replay=1
Cómo crear un juego de Roblox con bichos y bases - Manus
Manus is the action engine that goes beyond answers to execute tasks, automate workflows, and extend your human reach.
Cómo crear un juego de Roblox con bichos y bases - Manus
ChrisAim — 08/11/2025 6:58
https://github.com/DebianArch64/DebProvision/releases
GitHub
Releases · DebianArch64/DebProvision
An alternative to Cydia Impactor and AltServer for ALL computers. - DebianArch64/DebProvision
An alternative to Cydia Impactor and AltServer for ALL computers. - DebianArch64/DebProvision
ChrisAim — 09/11/2025 19:04
https://create.roblox.com/store/asset/133982794713733/Steal-A-Kit-V13-Spooky/reviews
ChrisAim — 10/11/2025 21:35
local
Events = ReplicSt:WaitForChild( "Remotes"):WaitForChild("Events"). EventHandler
ChrisAim — 11/11/2025 0:32
https://chatgpt.com/share/6912e676-00ec-8008-a098-f32eab7646db
ChatGPT
ChatGPT - Crear pared letal Roblox
Shared via ChatGPT
Imagen
ChrisAim — 11/11/2025 0:44
local wall = script.Parent
assert(wall:IsA("BasePart"), "El script debe ir dentro de una Part.")

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

-- Configuración
local CHECKINTERVAL = 0.1
local MARGIN = 0.1
local halfSize = wall.Size * 0.5

-- Asegura que todos puedan atravesarla
wall.Anchored = true
wall.CanCollide = false
wall.Transparency = 0.5 -- opcional, para que se vea un poco
wall.Name = "AntiNoclipWall"

local function isPointInsideWall(point)
    local rel = wall.CFrame:pointToObjectSpace(point)
    return math.abs(rel.X) <= (halfSize.X + MARGIN)
        and math.abs(rel.Y) <= (halfSize.Y + MARGIN)
        and math.abs(rel.Z) <= (halfSize.Z + MARGIN)
end

local function isFullyNoClip(character)
    local total = 0
    local noclipParts = 0

    for , part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            total += 1
            if part.CanCollide == false then
                noclipParts += 1
            end
        end
    end

    -- Si la mayoría de las partes están sin colisión, el jugador tiene noclip
    return total > 0 and (noclipParts / total) > 0.7
end

local function killCharacter(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid and humanoid.Health > 0 then
        humanoid.Health = 0
    end
end

-- Bucle de detección
local accumulated = 0
RunService.Heartbeat:Connect(function(dt)
    accumulated += dt
    if accumulated < CHECKINTERVAL then return end
    accumulated = 0

    for , player in ipairs(Players:GetPlayers()) do
        local char = player.Character
        if not char then continue end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then continue end

        if isPointInsideWall(hrp.Position) and isFullyNoClip(char) then
            killCharacter(char)
        end
    end
end)
ChrisAim — 11/11/2025 20:09
https://forum.klar.gg/
klar.gg
klar.gg
ChrisAim — 25/11/2025 12:48
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<YogaDnsProfile file_format="1" product_id="1" product_min_version="127000">
	<Settings ignore_rule_if_interface_down="1" blockTcpPort53="1" clearDnsCache="1" ttlMin="0" ttlMax="2147483647" captivePortalDetection="0" interceptOthers="0">
		<DnsChecker testTarget="iana.org" testsPerTime="15" importUrls="https://yogadns.com/resolvers/resolvers.md
https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v2/public-resolvers.md
https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v2/relays.md
Expandir
LobbyGod Config.xml
2 KB
ChrisAim — 28/11/2025 15:38
chris_denno@outlook.com:Yfysfqq1!
ChrisAim — 28/11/2025 19:20
tulakdsfh@outlook.com:Theriver12@
ChrisAim — 01/12/2025 18:26
pip3 install aiogram --user
pip3 install sqlite3-bro --user
https://www.pythonanywhere.com/user/Christian8282/files/home/Christian8282/bot.py?edit
Login: PythonAnywhere
Login: PythonAnywhere
ChrisAim — 01/12/2025 20:17
https://chatgpt.com/share/692e59a2-7d7c-8012-ac8a-88482067b32e
ChatGPT
ChatGPT - Crear bot Telegram
Shared via ChatGPT
Imagen
https://chatgpt.com/share/692e59a2-7d7c-8012-ac8a-88482067b32e
ChatGPT
ChatGPT - Crear bot Telegram
Shared via ChatGPT
Imagen
from telegram import Update
from telegram.ext import ApplicationBuilder, CommandHandler, ContextTypes

TOKEN = "AQUÍ_VA_TU_TOKEN"

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("¡Bot funcionando correctamente!")

def main():
    app = ApplicationBuilder().token(TOKEN).build()
    app.add_handler(CommandHandler("start", start))
    app.run_polling()

if name == "main":
    main()
ChrisAim — 01/12/2025 22:47
pip install pyTelegramBotAPI Flask
ChrisAim — 02/12/2025 17:36
https://pastebin.com/X4T2mSCQ
Pastebin
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhan...
Pastebin.com is the number one paste tool since 2002. Pastebin is a website where you can store text online for a set period of time.
ChrisAim — 03/12/2025 19:21
https://sharemods.com/7nnx818xcqkt/Solara.7z.html#google_vignette
Download Solara
Download File Solara
ChrisAim — 03/12/2025 20:53
quiero que tomes el rol de un desarrollador de sripts para roblox, creo que diseñes un gui quiero que en la parte superior derecha agregues un botón con una x que al darle debe cerrar todo el gui, también otro botón para minimizar el script que al darle se esconda el script y una vez oculto debe quedar un circulo flotante, tanto el circulo como el gui debe poderse moverse arrastrándolo con el mouse, también debe mostrarse tanto el gui como el circulo flotante por encima de todo es decir debe verse por encima de cualquier menú e incluso debe estar por encina en del menu de pausa de roblox, queiro que dentro del gui tenga un boton llamado AlM con un sistema toggle, quiero que cuando este activado lo que vas a hacer, es que al presionar el boton de apuntar la camara se fije en la cabeza del enemigo, luego agrega otro boton dentro del gui con un sistema toggle donde al
activarlo muestra a los enemigos en highlight, en rojo
ChrisAim — 04/12/2025 0:13
https://tecnored.org/descargas/activar-hyper-v.txt
ChrisAim — 06/12/2025 20:56
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
ChrisAim — 11/12/2025 22:38
https://my-site-rdq5a649-c47352225.wix-vibe.com/
Account Flow
Home | Account Flow
ChrisAim — 14/12/2025 20:20
https://www.unknowncheats.me/forum/index.php
UnKnoWnCheaTs
UnKnoWnCheaTs - Game Hacking, Game Hacks & Game Cheats
The best site for game hacks, game cheats, and game hacking tools. Download game hacks and game cheats, explore expert game hacking tutorials, and join the #1 game hacking community.
Imagen
ChrisAim — 14/12/2025 20:37
https://github.com/SamuelTulach/tpm-spoofer
GitHub
GitHub - SamuelTulach/tpm-spoofer: Simple proof of concept kernel m...
Simple proof of concept kernel mode driver hooking tpm.sys dispatch to randomize any public key reads - SamuelTulach/tpm-spoofer
Simple proof of concept kernel mode driver hooking tpm.sys dispatch to randomize any public key reads - SamuelTulach/tpm-spoofer
ChrisAim — 16/12/2025 13:47
bibjbjjnknnnnnk@outlook.com
ChrisAim — 16/12/2025 16:13
kansisbaisbausv@outlook.com
ChrisAim — 16/12/2025 23:05
https://chatgpt.com/share/6942481a-7854-8006-9709-172fc4d77d3f
ChatGPT
ChatGPT - Script A y B integración
Shared via ChatGPT
Imagen
69424857d0ea881f402ee7ce
$2a$10$1LiioJ/tr4g8gxoMGpcMQukehqpzFGR0Kc74J.xWkG1TZKzVpK4Mi
ChrisAim — 17/12/2025 13:18
https://chatgpt.com/share/69430ffb-9e9c-8006-83e6-ca8076038ba5
ChatGPT
ChatGPT - Envío de datos a script
Shared via ChatGPT
Imagen
ChrisAim — ayer a las 15:47
https://finderbrainrot-default-rtdb.firebaseio.com/
Sign in - Google Accounts
ChrisAim — ayer a las 16:47
https://dash.cloudflare.com/
ChrisAim — ayer a las 17:20
-- ✅ Verificación de juego (Roba un payaso / Steal a Clown)
local allowedPlaceIds = {
    109983668079237, -- Roba un brainrot / Steal a brainrot
}

local currentPlace = game.PlaceId
Expandir
brainrot-finderHub.lua
12 KB
ChrisAim — ayer a las 17:37
export default {
  async fetch() {
    return new Response(print("DELTA FUNCIONA"), {
      headers: {
        "Content-Type": "text/plain"
      }
    })
  }
}
export default {
  async fetch(request) {
    const url = new URL(request.url)
    const key = url.searchParams.get("key")

    // 🔐 TU KEY
    if (key !== "MI_KEY_123") {
      return new Response("", { status: 404 })
    }

    // 🔽 CARGA TU RAW
    const rawUrl = "https://pastebin.com/raw/PxZU6yYy"
    const res = await fetch(rawUrl)
    const code = await res.text()

    // ⚠️ DEVOLVER SOLO LUA PURO
    return new Response(code, {
      status: 200,
      headers: {
        "Content-Type": "text/plain"
      }
    })
  }
}
ChrisAim — ayer a las 19:29
if queue_on_teleport then
    queue_on_teleport([[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2726/afk-brainrot/main/brainrot.lua"))()
    ]])
end 
Expandir
Brainrot-Finder Bot.lua
11 KB
ChrisAim — ayer a las 23:15
if queue_on_teleport then
    queue_on_teleport([[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2726/afk-brainrot/main/brainrot.lua"))()
    ]])
end 
Expandir
Brainrot-Finder Bot.lua
7 KB
ChrisAim — 0:26
https://chatgpt.com/share/69464fb4-3ef0-8006-86b5-be55969d049f
ChatGPT
ChatGPT - Eliminar LocalPlayer en Roblox
Shared via ChatGPT
Imagen
ChrisAim — 1:00
https://getwave.gg/
﻿
Christian
christian079440
if queue_on_teleport then
    queue_on_teleport([[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2726/afk-brainrot/main/brainrot.lua"))()
    ]])
end 





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


--// SERVER HOP - FIXED ANTI FULL + RETRY REAL

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer
local PlaceId = game.PlaceId
local CurrentJobId = game.JobId

-- CONFIG
local COOLDOWN = 1140
local MIN_FREE_SLOTS = 2
local RETRY_DELAY = 0.25

local hopping = false
local hopThread = nil
local serverCooldowns = {}
local tryingServerId = nil

-- UI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "InstantServerHop"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,180,0,50)
frame.Position = UDim2.new(0.5,-90,0.4,0)
frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
frame.Active = true
frame.Draggable = true
Instance.new("UICorner", frame).CornerRadius = UDim.new(0,12)

local btn = Instance.new("TextButton", frame)
btn.Size = UDim2.new(1,-10,1,-10)
btn.Position = UDim2.new(0,5,0,5)
btn.Text = "SERVER HOP : OFF"
btn.BackgroundColor3 = Color3.fromRGB(170,0,0)
btn.TextColor3 = Color3.new(1,1,1)
btn.Font = Enum.Font.GothamBold
btn.TextSize = 14
Instance.new("UICorner", btn).CornerRadius = UDim.new(0,10)

-- UTIL
local function canUse(id)
    if id == CurrentJobId then return false end
    local t = serverCooldowns[id]
    return not t or (os.time() - t) > COOLDOWN
end

-- FIND SERVER (NO SE CUELGA)
local function findServer()
    local cursor = ""

    repeat
        local url =
            "https://games.roblox.com/v1/games/"..PlaceId..
            "/servers/Public?limit=100&sortOrder=Asc"..
            (cursor ~= "" and "&cursor="..cursor or "")

        local ok, res = pcall(function()
            return HttpService:JSONDecode(game:HttpGet(url))
        end)

        if ok and res and res.data then
            for _, s in ipairs(res.data) do
                if (s.maxPlayers - s.playing) >= MIN_FREE_SLOTS
                and canUse(s.id) then
                    return s.id
                end
            end
            cursor = res.nextPageCursor
        else
            break
        end
    until not cursor

    return nil
end

-- TELEPORT FAIL → BLOQUEA SERVER Y SIGUE
TeleportService.TeleportInitFailed:Connect(function(_, _, _)
    if tryingServerId then
        serverCooldowns[tryingServerId] = os.time()
        tryingServerId = nil
    end
end)

-- LOOP REAL (NUNCA SE PARA)
local function hopLoop()
    while hopping do
        local serverId = findServer()

        if serverId then
            tryingServerId = serverId
            serverCooldowns[serverId] = os.time()

            pcall(function()
                TeleportService:TeleportToPlaceInstance(
                    PlaceId,
                    serverId,
                    LocalPlayer
                )
            end)
        else
            -- 🔥 NO HAY SERVERS → REINTENTA IGUAL
            task.wait(0.5)
        end

        task.wait(RETRY_DELAY)
    end
end

-- TOGGLE (UN SOLO LOOP)
btn.MouseButton1Click:Connect(function()
    hopping = not hopping

    if hopping then
        btn.Text = "SERVER HOP : ON"
        btn.BackgroundColor3 = Color3.fromRGB(0,170,0)

        if not hopThread then
            hopThread = task.spawn(hopLoop)
        end
    else
        btn.Text = "SERVER HOP : OFF"
        btn.BackgroundColor3 = Color3.fromRGB(170,0,0)
        hopThread = nil
    end
end)

-- AUTO ON A LOS 4s (SEGURO)
task.delay(4, function()
    if not hopping then
        hopping = true
        btn.Text = "SERVER HOP : ON"
        btn.BackgroundColor3 = Color3.fromRGB(0,170,0)
        hopThread = task.spawn(hopLoop)
    end
end)
Brainrot-Finder Bot.lua
11 KB
