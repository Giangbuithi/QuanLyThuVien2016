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
using QuanLyBanHang;


namespace QuanLyBanHang
{
    public partial class frmDMSach : Form
    {
        const string _cnstr = @" server = DESKTOP-QT29IS3\SQLEXPRESS; database = QLThuVien; integrated security = true";
        SqlConnection _cn;
        int tim = 0;
        string chuoi = "";
        public frmDMSach()
        {
            DangNhap dn = new DangNhap();
            dn.ShowDialog();
            InitializeComponent();
            _cn = new SqlConnection(_cnstr);
        }
        public void bien(int x, string y)
        {
            tim = x;
            chuoi = y;
        }
        public void Connect()
        {
            try
            {
                if (_cn != null && _cn.State == ConnectionState.Closed)
                {
                    _cn.Open();
                    // label6.Text = " Kết nối thành công !";
                }
            }
            catch (SqlException ex)
            {
                MessageBox.Show(" lỗi kết nối", ex.ToString());
            }
        }

        public void DisConnect()
        {
            if (_cn != null && _cn.State == ConnectionState.Open)
            {
                _cn.Close();
                // label6.Text = " Đã ngắt kết nối !";
            }
        }

        public void ShowDATA()
        {
            Connect();
            try
            {
                string sql = @"SELECT * FROM tb_Sach ";
                SqlCommand cmd = new SqlCommand(sql, _cn);
                SqlDataReader dr = cmd.ExecuteReader();

                List<Sach> lstSach = new List<Sach>();

                string masach, mavt, matl, nxb, tensach;

                decimal giathue;

                while (dr.Read())
                {
                    masach = dr.GetString(0);
                    matl = dr.GetString(1);
                    mavt = dr.GetString(2);
                    tensach = dr.GetString(3);
                    nxb = dr.GetString(4);
                    giathue = dr.GetDecimal(5);

                    Sach S = new Sach(masach, mavt, matl, nxb, tensach, giathue);
                    lstSach.Add(S);
                }

                dgvSach.DataSource = lstSach;
            }
            catch (SqlException ex)
            {
                MessageBox.Show("lỗi :" + ex.ToString());
            }
            finally
            {
                DisConnect();
            }
        }

