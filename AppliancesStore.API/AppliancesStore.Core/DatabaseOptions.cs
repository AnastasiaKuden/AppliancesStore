using System;

namespace AppliancesStore.Core
{
    public class DatabaseOptions : IDatabaseOptions
    {
        public string DBConnectionString { get; set; }
    }
}
