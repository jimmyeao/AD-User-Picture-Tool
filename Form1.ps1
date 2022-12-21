$pictureBox1_Click = {
    $selectedRow = $dataGridView1.currentcell.Value
    $ADUser = (([adsisearcher]"Samaccountname=$selectedRow").findone()).Properties
    [byte[]]$imgdata = $ADUser.thumbnailphoto | %{ $_ }
    $image=[System.Drawing.Image]::FromStream([System.IO.MemoryStream]$imgdata)
    $Form2.bigpicture.Image = $image
    $Form2.showdialog()
}

$dataGridView1_CellContentClick = {
    gridclick

}

$Btn_Search_Click = {
	$RowIndex = 0
    $ColumnIndex = 0
    $SearchString = $searchtb.Text

    if($SearchString -eq "")
    {
        return
    }

    if($datagridview1.CurrentCell -ne $null)
    {
        $RowIndex = $datagridview1.CurrentCell.RowIndex
        $ColumnIndex = $datagridview1.CurrentCell.ColumnIndex + 1
    }

    $columnCount = $datagridview1.ColumnCount
    $rowCount = $datagridview1.RowCount
    for (;$RowIndex -lt $rowCount; $RowIndex++)
    {
        $Row = $datagridview1.Rows[$RowIndex]

        for(;$ColumnIndex -lt $columnCount; $ColumnIndex++)
        {

            $cell = $Row.Cells[$ColumnIndex]

            if($cell.Value -ne $null -and $cell.Value.ToString().IndexOf($SearchString, [StringComparison]::OrdinalIgnoreCase) -ne -1)
            {
                $datagridview1.CurrentCell =$cell
				$statusBar1.text = "Found " + $SearchString
                return
            }
        }

        $Columnindex = 0
    }

    $datagridview1.CurrentCell = $null
    [void][System.Windows.Forms.MessageBox]::Show("Not Found: " + $SearchString)
}

$Btn_Delete_Click = {
    ############################################
    #    Delete Selected Picture(s) from AD    #
    ############################################
    $form1.cursor="WaitCursor"
    $statusBar1.text="Deleting Picture"
    $selectedRow = $dataGridView1.currentcell.Value
    Set-ADUser $selectedRow -Clear thumbnailphoto
    $statusBar1.text="Picture Deleted... Refreshing"
    $statusBar1.text = "Getting Users..."
    $array = New-Object System.Collections.ArrayList
    $baseou=$DomainTextBox.text
    $data = get-aduser -SearchBase $baseou -filter { objectClass -eq "User" -and Enabled -eq "True" } -Properties SamAccountName,Name,thumbnailPhoto | select SamAccountName,name,thumbnailPhoto
    $array.AddRange($data)
    $datagridview1.DataSource = $array
    $datagridview1.AutoSizeColumnsMode = 16
    $form1.autoscroll = $true
    $form1.cursor="Arrow"
    $statusBar1.text = "Ready..."
}

$Btn_Generic_Click = {
    $output=[System.Windows.Forms.MessageBox]::Show("Are you sure you want to replace ALL user pictures in the selected OU ?","Alert",4)
if ($OUTPUT -eq "YES" ) 
	{
    $inputfile = Get-FileName ""
    $inputdata = get-content $inputfile
    ## need to resize it
	    $targetwidth = 96 
	    $targetheight = 96

					$OldImage = new-object System.Drawing.Bitmap "$inputfile"
					$OldWidth = $OldImage.Width
					$OldHeight = $OldImage.Height

					if($OldWidth -lt $OldHeight){
						$NewWidth = $targetwidth
						[int]$NewHeight = [Math]::Round(($NewWidth*$OldHeight)/$OldWidth)

						if($NewHeight -gt $targetheight){
							$NewHeight = $targetheight
							[int]$NewWidth = [Math]::Round(($NewHeight*$OldWidth)/$OldHeight)
						}
					}
					else{
						$NewHeight = $targetheight
						[int]$NewWidth = [Math]::Round(($NewHeight*$OldWidth)/$OldHeight)

						if($NewWidth -gt $targetwidth){
							$NewWidth = $targetwidth
							[int]$NewHeight = [Math]::Round(($NewWidth*$OldHeight)/$OldWidth)
						}     
					}
					
					#Resize Working Image
					$NewImage = new-object System.Drawing.Bitmap $NewWidth,$NewHeight
					$Graphics = [System.Drawing.Graphics]::FromImage($NewImage)
					$Graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
					$Graphics.DrawImage($OldImage, 0, 0, $NewWidth, $NewHeight)

					#Save Working Image
					$ImageFormat = $OldImage.RawFormat
					$OldImage.Dispose()
					$resizedname=$inputfile+"resized.jpg"
					$NewImage.Save("$resizedname",$ImageFormat)
					$NewImage.Dispose()

        $form1.cursor="WaitCursor"
        $img = [System.Drawing.Image]::Fromfile($resizedname);
        $picturebox1.image = $img
        $baseou=$DomainTextBox.text
        $data = get-aduser -SearchBase $baseou -filter { objectClass -eq "User" -and Enabled -eq "True" } -Properties thumbnailPhoto
        $photo = [byte[]](Get-Content $resizedname -Encoding byte) 
        foreach ($user in $data) {
        $statusBar1.text="Changing picture for "+$user+" to selected generic image"
            Set-Aduser $user -replace @{thumbnailPhoto=$photo}
	        }
        $form1.cursor="Arrow"
        $statusBar1.text="Ready.."
        }
}