        private void btDong_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void frmDMSach_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult rs = MessageBox.Show("Bạn có muốn thoát chương trình không?", "Chú Ý!", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (rs == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void btThem_Click(object sender, EventArgs e)
        {

            Sach S = new Sach(txtMaSach.Text, txtMVT.Text, txtMTL.Text, txtNXB.Text, txtTenSach.Text, Convert.ToDecimal(txtGiaThue.Text));
            Connect();
            try
            {
                SqlCommand cmd = new SqlCommand("THEM", _cn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("MaSach", S.MASACH));
                cmd.Parameters.Add(new SqlParameter("MaVT", S.MAVT));
                cmd.Parameters.Add(new SqlParameter("MaTL", S.MATL));
                cmd.Parameters.Add(new SqlParameter("NXB", S.NXB));
                cmd.Parameters.Add(new SqlParameter("TenSach", S.TENSACH));
                cmd.Parameters.Add(new SqlParameter("GiaThue", S.GIATHUE));

                SqlParameter res = cmd.Parameters.Add("return", SqlDbType.Int);
                res.Direction = ParameterDirection.ReturnValue;

                cmd.ExecuteNonQuery();
                int Res = (int)res.Value;
                if (Res == 1)
                {
                    MessageBox.Show("Thành công!");

                }
                else if (Res == 0)
                {
                    MessageBox.Show("Sách đã tồn tại! ");
                }
                else
                {
                    MessageBox.Show("Lỗi:");
                }
                ShowDATA();
            }

            catch (SqlException ex)
            {
                MessageBox.Show("sai thông tin :", ex.ToString());
            }
            DisConnect();
        }

        private void frmDMSach_Load(object sender, EventArgs e)
        {
            ShowDATA();
        }

        private void btSua_Click(object sender, EventArgs e)
        {
            Sach S = new Sach(txtMaSach.Text, txtMVT.Text, txtMTL.Text, txtNXB.Text, txtTenSach.Text, Convert.ToDecimal(txtGiaThue.Text));
            Connect();
            try
            {
                SqlCommand cmd = new SqlCommand("Sua", _cn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("MaSach", S.MASACH));
                cmd.Parameters.Add(new SqlParameter("MaVT", S.MAVT));
                cmd.Parameters.Add(new SqlParameter("MaTL", S.MATL));
                cmd.Parameters.Add(new SqlParameter("NXB", S.NXB));
                cmd.Parameters.Add(new SqlParameter("TenSach", S.TENSACH));
                cmd.Parameters.Add(new SqlParameter("GiaThue", S.GIATHUE));

                SqlParameter res = cmd.Parameters.Add("return", SqlDbType.Int);
                res.Direction = ParameterDirection.ReturnValue;

                cmd.ExecuteNonQuery();
                int Res = (int)res.Value;
                if (Res == 1)
                {
                    MessageBox.Show("Sửa thành công !");

                }
                else if (Res == 0)
                {
                    MessageBox.Show("Sách không tồn tại! ");
                }
                else
                {
                    MessageBox.Show("Lỗi:");
                }
                ShowDATA();
            }

            catch (SqlException ex)
            {
                MessageBox.Show("sai thông tin :", ex.ToString());
            }
            DisConnect();
        }

        private void dgvSach_CellEnter_1(object sender, DataGridViewCellEventArgs e)
        {
            txtMaSach.Text = dgvSach.CurrentRow.Cells[0].Value.ToString();
            txtMVT.Text = dgvSach.CurrentRow.Cells[1].Value.ToString();
            txtMTL.Text = dgvSach.CurrentRow.Cells[2].Value.ToString();
            txtNXB.Text = dgvSach.CurrentRow.Cells[3].Value.ToString();
            txtTenSach.Text = dgvSach.CurrentRow.Cells[4].Value.ToString();
            txtGiaThue.Text = dgvSach.CurrentRow.Cells[5].Value.ToString();
        }

        private void btXoa_Click_1(object sender, EventArgs e)
        {
            Sach S = new Sach(txtMaSach.Text, txtMVT.Text, txtMTL.Text, txtNXB.Text, txtTenSach.Text, Convert.ToDecimal(txtGiaThue.Text));
            Connect();
            try
            {
                SqlCommand cmd = new SqlCommand("XOA", _cn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("MaSach", S.MASACH));


                SqlParameter res = cmd.Parameters.Add("return", SqlDbType.Int);
                res.Direction = ParameterDirection.ReturnValue;

                cmd.ExecuteNonQuery();
                int Res = (int)res.Value;
                if (Res == 1)
                {
                    MessageBox.Show("Xóa thành công !");

                }
                else if (Res == 0)
                {
                    MessageBox.Show("Sách không tồn tại! ");
                }
                else
                {
                    MessageBox.Show("Lỗi:");
                }
                ShowDATA();
            }

            catch (SqlException ex)
            {
                MessageBox.Show("sai thông tin :", ex.ToString());
            }
            DisConnect();
        }

        private void btTimKiem_Click(object sender, EventArgs e)
        {
            Timkiem fmt = new Timkiem();
            fmt.mygetData = new Timkiem.getbien(bien);
            fmt.ShowDialog();
            for (int i = 0; i < dgvSach.Rows.Count - 1; i++)
            {
                if (dgvSach.Rows[i].Cells[tim].Value.ToString() == chuoi)
                {
                    dgvSach.CurrentCell = dgvSach.Rows[i].Cells[tim];
                    break;
                }
                else if (dgvSach.Rows[i].Cells[tim].Value.ToString() != chuoi && i == dgvSach.Rows.Count - 2)
                    MessageBox.Show("Tìm thấy dữ liệu");
            }


        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }
    }
}

