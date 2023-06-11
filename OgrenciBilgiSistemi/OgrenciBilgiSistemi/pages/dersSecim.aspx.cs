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
    public partial class dersSecim : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["OgrenciBilgiSistemiConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btKaydet_Click(object sender, EventArgs e)
        {

            if (GridView1.SelectedIndex == -1) { 
                msg.Text = "Lütfen Yukarıdaki Tablodan Ders Seçimi Yapınız.";
            }
            else
            {
                string secim= GridView1.SelectedRow.Cells[1].Text;

                baglanti.Open();
                SqlCommand komut = new SqlCommand("dersKayit", baglanti);
                komut.CommandType = CommandType.StoredProcedure;
                SqlCommand kontrol = new SqlCommand("select count(*) from tblDersKayit where ogrNo='" + Session["ogrenciNo"].ToString() + "' and dersKodu='" + secim + "'", baglanti);
                int sonuc = (int)kontrol.ExecuteScalar();
                

                if (sonuc == 0)
                {
                    komut.Parameters.Add(new SqlParameter("@no", SqlDbType.VarChar)).Value = Session["ogrenciNo"].ToString();
                    komut.Parameters.Add(new SqlParameter("@dersKodu", SqlDbType.VarChar)).Value = secim;
                    komut.ExecuteNonQuery();
                    msg.Text = "Ders Kaydı Yapıldı."; ;
                }
                else
                {
                    msg.Text = "Ders Kaydı Bulunmaktadır.";
                }
                
                baglanti.Close();
            }

        }
    }
}