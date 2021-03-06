﻿using System.Linq;
using System.Net.Http.Formatting;
using System.Web.Http;
using Land.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Newtonsoft.Json.Serialization;
using Owin;

[assembly: OwinStartupAttribute(typeof(Land.Startup))]
namespace Land
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {


            HttpConfiguration httpConfig = new HttpConfiguration();
 
            ConfigureOAuthTokenGeneration(app);
 
            ConfigureWebApi(httpConfig);
 
            app.UseCors(Microsoft.Owin.Cors.CorsOptions.AllowAll);
 
            //app.UseWebApi(httpConfig);
            ConfigureAuth(app);
        }
        private void ConfigureOAuthTokenGeneration(IAppBuilder app)
        {
            // Configure the db context and user manager to use a single instance per request
            app.CreatePerOwinContext(ApplicationDbContext.Create);
            app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);

            // Plugin the OAuth bearer JSON Web Token tokens generation and Consumption will be here

        }

        private void ConfigureWebApi(HttpConfiguration config)
        {
            config.MapHttpAttributeRoutes();

            var jsonFormatter = config.Formatters.OfType<JsonMediaTypeFormatter>().First();
            jsonFormatter.SerializerSettings.ContractResolver = new CamelCasePropertyNamesContractResolver();
        }

        private static void CreateRolesAndSuperAdmin()
        {
            ApplicationDbContext dbContext = new ApplicationDbContext();
            UserManager<ApplicationUser> userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(dbContext));
            RoleManager<IdentityRole> roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(dbContext));
            if (!roleManager.RoleExists("Admin"))
            {
                roleManager.Create(new IdentityRole
                {
                    Name = "Admin"
                });
                ApplicationUser applicationUser = new ApplicationUser
                {
                    UserName = "Sa@motorshow.com",
                    Email = "Sa@motorshow.com",
                    EmailConfirmed = true
                };
                string password = "MotorShow@123";
                if (userManager.Create(applicationUser, password).Succeeded)
                {
                    userManager.AddToRole(applicationUser.Id, "Admin");
                }
            }
            if (!roleManager.RoleExists("Customer"))
            {
                roleManager.Create(new IdentityRole
                {
                    Name = "Customer"
                });
            }
        }
    }
}
