using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace QuanLyBanHang
{
    class Sach
    {
        private string _masach;

        public string MASACH
        {
            get { return _masach; }
            set { _masach = value; }
        }
        private string _mavt;

        public string MAVT
        {
            get { return _mavt; }
            set { _mavt = value; }
        }

        private string _matl;

        public string MATL
        {
            get { return _matl; }
            set { _matl = value; }
        }

        private string _nxb;

        public string NXB
        {
            get { return _nxb; }
            set { _nxb = value; }
        }

        private string _tensach;

        public string TENSACH
        {
            get { return _tensach; }
            set { _tensach = value; }
        }

        private decimal _giathue;
        private string p1;
        private string p2;
        private string p3;
        private string p4;
        private string p5;

        public decimal GIATHUE
        {
            get { return _giathue; }
            set { _giathue = value; }
        }

        public Sach()
        {
            _masach = "";
            _mavt = "";
            _matl = "";
            _nxb = "";
            _tensach = "";
            _giathue = 0;
        }

        public Sach(string masach, string mavt, string matl, string nxb, string tensach, decimal giathue)
        {
            _masach = masach;
            _mavt = mavt;
            _matl = matl;
            _nxb = nxb;
            _tensach = tensach;
            _giathue = giathue;
        }

        public Sach(string p1, string p2, string p3, string p4, string p5)
        {
            // TODO: Complete member initialization
            this.p1 = p1;
            this.p2 = p2;
            this.p3 = p3;
            this.p4 = p4;
            this.p5 = p5;
        }
    }
}
