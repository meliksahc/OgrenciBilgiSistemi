using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciBilgiSistemi.pages
{
    public partial class ogrenciGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btGiris_Click(object sender, EventArgs e)
        {
            if (txtOgrNo.Text == "" || txtOgrPsw.Text.Equals(""))
            {
                msg.Text = "Lütfen Tüm Alanları Doldurunuz.";
            }
            else
            {
                SqlConnection baglanti = new SqlConnection();
                string strcon = ConfigurationManager.ConnectionStrings["OgrenciBilgiSistemiConnectionString"].ConnectionString;
                baglanti.ConnectionString = strcon;
                SqlCommand komut = new SqlCommand("OgrKontrol", baglanti);
                komut.CommandType = CommandType.StoredProcedure;
                komut.Parameters.Add(new SqlParameter("@no", SqlDbType.VarChar)).Value = txtOgrNo.Text.Trim();
                komut.Parameters.Add(new SqlParameter("@sifre", SqlDbType.VarChar)).Value = txtOgrPsw.Text.Trim();

                baglanti.Open();
                SqlDataReader oku = komut.ExecuteReader();

                if (oku.Read())
                {
                    Session["ogrenciNo"] = oku["ogrenciNo"].ToString();
                    Session["ogrenciAdiSoyadi"] = oku["ogrenciAd"].ToString() + " " + oku["ogrenciSoyad"].ToString();

                    msg.Text = "Giriş Başarılı.";
                    Response.AddHeader("Refresh", "1;url=kategoriler.aspx");
                }
                else
                {
                    msg.Text = "Öğrenci Numarası veya Parola Hatalı.";
                }
                oku.Close();
                baglanti.Close();
            }
        }
    }
}