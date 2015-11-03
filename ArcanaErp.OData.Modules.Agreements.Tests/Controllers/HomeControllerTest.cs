using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ArcanaErp.OData.Modules.Agreements;
using ArcanaErp.OData.Modules.Agreements.Controllers;

namespace ArcanaErp.OData.Modules.Agreements.Tests.Controllers
{
    [TestClass]
    public class HomeControllerTest
    {
        [TestMethod]
        public void Index()
        {
            // Arrange
            HomeController controller = new HomeController();

            // Act
            ViewResult result = controller.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual("Home Page", result.ViewBag.Title);
        }
    }
}
