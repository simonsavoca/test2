#region Script Settings
#<ScriptSettings xmlns="http://tempuri.org/ScriptSettings.xsd">
#  <ScriptPackager>
#    <process>powershell.exe</process>
#    <arguments />
#    <extractdir>%TEMP%</extractdir>
#    <files />
#    <usedefaulticon>true</usedefaulticon>
#    <showinsystray>false</showinsystray>
#    <altcreds>false</altcreds>
#    <efs>true</efs>
#    <ntfs>true</ntfs>
#    <local>false</local>
#    <abortonfail>true</abortonfail>
#    <product />
#    <version>1.0.0.1</version>
#    <versionstring />
#    <comments />
#    <company />
#    <includeinterpreter>false</includeinterpreter>
#    <forcecomregistration>false</forcecomregistration>
#    <consolemode>false</consolemode>
#    <EnableChangelog>false</EnableChangelog>
#    <AutoBackup>false</AutoBackup>
#    <snapinforce>false</snapinforce>
#    <snapinshowprogress>false</snapinshowprogress>
#    <snapinautoadd>2</snapinautoadd>
#    <snapinpermanentpath />
#    <cpumode>1</cpumode>
#    <hidepsconsole>false</hidepsconsole>
#  </ScriptPackager>
#</ScriptSettings>
#endregion

#region ScriptForm Designer

#region Constructor

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#endregion

#region Post-Constructor Custom Code

#endregion

