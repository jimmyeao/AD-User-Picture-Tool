[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.DataGridView]$dataGridView1 = $null
[System.Windows.Forms.PictureBox]$pictureBox1 = $null
[System.Windows.Forms.Button]$Btn_Fetch = $null
[System.Windows.Forms.Button]$Btn_SaveAll = $null
[System.Windows.Forms.Button]$Btn_Replace = $null
[System.Windows.Forms.Button]$Btn_Generic = $null
[System.Windows.Forms.Button]$Btn_Delete = $null
[System.Windows.Forms.Button]$Btn_Connect = $null
[System.Windows.Forms.Button]$Btn_Search = $null
[System.Windows.Forms.TextBox]$searchtb = $null
[System.Windows.Forms.TreeView]$ADTreeView = $null
[System.Windows.Forms.StatusStrip]$statusStrip1 = $null
[System.Windows.Forms.ToolStripStatusLabel]$statusBar1 = $null
[System.Windows.Forms.TextBox]$DomaintextBox = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'Form1.resources.ps1')
$dataGridView1 = (New-Object -TypeName System.Windows.Forms.DataGridView)
$Btn_Fetch = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_SaveAll = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_Replace = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_Generic = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_Delete = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_Connect = (New-Object -TypeName System.Windows.Forms.Button)
$pictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$ADTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$searchtb = (New-Object -TypeName System.Windows.Forms.TextBox)
$Btn_Search = (New-Object -TypeName System.Windows.Forms.Button)
$DomaintextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$statusStrip1 = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$statusBar1 = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
([System.ComponentModel.ISupportInitialize]$dataGridView1).BeginInit()
([System.ComponentModel.ISupportInitialize]$pictureBox1).BeginInit()
$statusStrip1.SuspendLayout()
$Form1.SuspendLayout()
#
#dataGridView1
#
$dataGridView1.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$dataGridView1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]67))
$dataGridView1.Name = [System.String]'dataGridView1'
$dataGridView1.RowHeadersWidth = [System.Int32]51
$dataGridView1.RowTemplate.Height = [System.Int32]24
$dataGridView1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]463,[System.Int32]428))
$dataGridView1.TabIndex = [System.Int32]0
$dataGridView1.add_CellContentClick($dataGridView1_CellContentClick)
#
#Btn_Fetch
#
$Btn_Fetch.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Btn_Fetch.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]521))
$Btn_Fetch.Name = [System.String]'Btn_Fetch'
$Btn_Fetch.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Btn_Fetch.TabIndex = [System.Int32]1
$Btn_Fetch.Text = [System.String]'Fetch Users'
$Btn_Fetch.UseVisualStyleBackColor = $true
$Btn_Fetch.add_Click($Btn_Fetch_Click)
#
#Btn_SaveAll
#
$Btn_SaveAll.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Btn_SaveAll.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]118,[System.Int32]521))
$Btn_SaveAll.Name = [System.String]'Btn_SaveAll'
$Btn_SaveAll.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]23))
$Btn_SaveAll.TabIndex = [System.Int32]2
$Btn_SaveAll.Text = [System.String]'Save All'
$Btn_SaveAll.UseVisualStyleBackColor = $true
$Btn_SaveAll.add_Click($Btn_SaveAll_Click)
#
#Btn_Replace
#
$Btn_Replace.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Btn_Replace.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]218,[System.Int32]521))
$Btn_Replace.Name = [System.String]'Btn_Replace'
$Btn_Replace.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]23))
$Btn_Replace.TabIndex = [System.Int32]3
$Btn_Replace.Text = [System.String]'Replace Selected'
$Btn_Replace.UseVisualStyleBackColor = $true
$Btn_Replace.add_Click($Btn_Replace_Click)
#
#Btn_Generic
#
$Btn_Generic.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Btn_Generic.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]118,[System.Int32]550))
$Btn_Generic.Name = [System.String]'Btn_Generic'
$Btn_Generic.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]23))
$Btn_Generic.TabIndex = [System.Int32]4
$Btn_Generic.Text = [System.String]'Generic Pics'
$Btn_Generic.UseVisualStyleBackColor = $true
$Btn_Generic.add_Click($Btn_Generic_Click)
#
#Btn_Delete
#
$Btn_Delete.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Btn_Delete.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]218,[System.Int32]550))
$Btn_Delete.Name = [System.String]'Btn_Delete'
$Btn_Delete.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]23))
$Btn_Delete.TabIndex = [System.Int32]5
$Btn_Delete.Text = [System.String]'Delete Selected'
$Btn_Delete.UseVisualStyleBackColor = $true
$Btn_Delete.add_Click($Btn_Delete_Click)
#
#Btn_Connect
#
$Btn_Connect.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Btn_Connect.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]550))
$Btn_Connect.Name = [System.String]'Btn_Connect'
$Btn_Connect.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Btn_Connect.TabIndex = [System.Int32]7
$Btn_Connect.Text = [System.String]'Connect AD'
$Btn_Connect.UseVisualStyleBackColor = $true
$Btn_Connect.add_Click($Btn_Connect_Click)
#
#pictureBox1
#
$pictureBox1.Anchor = [System.Windows.Forms.AnchorStyles]::Top
$pictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]67))
$pictureBox1.Name = [System.String]'pictureBox1'
$pictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]194,[System.Int32]237))
$pictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::AutoSize
$pictureBox1.TabIndex = [System.Int32]8
$pictureBox1.TabStop = $false
$pictureBox1.add_Click($pictureBox1_Click)
#
#ADTreeView
#
$ADTreeView.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$ADTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]716,[System.Int32]67))
$ADTreeView.Name = [System.String]'ADTreeView'
$ADTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]340,[System.Int32]428))
$ADTreeView.TabIndex = [System.Int32]9
#
#searchtb
#
$searchtb.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom
$searchtb.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]481,[System.Int32]547))
$searchtb.Name = [System.String]'searchtb'
$searchtb.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]205,[System.Int32]22))
$searchtb.TabIndex = [System.Int32]10
#
#Btn_Search
#
$Btn_Search.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom
$Btn_Search.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]692,[System.Int32]547))
$Btn_Search.Name = [System.String]'Btn_Search'
$Btn_Search.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]23))
$Btn_Search.TabIndex = [System.Int32]11
$Btn_Search.Text = [System.String]'Search'
$Btn_Search.UseVisualStyleBackColor = $true
$Btn_Search.add_Click($Btn_Search_Click)
#
#DomaintextBox
#
$DomaintextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]716,[System.Int32]502))
$DomaintextBox.Name = [System.String]'DomaintextBox'
$DomaintextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]193,[System.Int32]22))
$DomaintextBox.TabIndex = [System.Int32]12
#
#statusStrip1
#
$statusStrip1.ImageScalingSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]20,[System.Int32]20))
$statusStrip1.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($statusBar1))
$statusStrip1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]572))
$statusStrip1.Name = [System.String]'statusStrip1'
$statusStrip1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1068,[System.Int32]26))
$statusStrip1.TabIndex = [System.Int32]13
$statusStrip1.Text = [System.String]'statusStrip1'
#
#statusBar1
#
$statusBar1.Name = [System.String]'statusBar1'
$statusBar1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]50,[System.Int32]20))
$statusBar1.Text = [System.String]'Ready'
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1068,[System.Int32]598))
$Form1.Controls.Add($statusStrip1)
$Form1.Controls.Add($DomaintextBox)
$Form1.Controls.Add($Btn_Search)
$Form1.Controls.Add($searchtb)
$Form1.Controls.Add($ADTreeView)
$Form1.Controls.Add($pictureBox1)
$Form1.Controls.Add($Btn_Connect)
$Form1.Controls.Add($Btn_Delete)
$Form1.Controls.Add($Btn_Generic)
$Form1.Controls.Add($Btn_Replace)
$Form1.Controls.Add($Btn_SaveAll)
$Form1.Controls.Add($Btn_Fetch)
$Form1.Controls.Add($dataGridView1)
$Form1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Form1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1086,[System.Int32]645))
$Form1.Name = [System.String]'Form1'
$Form1.Text = [System.String]'Active Directory User Picture Tool'
([System.ComponentModel.ISupportInitialize]$dataGridView1).EndInit()
([System.ComponentModel.ISupportInitialize]$pictureBox1).EndInit()
$statusStrip1.ResumeLayout($false)
$statusStrip1.PerformLayout()
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name dataGridView1 -Value $dataGridView1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name pictureBox1 -Value $pictureBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Btn_Fetch -Value $Btn_Fetch -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Btn_SaveAll -Value $Btn_SaveAll -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Btn_Replace -Value $Btn_Replace -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Btn_Generic -Value $Btn_Generic -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Btn_Delete -Value $Btn_Delete -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Btn_Connect -Value $Btn_Connect -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Btn_Search -Value $Btn_Search -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name searchtb -Value $searchtb -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ADTreeView -Value $ADTreeView -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name statusStrip1 -Value $statusStrip1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name statusBar1 -Value $statusBar1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name DomaintextBox -Value $DomaintextBox -MemberType NoteProperty
}
. InitializeComponent
