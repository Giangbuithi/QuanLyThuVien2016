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


namespace QuanLyBanHang
{
    public partial class frmDMSach : Form
    {
        string cnstr;
        SqlConnection cn;


        public frmDMSach()
        {
            InitializeComponent();
        }

        private void Showdata()
        {
            Connect();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM tb_Sach", cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tb_Sach");

            dgvSach.DataSource = ds.Tables[0];
        }

        private void frmDMSach_Load(object sender, EventArgs e)
        {
            cnstr = ConfigurationManager.ConnectionStrings["cnstr"].ConnectionString; //chuot phai project/Add Reference/.NET/SYStem Configuation/...
            cn = new SqlConnection(cnstr);
            //DataSet ds = GetBooks();
            dgvSach.DataSource = GetBooks();
            //Showdata();
        }
        private void Connect()
        {
            if (cn != null && cn.State == ConnectionState.Closed)
            {
                try
                {
                    cn.Open();
                }
                catch (Exception)//?
                {
                    MessageBox.Show("Loi:");
                }

            }
        }
        private void DisConnect()
        {
            if (cn != null && cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }
        //tao class
        private List<ClassSach> GetBooks()
        {
            string sql = @"SELECT * FROM tb_Sach";
            Connect();// cn.Open();
            try
            {
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataReader dr = cmd.ExecuteReader();



                List<ClassSach> listCS = new List<ClassSach>();
                string maSach, tenSach, maTL, maVT, NXBan;
                decimal giaThue;
                while (dr.Read())
                {
                    maSach = dr.GetString(0);
                    tenSach = dr.GetString(1);
                    maTL = dr.GetString(2);
                    maVT = dr.GetString(3);
                    NXBan = dr.GetString(4);
                    giaThue = dr.GetDecimal(5);
                    ClassSach cs = new ClassSach(maSach, tenSach, maTL, maVT, NXBan, giaThue); //goi ham khoi tao trong bang sanpham
                    listCS.Add(cs);
                }
                dr.Close();
                return listCS;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Loi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return null;
            }
            finally
            {
                DisConnect();
            }
            // return listCS;

        }

        private void btDong_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btThem_Click(object sender, EventArgs e)
        {
            Connect();
            string sql = "INSERT INTO tb_Sach(MaSach, MaTL, MaVT, TenSach, NXB, GiaThue) VALUES('" + txtMaSach.Text + "','" + txtMTL.Text + "', '" + txtMVT.Text + "','" + txtTenSach.Text + "','" + txtNXB.Text + "','" + txtGiaThue.Text + "' ) ";

            try
            {
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.CommandType = CommandType.Text;

                int count = cmd.ExecuteNonQuery();
                MessageBox.Show("Số dòng đã thêm:" + count.ToString());
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                DisConnect();
            }
        }

        private void btSua_Click(object sender, EventArgs e)
        {
            Connect();
            string sql = "UPDATE tb_Sach VALUES ('" + txtMaSach.Text + "','" + txtMTL.Text + "', '" + txtMVT.Text + "','" + txtTenSach.Text + "','" + txtNXB.Text + "','" + txtGiaThue + "' ) WHERE MaSach = '" + dgvSach.CurrentRow.Cells["MaSach"].Value.ToString() + "'";

            try
            {
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.CommandType = CommandType.Text;

                cmd.ExecuteNonQuery();
                MessageBox.Show("Sửa Thành Công!");
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message, "Loi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                DisConnect();
            }
        }

        private void dgvSach_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void cbTimKiem_SelectedIndexChanged(object sender, EventArgs e)
        {
            Connect();
            int index = cbTimKiem.SelectedIndex;
            string text = cbTimKiem.Items[index].ToString();
            string sqlstr;
            if (text == "Tìm theo Ma Sach")
                sqlstr = "SELECT * FROM tb_Sach WHERE MaSach like '%" + txtTimKiem.Text + "%'";
            else
                sqlstr = "SELECT * FROM tb_Sach WHERE  MaTL = '" + txtTimKiem.Text + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(sqlstr, cn);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {

            }
            finally
            {
                DisConnect();
            }

        }

        private void frmDMSach_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult rs = MessageBox.Show("Bạn có muốn thoát chương trình không?","Chú Ý!", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (rs == DialogResult.No)
            {
                e.Cancel =  true;
            }
        }

        private void btXoa_Click(object sender, EventArgs e)
        {
            Connect();
            string sql = "DELETE FROM tb_Sach WHERE MaSach = '" + txtMaSach.Text + "'";

            try
            {
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.CommandType = CommandType.Text;

                cmd.ExecuteNonQuery();
                DialogResult rs = MessageBox.Show("Bạn có chắc chắn?", "Warning!", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (rs == DialogResult.Yes)
                {
                    MessageBox.Show("Xóa Thành Công");
                }

            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message, "Loi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                DisConnect();
            }
        }
    }
}
  
