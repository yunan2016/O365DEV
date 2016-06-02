﻿using System;
using System.Web;

namespace TestAjax
{
    public class MyModule1 : IHttpModule
    {
        /// <summary>
        /// You will need to configure this module in the Web.config file of your
        /// web and register it with IIS before being able to use it. For more information
        /// see the following link: http://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpModule Members

        public void Dispose()
        {
            //clean-up code here.
        }

        public void Init(HttpApplication app)
        {
            // Below is an example of how you can handle LogRequest event and provide 
            // custom logging implementation for it
            app.PostAuthenticateRequest += (src, args) =>
            {
                if (app.Request.Url.LocalPath=="/a.aspx"&& !!app.User.Identity.IsAuthenticated)
                {
                    app.Context.AddError(new UnauthorizedAccessException());
                }
            };
        }

        #endregion

        public void OnLogRequest(Object source, EventArgs e)
        {
            //custom logging logic can go here
        }
    }
}
