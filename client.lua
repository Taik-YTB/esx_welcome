AddEventHandler("playerSpawned", function(spawn)
  TriggerEvent("esx_welcome:notify", "CHAR_MP_FM_CONTACT", 1, "Name", false, "Insert Text here.")
end)

RegisterNetEvent("esx_welcome:notify")
AddEventHandler("esx_welcome:notify", function(icon, type, sender, title, text)
    Citizen.CreateThread(function()
		Wait(1)
		SetNotificationTextEntry("STRING");
		AddTextComponentString(text);
		SetNotificationMessage(icon, icon, true, type, sender, title, text);
		DrawNotification(false, true);
    end)
end)