$Btn_Connect_Click = {
Cls
############################################
#     Connect to AD and display in tree    #
############################################
$form1.cursor="WaitCursor"
$statusBar1.text="Fetching AD Records..Please Wait"
$form1.Refresh()

Build-TreeView
$form1.cursor="Arrow"
$statusBar1.text="Ready"
}

$Btn_Replace_Click = {
############################################
#             Replace a user pic           #
############################################
    $inputfile = Get-FileName ""
    $inputdata = get-content $inputfile
    ## need to resize it
	$targetwidth = 96 
	$targetheight = 96

    $OldImage = new-object System.Drawing.Bitmap "$inputfile"
    $OldWidth = $OldImage.Width
    $OldHeight = $OldImage.Height

    if($OldWidth -lt $OldHeight){
	    $NewWidth = $targetwidth
	    [int]$NewHeight = [Math]::Round(($NewWidth*$OldHeight)/$OldWidth)

	    if($NewHeight -gt $targetheight){
		    $NewHeight = $targetheight
		    [int]$NewWidth = [Math]::Round(($NewHeight*$OldWidth)/$OldHeight)
	    }
    }
    else{
	    $NewHeight = $targetheight
	    [int]$NewWidth = [Math]::Round(($NewHeight*$OldWidth)/$OldHeight)

	    if($NewWidth -gt $targetwidth){
		    $NewWidth = $targetwidth
		    [int]$NewHeight = [Math]::Round(($NewWidth*$OldHeight)/$OldWidth)
	    }     
    }
					
    #Resize Working Image
    $NewImage = new-object System.Drawing.Bitmap $NewWidth,$NewHeight
    $Graphics = [System.Drawing.Graphics]::FromImage($NewImage)
    $Graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $Graphics.DrawImage($OldImage, 0, 0, $NewWidth, $NewHeight)

    #Save Working Image
    $ImageFormat = $OldImage.RawFormat
    $OldImage.Dispose()
    $resizedname=$inputfile+"resized.jpg"
    $NewImage.Save("$resizedname",$ImageFormat)
    $NewImage.Dispose()

    
    $img = [System.Drawing.Image]::Fromfile($resizedname);
    $picturebox1.image = $img

    $selectedRow = $dataGridView1.currentcell.Value
    $statusBar1.text="Replacing Photo, please wait.."
    $photo = [byte[]](Get-Content $resizedname -Encoding byte)            
    Set-ADUser $selectedRow -Replace @{thumbnailPhoto=$photo}

    $statusBar1.text="User "+$selectedRow+" picture has been replaced"
    Start-Sleep -s 3
    
    $statusBar1.text="Ready.."
}

$Btn_SaveAll_Click = {
    Add-Type -AssemblyName System.Windows.Forms
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog -Property @{SelectedPath=$ScriptPathTextBox.text}
    [Void]$FolderBrowser.ShowDialog()
    $FolderBrowser.selectedPath
    
    if ($FolderBrowser.selectedPath -ne $null) {
	    $savelocation=$FolderBrowser.selectedPath
	    }
    $baseou=$DomainTextBox.text

    Set-Location $savelocation
    $users = Get-ADUser -Filter * -SearchBase $baseou -Properties thumbnailPhoto  | ? {$_.thumbnailPhoto}

    foreach ($user in $users) {
	    $statusBar1.text="Saving "+$user.SamAccountName
        $name = $user.SamAccountName + ".jpg"  
        $user.thumbnailPhoto | Set-Content $name -Encoding byte
    }
}

