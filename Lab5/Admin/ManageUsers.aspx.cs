using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Lab5
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxRoleCreateButton_Click(object sender, EventArgs e)
        {
            if(!Roles.RoleExists(uxRoleTextBox.Text))
            {
                Roles.CreateRole(uxRoleTextBox.Text);
            }
        }

        protected void uxRoleMemberAddButton_Click(object sender, EventArgs e)
        {
            String temp = uxRoleDropDown.SelectedValue.ToString();
            String temp2 = uxUserDropDown.SelectedValue.ToString();

            if(!Roles.IsUserInRole(uxUserDropDown.SelectedValue.ToString(), uxRoleDropDown.SelectedValue.ToString()))
            {
                Roles.AddUserToRole(uxUserDropDown.SelectedValue.ToString(), uxRoleDropDown.SelectedValue.ToString());
            }
        }
    }
}