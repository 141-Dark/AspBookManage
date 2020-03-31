namespace Book
{
    partial class ViewBook
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.manageBookDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.manageBookDataSet = new Book.ManageBookDataSet();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.manageBookDataSetBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.manageBookDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // manageBookDataSetBindingSource
            // 
            this.manageBookDataSetBindingSource.DataSource = this.manageBookDataSet;
            this.manageBookDataSetBindingSource.Position = 0;
            // 
            // manageBookDataSet
            // 
            this.manageBookDataSet.DataSetName = "ManageBookDataSet";
            this.manageBookDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(151, 145);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(140, 44);
            this.button1.TabIndex = 0;
            this.button1.Text = "查看图书";
            this.button1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextAboveImage;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // ViewBook
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1144, 541);
            this.Controls.Add(this.button1);
            this.Name = "ViewBook";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.manageBookDataSetBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.manageBookDataSet)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.BindingSource manageBookDataSetBindingSource;
        private ManageBookDataSet manageBookDataSet;
        private System.Windows.Forms.Button button1;
    }
}

