
codeunit 71146576 EnableAdvancedApplicationArea
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt. Facade", 'OnGetEssentialExperienceAppAreas', '', false, false)]
    local procedure EnableAdvancedApplicationAreaOnGetEssentialExperienceAppAreas(var TempApplicationAreaSetup: Record "Application Area Setup" temporary)
    begin
        TempApplicationAreaSetup."Basic MX" := true;
        TempApplicationAreaSetup."Basic Sqz_CL" := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt. Facade", 'OnGetPremiumExperienceAppAreas', '', false, false)]
    local procedure EnableAdvancedApplicationAreaOnGetPremiumExperienceAppAreas(var TempApplicationAreaSetup: Record "Application Area Setup" temporary)
    begin
        TempApplicationAreaSetup."Basic MX" := true;
        TempApplicationAreaSetup."Basic Sqz_CL" := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt. Facade", 'OnSetExperienceTier', '', false, false)]
    local procedure EnableAdvancedApplicationAreaOnSetExperienceTier(ExperienceTierSetup: Record "Experience Tier Setup"; var TempApplicationAreaSetup: Record "Application Area Setup" temporary; var ApplicationAreasSet: Boolean)
    begin
        TempApplicationAreaSetup."Basic MX" := true;
        TempApplicationAreaSetup."Basic Sqz_CL" := true;
    end;
}