namespace btp_m_insurance;

entity Appform
{
    key ID : UUID;
    Date : Date;
    InsurancePolicy : Integer;
    VesselName : String(100);
    PackingList : String(100);
    Situation : String(100);
    StorageLocation : String(100);
    Photo : String(500);
}