$Btn_Fetch_Click = {
    #TODO: Place custom script here
    $form1.cursor="WaitCursor"
    $statusBar1.text = "Getting Users..."
    $array = New-Object System.Collections.ArrayList
    $baseou=$DomainTextBox.text
    if ($checkBox1.checked -eq $true){
		    $data = @(Get-ADUser -SearchBase $baseou -Filter { objectClass -eq "User" -and Enabled -eq "True" } -Properties SamAccountName,Name,thumbnailPhoto | ? {$_.thumbnailPhoto} | select SamAccountName,name,thumbnailPhoto)
		}else{
		    $data = @(get-aduser -SearchBase $baseou -filter { objectClass -eq "User" -and Enabled -eq "True" } -Properties SamAccountName,Name,thumbnailPhoto | select SamAccountName,name,thumbnailPhoto)
		}
		$array.AddRange($data)
		$datagridview1.DataSource = $array
		$datagridview1.AutoSizeColumnsMode = 16
		$form1.autoscroll = $true
		$form1.cursor="Arrow"
		$statusBar1.text = "Ready..."
}

function Build-TreeView { 
    if ($treeNodes)  
    {  
          $ADTreeView.Nodes.remove($treeNodes) 
        $form1.Refresh() 
    } 
    
    $treeNodes = New-Object System.Windows.Forms.TreeNode 
    $treeNodes.text = "Active Directory Hierarchy" 
    $treeNodes.Name = "Active Directory Hierarchy" 
    $treeNodes.Tag = "root" 
    $ADTreeView.Nodes.Add($treeNodes) | Out-Null 
     
    $ADTreeView.add_AfterSelect({ 
        $DomainTextBox.Text = $this.SelectedNode.Name
    }) 
     
    #Generate Module nodes 
    $OUs = Get-NextLevel $treeNodes $strDomainDN
    
    $treeNodes.Expand() 
} 
function Add-Node { 
        param ( 
            $selectedNode, 
            $name
        ) 
        $newNode = new-object System.Windows.Forms.TreeNode  
        $newNode.Name = $name 
        $newNode.Text = $name 
        $selectedNode.Nodes.Add($newNode) | Out-Null 
        return $newNode 
} 
function Get-NextLevel {
    param (
        $selectedNode,
        $dn
   )
   
    $OUs = Get-ADObject -Filter 'ObjectClass -eq "organizationalUnit" -or ObjectClass -eq "container"' -SearchScope OneLevel -SearchBase $dn

    If ($OUs -eq $null) {
        $node = Add-Node $selectedNode $dn
    } Else {
        $node = Add-Node $selectedNode $dn
        
        $OUs | % {
            Get-NextLevel $node $_.distinguishedName
        }
    }
}
function Get-Folder($initialDirectory){
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms")

    $foldername = New-Object System.Windows.Forms.FolderBrowserDialog
    $foldername.rootfolder = "MyComputer"

    if($foldername.ShowDialog() -eq "OK")
    {
        $folder += $foldername.SelectedPath
    }
    return $folder
}
function gridClick(){
$selectedRow = $dataGridView1.currentcell.Value
$picturebox1.Image = $image1
$ADUser = (([adsisearcher]"Samaccountname=$selectedRow").findone()).Properties
[byte[]]$imgdata = $ADUser.thumbnailphoto | %{ $_ }
$image=[System.Drawing.Image]::FromStream([System.IO.MemoryStream]$imgdata)
$picturebox1.Image= $image
}
function Get-FileName($initialDirectory){
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
	    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "JPG (*.jpg)| *.jpg"
    $OpenFileDialog.ShowDialog() | Out-Null
	$OpenFileDialog.filename
}

. (Join-Path $PSScriptRoot 'Form1.designer.ps1')
. (Join-Path $PSScriptRoot 'Form2.designer.ps1')
Import-Module ActiveDirectory
$objIPProperties = [System.Net.NetworkInformation.IPGlobalProperties]::GetIPGlobalProperties()
    $strDNSDomain = $objIPProperties.DomainName.toLower()
    $strDomainDN = $strDNSDomain.toString().split('.'); foreach ($strVal in $strDomainDN) {$strTemp += "dc=$strVal,"}; $strDomainDN = $strTemp.TrimEnd(",").toLower()
$Form1.ShowDialog()