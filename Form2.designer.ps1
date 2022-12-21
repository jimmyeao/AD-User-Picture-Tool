[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$Form2 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.PictureBox]$bigpicture = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'Form2.resources.ps1')
$bigpicture = (New-Object -TypeName System.Windows.Forms.PictureBox)
([System.ComponentModel.ISupportInitialize]$bigpicture).BeginInit()
$Form2.SuspendLayout()
#
#bigpicture
#
$bigpicture.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]9,[System.Int32]10))
$bigpicture.Name = [System.String]'bigpicture'
$bigpicture.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]779,[System.Int32]727))
$bigpicture.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
$bigpicture.TabIndex = [System.Int32]0
$bigpicture.TabStop = $false
#
#Form2
#
$Form2.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]798,[System.Int32]745))
$Form2.Controls.Add($bigpicture)
$Form2.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Form2.Name = [System.String]'Form2'
$Form2.Text = [System.String]'Enlarged View'
([System.ComponentModel.ISupportInitialize]$bigpicture).EndInit()
$Form2.ResumeLayout($false)
Add-Member -InputObject $Form2 -Name bigpicture -Value $bigpicture -MemberType NoteProperty
}
. InitializeComponent