#region Form Creation
#Warning: It is recommended that changes inside this region be handled using the ScriptForm Designer.
#When working with the ScriptForm designer this region and any changes within may be overwritten.
#~~< Form1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Form1 = New-Object System.Windows.Forms.Form
$Form1.ClientSize = New-Object System.Drawing.Size(973, 719)
$Form1.Text = "Form1"
#~~< ButtonClear >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonClear = New-Object System.Windows.Forms.Button
$ButtonClear.Location = New-Object System.Drawing.Point(890, 58)
$ButtonClear.Size = New-Object System.Drawing.Size(75, 23)
$ButtonClear.TabIndex = 10
$ButtonClear.Text = "Clear"
$ButtonClear.UseVisualStyleBackColor = $true
$ButtonClear.add_Click({ButtonClearClick($ButtonClear)})
#~~< GroupBox5 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox5 = New-Object System.Windows.Forms.GroupBox
$GroupBox5.Location = New-Object System.Drawing.Point(13, 500)
$GroupBox5.Size = New-Object System.Drawing.Size(395, 207)
$GroupBox5.TabIndex = 9
$GroupBox5.TabStop = $false
$GroupBox5.Text = "OID"+[char]39+"s"
#~~< DataGridView3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DataGridView3 = New-Object System.Windows.Forms.DataGridView
$DataGridView3.AllowUserToAddRows = $false
$DataGridView3.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::AllCells
$DataGridView3.Location = New-Object System.Drawing.Point(6, 16)
$DataGridView3.Size = New-Object System.Drawing.Size(383, 185)
$DataGridView3.TabIndex = 8
$DataGridView3.Text = ""
#~~< Number >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Number = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
$Number.HeaderText = "Number"
$Number.Width = 69
#~~< OID >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$OID = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
$OID.HeaderText = "OID"
$OID.Width = 51
$DataGridView3.Columns.AddRange([System.Windows.Forms.DataGridViewColumn[]](@($Number, $OID)))
$GroupBox5.Controls.Add($DataGridView3)
#~~< GroupBox4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox4 = New-Object System.Windows.Forms.GroupBox
$GroupBox4.Location = New-Object System.Drawing.Point(415, 258)
$GroupBox4.Size = New-Object System.Drawing.Size(468, 236)
$GroupBox4.TabIndex = 8
$GroupBox4.TabStop = $false
$GroupBox4.Text = "Subject Alternative Names"
#~~< DataGridView2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DataGridView2 = New-Object System.Windows.Forms.DataGridView
$DataGridView2.AllowUserToAddRows = $false
$DataGridView2.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::AllCells
$DataGridView2.Location = New-Object System.Drawing.Point(7, 19)
$DataGridView2.Size = New-Object System.Drawing.Size(455, 211)
$DataGridView2.TabIndex = 7
$DataGridView2.Text = ""
#~~< Type >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Type = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
$Type.HeaderText = "Type"
$Type.Width = 56
#~~< Content >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Content = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
$Content.HeaderText = "Content"
$Content.Width = 69
$DataGridView2.Columns.AddRange([System.Windows.Forms.DataGridViewColumn[]](@($Type, $Content)))
$GroupBox4.Controls.Add($DataGridView2)
#~~< GroupBox3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox3 = New-Object System.Windows.Forms.GroupBox
$GroupBox3.Location = New-Object System.Drawing.Point(12, 256)
$GroupBox3.Size = New-Object System.Drawing.Size(396, 238)
$GroupBox3.TabIndex = 7
$GroupBox3.TabStop = $false
$GroupBox3.Text = "Extensions"
#~~< DataGridView1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$DataGridView1 = New-Object System.Windows.Forms.DataGridView
$DataGridView1.AllowUserToAddRows = $false
$DataGridView1.AutoSizeColumnsMode = [System.Windows.Forms.DataGridViewAutoSizeColumnsMode]::AllCells
$DataGridView1.Location = New-Object System.Drawing.Point(7, 19)
$DataGridView1.Size = New-Object System.Drawing.Size(383, 211)
$DataGridView1.TabIndex = 6
$DataGridView1.Text = ""
#~~< Value >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Value = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
$Value.HeaderText = "Value"
$Value.Width = 59
#~~< FriendlyName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$FriendlyName = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
$FriendlyName.HeaderText = "Friendly Name"
$FriendlyName.Width = 99
$DataGridView1.Columns.AddRange([System.Windows.Forms.DataGridViewColumn[]](@($Value, $FriendlyName)))
$GroupBox3.Controls.Add($DataGridView1)
#~~< ButtonExit >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonExit = New-Object System.Windows.Forms.Button
$ButtonExit.Location = New-Object System.Drawing.Point(890, 87)
$ButtonExit.Size = New-Object System.Drawing.Size(75, 23)
$ButtonExit.TabIndex = 5
$ButtonExit.Text = "Exit"
$ButtonExit.UseVisualStyleBackColor = $true
$ButtonExit.add_Click({ButtonExitClick($ButtonExit)})
#~~< ButtonAnalyze >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$ButtonAnalyze = New-Object System.Windows.Forms.Button
$ButtonAnalyze.Location = New-Object System.Drawing.Point(889, 31)
$ButtonAnalyze.Size = New-Object System.Drawing.Size(75, 23)
$ButtonAnalyze.TabIndex = 4
$ButtonAnalyze.Text = "Analyze"
$ButtonAnalyze.UseVisualStyleBackColor = $true
$ButtonAnalyze.add_Click({ButtonAnalyzeClick($ButtonAnalyze)})
#~~< GroupBox2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox2 = New-Object System.Windows.Forms.GroupBox
$GroupBox2.Location = New-Object System.Drawing.Point(415, 13)
$GroupBox2.Size = New-Object System.Drawing.Size(468, 238)
$GroupBox2.TabIndex = 3
$GroupBox2.TabStop = $false
$GroupBox2.Text = "Informations"
#~~< Label9 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label9 = New-Object System.Windows.Forms.Label
$Label9.Location = New-Object System.Drawing.Point(7, 158)
$Label9.Size = New-Object System.Drawing.Size(100, 23)
$Label9.TabIndex = 18
$Label9.Text = "C (Country)"
$Label9.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxC >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxC = New-Object System.Windows.Forms.TextBox
$TextBoxC.Location = New-Object System.Drawing.Point(113, 160)
$TextBoxC.Size = New-Object System.Drawing.Size(259, 20)
$TextBoxC.TabIndex = 17
$TextBoxC.Text = ""
#~~< Label8 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label8 = New-Object System.Windows.Forms.Label
$Label8.Location = New-Object System.Drawing.Point(7, 135)
$Label8.Size = New-Object System.Drawing.Size(100, 23)
$Label8.TabIndex = 16
$Label8.Text = "S"
$Label8.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxS >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxS = New-Object System.Windows.Forms.TextBox
$TextBoxS.Location = New-Object System.Drawing.Point(113, 137)
$TextBoxS.Size = New-Object System.Drawing.Size(259, 20)
$TextBoxS.TabIndex = 15
$TextBoxS.Text = ""
#~~< Label7 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Location = New-Object System.Drawing.Point(7, 112)
$Label7.Size = New-Object System.Drawing.Size(100, 23)
$Label7.TabIndex = 14
$Label7.Text = "L"
$Label7.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxL >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxL = New-Object System.Windows.Forms.TextBox
$TextBoxL.Location = New-Object System.Drawing.Point(113, 114)
$TextBoxL.Size = New-Object System.Drawing.Size(259, 20)
$TextBoxL.TabIndex = 13
$TextBoxL.Text = ""
#~~< Label6 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label6 = New-Object System.Windows.Forms.Label
$Label6.Location = New-Object System.Drawing.Point(7, 89)
$Label6.Size = New-Object System.Drawing.Size(100, 23)
$Label6.TabIndex = 12
$Label6.Text = "O"
$Label6.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxO >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxO = New-Object System.Windows.Forms.TextBox
$TextBoxO.Location = New-Object System.Drawing.Point(113, 91)
$TextBoxO.Size = New-Object System.Drawing.Size(259, 20)
$TextBoxO.TabIndex = 11
$TextBoxO.Text = ""
#~~< Label5 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label5 = New-Object System.Windows.Forms.Label
$Label5.Location = New-Object System.Drawing.Point(7, 66)
$Label5.Size = New-Object System.Drawing.Size(100, 23)
$Label5.TabIndex = 10
$Label5.Text = "OU"
$Label5.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxOU >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxOU = New-Object System.Windows.Forms.TextBox
$TextBoxOU.Location = New-Object System.Drawing.Point(113, 68)
$TextBoxOU.Size = New-Object System.Drawing.Size(259, 20)
$TextBoxOU.TabIndex = 9
$TextBoxOU.Text = ""
#~~< Label4 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label4 = New-Object System.Windows.Forms.Label
$Label4.Location = New-Object System.Drawing.Point(7, 207)
$Label4.Size = New-Object System.Drawing.Size(100, 23)
$Label4.TabIndex = 8
$Label4.Text = "Signature"
$Label4.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxsignature >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxsignature = New-Object System.Windows.Forms.TextBox
$TextBoxsignature.Location = New-Object System.Drawing.Point(113, 209)
$TextBoxsignature.Size = New-Object System.Drawing.Size(100, 20)
$TextBoxsignature.TabIndex = 7
$TextBoxsignature.Text = ""
#~~< Label3 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Location = New-Object System.Drawing.Point(7, 184)
$Label3.Size = New-Object System.Drawing.Size(100, 23)
$Label3.TabIndex = 6
$Label3.Text = "Hash"
$Label3.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxHash >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxHash = New-Object System.Windows.Forms.TextBox
$TextBoxHash.Location = New-Object System.Drawing.Point(113, 186)
$TextBoxHash.Size = New-Object System.Drawing.Size(100, 20)
$TextBoxHash.TabIndex = 5
$TextBoxHash.Text = ""
#~~< Label2 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Location = New-Object System.Drawing.Point(7, 43)
$Label2.Size = New-Object System.Drawing.Size(100, 23)
$Label2.TabIndex = 4
$Label2.Text = "Common Name"
$Label2.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxCommonName >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxCommonName = New-Object System.Windows.Forms.TextBox
$TextBoxCommonName.Location = New-Object System.Drawing.Point(113, 45)
$TextBoxCommonName.Size = New-Object System.Drawing.Size(259, 20)
$TextBoxCommonName.TabIndex = 3
$TextBoxCommonName.Text = ""
#~~< Label1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Location = New-Object System.Drawing.Point(7, 23)
$Label1.Size = New-Object System.Drawing.Size(100, 23)
$Label1.TabIndex = 2
$Label1.Text = "Subject"
$Label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#~~< TextBoxSubject >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxSubject = New-Object System.Windows.Forms.TextBox
$TextBoxSubject.Location = New-Object System.Drawing.Point(113, 22)
$TextBoxSubject.Size = New-Object System.Drawing.Size(349, 20)
$TextBoxSubject.TabIndex = 1
$TextBoxSubject.Text = ""
$GroupBox2.Controls.Add($Label9)
$GroupBox2.Controls.Add($TextBoxC)
$GroupBox2.Controls.Add($Label8)
$GroupBox2.Controls.Add($TextBoxS)
$GroupBox2.Controls.Add($Label7)
$GroupBox2.Controls.Add($TextBoxL)
$GroupBox2.Controls.Add($Label6)
$GroupBox2.Controls.Add($TextBoxO)
$GroupBox2.Controls.Add($Label5)
$GroupBox2.Controls.Add($TextBoxOU)
$GroupBox2.Controls.Add($Label4)
$GroupBox2.Controls.Add($TextBoxsignature)
$GroupBox2.Controls.Add($Label3)
$GroupBox2.Controls.Add($TextBoxHash)
$GroupBox2.Controls.Add($Label2)
$GroupBox2.Controls.Add($TextBoxCommonName)
$GroupBox2.Controls.Add($Label1)
$GroupBox2.Controls.Add($TextBoxSubject)
#~~< GroupBox1 >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$GroupBox1 = New-Object System.Windows.Forms.GroupBox
$GroupBox1.Location = New-Object System.Drawing.Point(12, 12)
$GroupBox1.Size = New-Object System.Drawing.Size(396, 238)
$GroupBox1.TabIndex = 2
$GroupBox1.TabStop = $false
$GroupBox1.Text = "CSR"
#~~< TextBoxCSR >~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$TextBoxCSR = New-Object System.Windows.Forms.TextBox
$TextBoxCSR.Location = New-Object System.Drawing.Point(6, 19)
$TextBoxCSR.Multiline = $true
$TextBoxCSR.Size = New-Object System.Drawing.Size(384, 213)
$TextBoxCSR.TabIndex = 0
$TextBoxCSR.Text = ""
$GroupBox1.Controls.Add($TextBoxCSR)
$Form1.Controls.Add($ButtonClear)
$Form1.Controls.Add($GroupBox5)
$Form1.Controls.Add($GroupBox4)
$Form1.Controls.Add($GroupBox3)
$Form1.Controls.Add($ButtonExit)
$Form1.Controls.Add($ButtonAnalyze)
$Form1.Controls.Add($GroupBox2)
$Form1.Controls.Add($GroupBox1)

