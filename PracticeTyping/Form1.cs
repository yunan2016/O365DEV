using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PracticeTyping
{
    public partial class Form1 : Form
    {
        public int currentNumber = 0;
        public string[] lines;
        public int lineNumber;

        private Timer _timer;

        // The last time the timer was started
        private DateTime _startTime = DateTime.MinValue;

        // Time between now and when the timer was started last
        private TimeSpan _currentElapsedTime = TimeSpan.Zero;

        // Time between now and the first time timer was started after a reset
        private TimeSpan _totalElapsedTime = TimeSpan.Zero;

        // Whether or not the timer is currently running
        private bool _timerRunning = false;
        public Form1()
        {
            InitializeComponent();
            this.BackColor = System.Drawing.Color.LightGreen;

            label1.Font = new System.Drawing.Font(label1.Font.Name, 20F);
            textBox1.Font = new System.Drawing.Font(textBox1.Font.Name, 20F);
            // Set up a timer and fire the Tick event once per second (1000 ms)
            _timer = new Timer();
            _timer.Interval = 1000;
            _timer.Tick += new EventHandler(_timer_Tick);

        }
        void _timer_Tick(object sender, EventArgs e)
        {
            // We do this to chop off any stray milliseconds resulting from 
            // the Timer's inherent inaccuracy, with the bonus that the 
            // TimeSpan.ToString() method will now show correct HH:MM:SS format
            var timeSinceStartTime = DateTime.Now - _startTime;
            timeSinceStartTime = new TimeSpan(timeSinceStartTime.Hours,
                                              timeSinceStartTime.Minutes,
                                              timeSinceStartTime.Seconds);

            // The current elapsed time is the time since the start button was
            // clicked, plus the total time elapsed since the last reset
            _currentElapsedTime = timeSinceStartTime + _totalElapsedTime;

            // These are just two Label controls which display the current 
            // elapsed time and total elapsed time
            label2.Text = _currentElapsedTime.ToString();
        }

        /// <summary>
        /// Handle Start/Stop button click
        /// </summary>
        /// <param name="sender">The Button control</param>
        /// <param name="e">EventArgs object</param>
        private void startButton_Click(object sender, EventArgs e)
        {
            start();
        }

        private void start()
        {
            // If the timer isn't already running
            if (!_timerRunning)
            {
                // Set the start time to Now
                _startTime = DateTime.Now;

                // Store the total elapsed time so far
                _totalElapsedTime = _currentElapsedTime;

                _timer.Start();
                _timerRunning = true;
            }
            else // If the timer is already running
            {
                _timer.Stop();
                _timerRunning = false;
            }
        }
        /// <summary>
        /// Handle Reset button click
        /// </summary>
        /// <param name="sender">The Button control</param>
        /// <param name="e">EventArgs object</param>
        private void resetButton_Click(object sender, EventArgs e)
        {
            // Stop and reset the timer if it was running
            _timer.Stop();
            _timerRunning = false;

            // Reset the elapsed time TimeSpan objects
            _totalElapsedTime = TimeSpan.Zero;
            _currentElapsedTime = TimeSpan.Zero;
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            string filePath = @"D:\Text.txt";
            lines = getstringArray(filePath);
            lineNumber = lines.Count();
            this.label1.Text = lines[currentNumber];
            this.textBox1.KeyPress += new System.Windows.Forms.KeyPressEventHandler(CheckEnterKeyPress);

            start();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
        private void CheckEnterKeyPress(object sender, System.Windows.Forms.KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Return)

            {
                if (lines[currentNumber].ToString().Equals(textBox1.Text.Trim()))
                {
                    currentNumber++;
                    if (currentNumber== lineNumber)
                    {
                        _timer.Stop();
                        _timerRunning = false;
                        MessageBox.Show("Your have successfully end the test");                   
                        textBox1.Enabled = false;
                        return;
                    }
                    this.label1.Text = lines[currentNumber].ToString();
                    textBox1.Clear();
                 

                }
                else
                {
                    textBox1.Clear();
                }
            }
        }
        private string[]  getstringArray(string filePath)
        {
            string[] lines = System.IO.File.ReadAllLines(filePath);
            return lines;
        }
    }
}
