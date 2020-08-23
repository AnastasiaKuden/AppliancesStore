using AppliancesStore.API;
using AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels;
using AppliancesStore.Core;
using AppliancesStore.Test.Mocks.InputDataMocks;
using AppliancesStore.Test.Mocks.OutputDataMocks;
using Autofac;
using Autofac.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.TestHost;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using NUnit.Framework;
using System.Data;
using System.Data.SqlClient;
using System.Net.Http;
using System.Text;
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
                        .UseEnvironment("Testing")
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
        [TestCase(6)]
        [TestCase(7)]
        [TestCase(8)]
        [TestCase(9)]
        [TestCase(10)]
        public async Task AddNewProductTest(int num)
        {
            var outputData = new OutputDataMocksForAppliances();
            var expected = outputData.GetAppliancesOutputModelMock(num);
            var inputData = new InputDataMocksForAppliances();
            var inputmodel = inputData.GetAppliancesInputModelMock(num);
            var jsonContent = new StringContent(JsonConvert.SerializeObject(inputmodel), Encoding.UTF8, "application/json");
            var response = await _client.PostAsync(_appliancesStoreUrl + EndpointUrl.appliancesUrl, jsonContent);
            var result = await response.Content.ReadAsStringAsync();
            var failResult = 5;            
            if (num == failResult)
            {
                Assert.AreEqual(expected, result);  //проверка статус кода, что не успех   
                
            }
            else
            {                 
                var actual = JsonConvert.DeserializeObject<LibraOutputModel>(result);
                Assert.AreEqual(expected, actual);
            }
        }
    }
}
