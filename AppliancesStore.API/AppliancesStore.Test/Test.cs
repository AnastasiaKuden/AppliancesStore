using AppliancesStore.API;
using AppliancesStore.Core;
using AppliancesStore.Test.Mocks.OutputDataMocks;
using Autofac;
using Autofac.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.TestHost;
using Microsoft.Extensions.Options;
using NUnit.Framework;
using System.Data;
using System.Data.SqlClient;
using System.Net.Http;
using System.Threading.Tasks;

namespace AppliancesStore.Test
{
    public class Test
    {
        private IWebHostBuilder _webHostBuilder;
        private TestServer _server;
        private HttpClient _client;
        private IDbConnection _connection;
        private string _appliancesStoreUrl;

        [OneTimeSetUp]
        public void Setup()
        {
            _webHostBuilder =
                  new WebHostBuilder()
                        .UseEnvironment("Development")
                        .ConfigureServices(services => services.AddAutofac())
                        .UseStartup<Startup>();

            _server = new TestServer(_webHostBuilder);
            var lifetimeScope = _server.Services.GetAutofacRoot();
            _client = _server.CreateClient();
            var urlOptions = lifetimeScope.Resolve<IOptions<UrlOptions>>();
            _appliancesStoreUrl = urlOptions.Value.HouseholdAppliancesStoreUrl;
            var databaseOptions = lifetimeScope.Resolve<IOptions<DatabaseOptions>>();
            _connection = new SqlConnection(databaseOptions.Value.DBConnectionString);
        }

        [TestCase(1)]
        [TestCase(2)]
        [TestCase(3)]
        [TestCase(4)]
        [TestCase(5)]
        public async Task AddNewProductTest()
        {
            var outputData = new OutputDataMocksForAppliances();
            var expected = outputData.GetAccountWithLeadOutputModelMockById(num);
            var inputData = new InputDataMocksForAccounts();
            var inputmodel = inputData.GetAccountInputModelMock(num);
            var jsonContent = new StringContent(JsonConvert.SerializeObject(inputmodel), Encoding.UTF8, "application/json");
            var response = await _client.PostAsync(_crmUrl + EndpointUrl.accountUrl, jsonContent);
            var result = await response.Content.ReadAsStringAsync();
            //задать переменную, при которой будет провальный результат = 23
            if (num < 23)
            {
                var actual = JsonConvert.DeserializeObject<AccountWithLeadOutputModel>(result);
                Assert.AreEqual(expected, actual);
            }
            else
            {
                Assert.AreEqual(expected, result);  //проверка статус кода, что не успех             
            }
        }
    }
}
