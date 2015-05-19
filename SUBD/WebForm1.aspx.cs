using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUBD
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void FilterButton_Click(object sender, EventArgs e)
		{
			SqlDataSource1.SelectCommand = string.Format(@"SELECT [name] as [Имя] FROM [exams$]
WHERE [name] like '{0}%'
ORDER BY [name]", FilterTextBox.Text);
		}
	}
}