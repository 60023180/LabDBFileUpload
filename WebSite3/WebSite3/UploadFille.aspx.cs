using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadFille : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SetDayDDL();
            SetDayMonthDDL();
            SetDayYearDDL();
        }
    }
    public void SetDayDDL()
    {
        for (int i = 1; i <= 31; i++)
        {
            DropDownListDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }
    public void SetDayMonthDDL()
    {
        for (int i = 1; i <= 12; i++)
        {
            DropDownListMonth.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }
    public void SetDayYearDDL()
    {
        int CY = DateTime.Now.Year + 543;
        for (int i = CY - 5; i <= CY + 1; i++)
        {
            DropDownListYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        LabelUploaded.Visible = true;
        if (FileUpload1.HasFile)
        {
            string OldFileName = FileUpload1.FileName;
            string Ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            if (Ext.ToUpper() == ".DOCX" || Ext.ToUpper() == ".JPG")
            {
                string NewName = Guid.NewGuid().ToString();
                string cNewName = string.Format("{0}{1}", NewName, Ext);
                string Path = string.Format("Upload/{0}", cNewName);
                string cPath = Server.MapPath(Path);
                FileUpload1.SaveAs(cPath);
                InsertFileDB(OldFileName, Path);

                LabelUploaded.ForeColor = System.Drawing.Color.Green;
                LabelUploaded.Text = "สำเร็จ";
            }
            else
            {
                LabelUploaded.ForeColor = System.Drawing.Color.Red;
                LabelUploaded.Text = "ไฟล์ผิด";
            }

        }
        else
        {

            LabelUploaded.ForeColor = System.Drawing.Color.Red;
            LabelUploaded.Text = "ไม่มีไฟล์";
        }

    }
    private void InsertFileDB(string OldFileName, string cPath)
    {
        string StrCon = WebConfigurationManager.ConnectionStrings["UPPart2ConnectionString"].ConnectionString;
        using (SqlConnection ObjCon = new SqlConnection(StrCon))
        {
            ObjCon.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjCon;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "spCalendarInsert";
                ObjCM.Parameters.AddWithValue("@Title", OldFileName);
                ObjCM.Parameters.AddWithValue("@Day", DropDownListDay.SelectedValue);
                ObjCM.Parameters.AddWithValue("@Month", DropDownListMonth.SelectedValue);
                ObjCM.Parameters.AddWithValue("@Year", DropDownListYear.SelectedValue);
                ObjCM.Parameters.AddWithValue("@PicturePath", cPath);
                ObjCM.ExecuteNonQuery();

            }
            ObjCon.Close();

        }
    }
}