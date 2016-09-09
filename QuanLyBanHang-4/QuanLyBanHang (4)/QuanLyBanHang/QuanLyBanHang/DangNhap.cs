using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;
using DAO;

namespace QuanLyBanHang
{
    public partial class DangNhap : Form
    {
        DataAdapter da;
        public DangNhap()
        {
            da = new DataAdapter();
            InitializeComponent();
        }
       
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void DangNhap_Load(object sender, EventArgs e)
        {
            da.Connect();
            txtMK.UseSystemPasswordChar = true;
      
        }

        
        private void txtTK_TextChanged(object sender, EventArgs e)
        {

        }
        bool Thoat = true;
        private void btDangnhap_Click(object sender, EventArgs e)
        {
           
            string sql = @"SELECT COUNT(*) FROM DangNhap WHERE ID = N'" + txtTK.Text + "' AND Password = N'" + txtMK.Text + "'";

            int count = (int)da.ExecuteScalar(sql);

            if (count >= 1)
            {
                if (Thoat == true)
                {
                    DialogResult dlg = MessageBox.Show("Đăng nhập thành công");
                    if (dlg == DialogResult.OK) {
                        Thoat = false;
                        this.Close();
                    }
                }
            }
            else
            {
                Thoat = true;
                MessageBox.Show("Thất bại");
                Application.Exit();

            }
        }

        private void DangNhap_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (Thoat == true) {
                Application.Exit();
            }
        }
           
    }
}
