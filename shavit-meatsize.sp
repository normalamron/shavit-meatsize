#include <sourcemod>
#include <shavit>

public Plugin myinfo = 
{
    name = "Kaccm",
    author = "normalamron",
    description = "see your meat size with !kaccm",
    version = "0.31",
    url = "https://github.com/normalamron"
};

chatstrings_t gS_ChatStrings;

public void OnPluginStart()
{
    RegConsoleCmd("sm_kaccm", cmdKacCM, "Learn the length of your dick.");
    RegConsoleCmd("sm_meatsize", cmdKacCM, "Learn the length of your dick.");
}

public void Shavit_OnChatConfigLoaded()
{
    Shavit_GetChatStringsStruct(gS_ChatStrings);
}

public Action cmdKacCM(int client, int args)
{
    if (!IsClientInGame(client)) 
    {
        return Plugin_Handled;
    }

    int dicksize = GetRandomInt(0, 30);

    char clientName[64];
    GetClientName(client, clientName, sizeof(clientName));

    if (dicksize < 1)
    {
        Shavit_PrintToChatAll("%s has nothing down there ...", clientName);
    }
    else if (dicksize <= 9)
    {
        Shavit_PrintToChatAll("%s's got %dcm... a tiny warrior! :)", clientName, dicksize);
    }
    else if (dicksize <= 15)
    {
        Shavit_PrintToChatAll("%s is working with %dcm. Small, but efficient! ;)", clientName, dicksize);
    }
    else if (dicksize <= 22)
    {
        Shavit_PrintToChatAll("%s's packing %dcm of solid confidence!", clientName, dicksize);
    }
    else
    {
        Shavit_PrintToChatAll("WARNING: %s's %dcm is a public safety hazard! 0_0", clientName, dicksize);
    }

        return Plugin_Handled;
    
}