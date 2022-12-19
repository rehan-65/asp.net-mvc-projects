using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Asp.net_Mvc_Crud_Entityframework.Startup))]
namespace Asp.net_Mvc_Crud_Entityframework
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
