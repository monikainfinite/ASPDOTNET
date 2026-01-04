using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Security_defaultprj.Startup))]
namespace Security_defaultprj
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
