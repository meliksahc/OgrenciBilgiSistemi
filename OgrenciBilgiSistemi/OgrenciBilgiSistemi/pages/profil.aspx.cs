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
    public partial class profil : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["OgrenciBilgiSistemiConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            bilgiGetir();   
        }

        protected void btGuncelle_Click(object sender, EventArgs e)
        {
            if (txtMail.Text != "" && txtSifre.Text != "" && txtTel.Text != "") 
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("ogrBilgiGuncelle", baglanti);
                komut.CommandType = CommandType.StoredProcedure;
                komut.Parameters.Add(new SqlParameter("@no", SqlDbType.VarChar)).Value = Session["ogrenciNo"].ToString();
                komut.Parameters.Add(new SqlParameter("@mail", SqlDbType.VarChar)).Value = txtMail.Text.ToString();
                komut.Parameters.Add(new SqlParameter("@tel", SqlDbType.VarChar)).Value = txtTel.Text.ToString();
                komut.Parameters.Add(new SqlParameter("@sifre", SqlDbType.VarChar)).Value = txtSifre.Text.ToString();

                komut.ExecuteNonQuery();
                msg.Text = "Güncelleme Başarılı";
            }
            else
            {
                msg.Text = "Lütfen Boş Alan Bırakmayınız.";
            }
            baglanti.Close();
            bilgiGetir();

        }
        void bilgiGetir()
        {
            lblNo.Text = Session["ogrenciNo"].ToString();
            lblAdSoyad.Text = Session["ogrenciAdiSoyadi"].ToString();
            
            SqlCommand komut = new SqlCommand("ogrBilgiListeleme", baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.Add(new SqlParameter("@no", SqlDbType.VarChar)).Value = Session["ogrenciNo"].ToString();

            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();

            if (oku.Read())
            {
                lblBolum.Text = oku["bolumAd"].ToString();
                lblSinif.Text = oku["sinifAdi"].ToString();
                lblMail.Text = oku["ogrenciMail"].ToString();
                lblTel.Text = oku["ogrenciTel"].ToString();
            }
            oku.Close();
            baglanti.Close();
        }
    }
}