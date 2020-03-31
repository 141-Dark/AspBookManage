using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Book
{
    public partial class ViewRecommendation : Form
    {
        public ViewRecommendation()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            
            this.label1.Parent = this.pictureBox1;

            this.label1.BackColor = Color.Transparent;
        }
    }
}
