using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Microsoft.Owin.Security;

namespace _1526887_Slime
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BntLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnection");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);


            var user = userManager.Find(TxtLoginEmail.Text, TxtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                LitErrorLogin.Text = "Log-in Successful !";

            }
            else
            {
                LitErrorLogin.Text = "Invalid username or password";
                ;
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["~/Login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/Login.aspx"]);
            }

            else
            {
                String userRoles = userManager.GetRoles(user.Id).FirstOrDefault();

                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/Index.aspx");
                }
            }
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnection");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = TxtRegEmail.Text };


            IdentityRole adminRole = new IdentityRole("RegisteredUser");
            roleManager.Create(adminRole);


            IdentityResult result = manager.Create(user, TxtRegPassword.Text);
            if (result.Succeeded)

            {
                manager.AddToRole(user.Id, "RegisteredUser");
                manager.Update(user);

                LitErrorReg.Text = "User Registration Successful !";

            }
            else
            {
                LitErrorReg.Text = "An Error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}