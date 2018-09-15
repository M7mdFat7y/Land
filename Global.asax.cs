using AutoMapper;
using Land.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace Land
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);


            //GlobalConfiguration.Configuration.Formatters.JsonFormatter.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore;
            //GlobalConfiguration.Configuration.Formatters.Remove(GlobalConfiguration.Configuration.Formatters.XmlFormatter);

            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Mapper.Initialize(Map => Map.AddProfile<AutoMapperProfile>());
            var json = GlobalConfiguration.Configuration.Formatters.JsonFormatter;
            json.SerializerSettings.PreserveReferencesHandling = Newtonsoft.Json.PreserveReferencesHandling.All;
        }

        //protected void Application_BeginRequest(object sender, EventArgs e)
        //{
        //    HttpCookie cookie = HttpContext.Current.Request.Cookies["Language"];
        //    if (cookie != null && cookie.Value != null)
        //    {
        //        Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(cookie.Value);
        //        Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(cookie.Value);
        //    }
        //    else
        //    {
        //        Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("ar");
        //        Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("ar");
        //    }

        //}
    }
}
