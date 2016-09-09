using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QuanLyBanHang
{
    public partial class Timkiem : Form
    {
        int x = 0;
        string y = "";
        public delegate void getbien(int tim, string chuoi);
        public getbien mygetData;
        public Timkiem()
        {
            InitializeComponent();
        }

        private void btTimKiem_Click(object sender, EventArgs e)
        {
            if (radioButton1.Checked == true)
            {
                x = 0;
            }
            else if (radioButton2.Checked == true)
            {
                x = 1;
            }
            y = txtTimKiem.Text;
            mygetData(x, y);
            this.Close();

        }
    }
}