#endregion

#region Custom Code

#endregion

#region Event Loop

function Main{
	[System.Windows.Forms.Application]::EnableVisualStyles()
	[System.Windows.Forms.Application]::Run($Form1)
}

#endregion

#endregion

#region Event Handlers

function ButtonExitClick( $object ){
	$Form1.Close()
}

function ButtonAnalyzeClick( $object ){
	$TextBoxSubject.Clear()
	$TextBoxCommonName.Clear()
	$TextBoxOU.Clear()
	$TextBoxO.Clear()
	$TextBoxL.Clear()
	$textBoxS.Clear()
	$textBoxC.Clear()
 	$TextBoxHash.Clear()
	$TextBoxSignature.Clear()
	$dataGridView1.Rows.Clear()
	$dataGridView2.Rows.Clear()
	$dataGridView3.Rows.Clear()

	$MyObj = New-Object -ComObject X509enrollment.CX509CertificateRequestPkcs10
	$MyObj.InitializeDecode($TextBoxCSR.Text,6)
	$MySubject = $Myobj.Subject.Name



	$CommonName = $($($MySubject.Split(',')).Trim() | ? { $_ -like 'CN=*' }).Replace('CN=','')
	if($MySubject.IndexOf(',') -gt 0) { $OU = $($($MySubject.Split(',')).Trim()  | ? { $_ -like 'OU=*' }).Replace('OU=','') } Else { $OU = $Null }
	if($MySubject.IndexOf(',') -gt 0) { $O = $($($MySubject.Split(',')).Trim()  | ? { $_ -like 'O=*' }).Replace('O=','') } Else { $OU = $Null }
	if($MySubject.IndexOf(',') -gt 0) { $L = $($($MySubject.Split(',')).Trim()  | ? { $_ -like 'L=*' }).Replace('L=','') } Else { $OU = $Null }
	if($MySubject.IndexOf(',') -gt 0) { $S = $($($MySubject.Split(',')).Trim()  | ? { $_ -like 'S=*' }).Replace('S=','') } Else { $OU = $Null }
	if($MySubject.IndexOf(',') -gt 0) { $C = $($($MySubject.Split(',')).Trim()  | ? { $_ -like 'C=*' }).Replace('C=','') } Else { $OU = $Null }
	$Hash = $Myobj.HashAlgorithm.FriendlyName
	$Signature = $MyObj.PublicKey.Length

	#Update Texbox
	$TextBoxSubject.Text = $MySubject
	$TextBoxCommonName.Text = $CommonName
	$TextBoxOU.Text = $OU
	$TextBoxO.Text = $O
	$TextBoxL.Text = $L
	$textBoxS.Text = $S
	$TextBoxC.Text = $C

	$TextBoxHash.Text = $Hash
	$TextBoxSignature.Text = $Signature

   # Extensions
	$CertPoliciesExtensions = @($MyObj.X509Extensions)
	foreach ($Extensions in $CertPoliciesExtensions) { $dataGridView1.Rows.Add($Extensions.ObjectId.Value,$Extensions.ObjectId.FriendlyName) }

	# SAN
	$SAN = $CertPoliciesExtensions | ?{$_.objectid.value -eq "2.5.29.17"}
	$RawData = [Convert]::FromBase64String($SAN.RawData(1))
	$NativeExtension = New-Object Security.Cryptography.X509Certificates.X509Extension "2.5.29.17", $RawData, $false
	foreach ($Line in $NativeExtension.format(1).split([Environment]::NewLine)) {
		if ($Line) { $DataGridView2.Rows.Add($($Line.split("="))[0],$($Line.split("="))[1]) }
	}

	# OID's
	$OIDs = $CertPoliciesExtensions | ?{$_.objectid.value -eq "2.5.29.37"}
	$RawData = [Convert]::FromBase64String($OIDs.RawData(1))
	$NativeOid = New-Object Security.Cryptography.X509Certificates.X509Extension "2.5.29.37", $RawData, $false
	foreach ($Line in $NativeOid.format(1).split([Environment]::NewLine)) {
		if ($Line) { $DataGridView3.Rows.Add($($Line.split("("))[1].Replace(")",""),$($Line.split("("))[0]) }
	}
}

function ButtonClearClick( $object ){
	$TextBoxCSR.Clear()
}

Main # This call must remain below all other event functions

#endregion
