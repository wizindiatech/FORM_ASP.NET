using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FORM_ASP.NET
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Form Has Been Submitted Successfully !!')</script>");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(MaleRadioButton.Checked || FemaleRadioButton.Checked)
            {
                args.IsValid = true;
                
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int dtval = int.Parse(args.Value);
            if (dtval % 2 == 0)
            {
                args.IsValid = true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Form Has Been Submitted Successfully !!')</script>");
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}