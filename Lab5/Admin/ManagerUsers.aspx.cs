using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Lab5
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxSubmitRoleButton_Click(object sender, EventArgs e)
        {
            if (!Roles.RoleExists(uxRoleTextBox.Text))
            {
                Roles.CreateRole(uxRoleTextBox.Text);
            }
        }
    }
}