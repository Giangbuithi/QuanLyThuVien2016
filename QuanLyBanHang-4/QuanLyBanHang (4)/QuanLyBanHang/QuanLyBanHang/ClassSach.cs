using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace QuanLyBanHang
{
    class ClassSach
    {
        public string MaSach { get; set; }
        public string TenSach { get; set; }
        public string MaTL { get; set; }
        public string MaVT { get; set; }

        public string NXB { get; set; }
        public decimal GiaThue { get; set; }

        public ClassSach(string MaS, string TenS, string MaTheLoai, string MaViTri, string nxb, decimal giathue)
        {
            MaSach = MaS;
            TenSach = TenS;
            MaTL = MaTheLoai;
            MaVT = MaViTri;
            NXB = nxb;
            GiaThue = giathue;

        }


    }
}
