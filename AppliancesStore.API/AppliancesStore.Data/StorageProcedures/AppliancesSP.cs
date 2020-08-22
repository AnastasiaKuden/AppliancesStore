namespace AppliancesStore.Data.StorageProcedures
{
    internal static class AppliancesSP
    {
        public const string AppliancesGetAll = "Appliances_GetAll";
        public const string AppliancesGetAllRemote = "Appliances_GetAllRemote";
        public const string AppliancesFindByModelName = "Appliances_FindByModelName";
        public const string AppliancesGetById = "Appliances_GetById";
        public const string AppliancesAdd = "Appliances_Add";
        public const string AppliancesUpdatePrice = "Appliances_UpdatePrice";
        public const string AppliancesDeleteOrRestore = "Appliances_DeleteOrRestoreById";
    }
}
