namespace NoScam_platform
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text=="your_user_name" && txtPasswd.Text=="your_password")
            {
                new Form2().Show();
                this.Hide();
            }

            else
            {
                MessageBox.Show("The User name or Password you entered is incorrect, pleace try again.");
                txtUserName.Clear();
                txtPasswd.Clear();
                txtUserName.Focus();
            }
        }
    }
}