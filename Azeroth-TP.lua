--############################################################################################
--	Titre       : Azerothcore TP pour Azerothcore
--	Fichier     : Azeroth-Addon.lua
--	Version     : 3.3.5 12340
--	Auteur      : KarmaDev
--############################################################################################

-- Raccourci slash
SLASH_ETP1 = "/Azeroth"
SlashCmdList["ETP"] = function()
	ETP_Frame_OnShow();
end

-- On show 
function ETP_Frame_OnShow()
	if (ETP_Frame:IsShown() ) then
		ETP_Frame:Hide();
	else
		ETP_Frame:Show();
	end
end

-- Lancement des commandes GM en Tchat
function ETP_GMChat(ETP_Texte)
	local editBox = DEFAULT_CHAT_FRAME.editBox;
	DEFAULT_CHAT_FRAME.editBox:SetText(ETP_Texte);
	ChatEdit_SendText(editBox, false);
end

--				Fonction Tooltips
function ETP_Tooltip(ETP_Corp)
	GameTooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
	GameTooltip:SetText(ETP_Corp);
end

-- Fonctions speciales
ETP_RECALL = "/g .recall";

