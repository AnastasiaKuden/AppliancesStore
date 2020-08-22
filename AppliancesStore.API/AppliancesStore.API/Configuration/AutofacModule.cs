using Autofac;
using HouseholdAppliancesStore.Core;
using HouseholdAppliancesStore.Data;

namespace AppliancesStore.API.Configuration
{
    public class AutofacModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<DatabaseOptions>().As<IDatabaseOptions>();
            builder.RegisterType<AppliancesRepository>().As<IAppliancesRepository>();
            builder.RegisterType<OrderRepository>().As<IOrderRepository>();
        }
    }
}
