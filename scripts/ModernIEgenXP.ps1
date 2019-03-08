function Generate-Hashes ($zipsPath, $outputPath) {
    $files = Get-ChildItem $zipsPath -Recurse -Include *.zip,*.zip.*,*.gz
    foreach ($file in $files) {
    
        $hash = Get-FileHash $file -Algorithm MD5 
        $filemd5 = $outputPath + "\" + $file.Name + ".md5.txt"
        New-Item $filemd5 -type file -force -value $hash.Hash
    }
}

7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE8\IE8.Win7.Vagrant.zip D:\vms\Win7\Vagrant\IE8\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE8\IE8.Win7.Vagrant.zip D:\vms\Win7\Vagrant\IE8\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE9\IE9.Win7.Vagrant.zip D:\vms\Win7\Vagrant\IE9\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE9\IE9.Win7.Vagrant.zip D:\vms\Win7\Vagrant\IE9\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE10\IE10.Win7.Vagrant.zip D:\vms\Win7\Vagrant\IE10\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE10\IE10.Win7.Vagrant.zip D:\vms\Win7\Vagrant\IE10\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE11\IE11.Win7.Vagrant.zip D:\vms\Win7\Vagrant\IE11\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE11\IE11.Win7.Vagrant.zip D:\vms\Win7\Vagrant\IE11\*.* -tzip -r -aoa | Out-Null
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE8" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE9" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE10" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE11" "E:\ModernIE\vms\md5\VMBuild_20150916"

7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE8\IE8.Win7.VirtualBox.zip D:\vms\Win7\VirtualBox\IE8\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE8\IE8.Win7.VirtualBox.zip D:\vms\Win7\VirtualBox\IE8\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE9\IE9.Win7.VirtualBox.zip D:\vms\Win7\VirtualBox\IE9\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE9\IE9.Win7.VirtualBox.zip D:\vms\Win7\VirtualBox\IE9\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE10\IE10.Win7.VirtualBox.zip D:\vms\Win7\VirtualBox\IE10\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE10\IE10.Win7.VirtualBox.zip D:\vms\Win7\VirtualBox\IE10\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE11\IE11.Win7.VirtualBox.zip D:\vms\Win7\VirtualBox\IE11\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE11\IE11.Win7.VirtualBox.zip D:\vms\Win7\VirtualBox\IE11\*.* -tzip -r -aoa | Out-Null
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE8" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE9" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE10" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE11" "E:\ModernIE\vms\md5\VMBuild_20150916"

<#
7z a E:\ModernIE\vms\VMBuild_20150916\HyperV\IE6\IE6.XP.HyperV.zip E:\ModernIE\output\VMBuild_20150916\HyperV\IE6\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\HyperV\IE8\IE8.XP.HyperV.zip E:\ModernIE\output\VMBuild_20150916\HyperV\IE8\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\HyperV\IE6\IE6.XP.HyperV.zip E:\ModernIE\output\VMBuild_20150916\HyperV\IE6\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\HyperV\IE8\IE8.XP.HyperV.zip E:\ModernIE\output\VMBuild_20150916\HyperV\IE8\*.* -tzip -r -aoa | Out-Null
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\HyperV\IE6" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\HyperV\IE8" "E:\ModernIE\vms\md5\VMBuild_20150916"

7z a E:\ModernIE\vms\VMBuild_20150916\VPC\IE6\IE6.XP.VPC.zip E:\ModernIE\output\VMBuild_20150916\VPC\IE6\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VPC\IE8\IE8.XP.VPC.zip E:\ModernIE\output\VMBuild_20150916\VPC\IE8\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VPC\IE6\IE6.XP.VPC.zip E:\ModernIE\output\VMBuild_20150916\VPC\IE6\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VPC\IE8\IE8.XP.VPC.zip E:\ModernIE\output\VMBuild_20150916\VPC\IE8\*.* -tzip -r -aoa | Out-Null
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VPC\IE6" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VPC\IE8" "E:\ModernIE\vms\md5\VMBuild_20150916"

7z a E:\ModernIE\vms\VMBuild_20150916\VMware\IE6\IE6.XP.VMware.zip E:\ModernIE\output\VMBuild_20150916\VMware\IE6\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VMware\IE8\IE8.XP.VMware.zip E:\ModernIE\output\VMBuild_20150916\VMware\IE8\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VMware\IE6\IE6.XP.VMware.zip E:\ModernIE\output\VMBuild_20150916\VMware\IE6\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VMware\IE8\IE8.XP.VMware.zip E:\ModernIE\output\VMBuild_20150916\VMware\IE8\*.* -tzip -r -aoa | Out-Null
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VMware\IE6" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VMware\IE8" "E:\ModernIE\vms\md5\VMBuild_20150916"

7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE6\IE6.XP.VirtualBox.zip E:\ModernIE\output\VMBuild_20150916\VirtualBox\IE6\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE8\IE8.XP.VirtualBox.zip E:\ModernIE\output\VMBuild_20150916\VirtualBox\IE8\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE6\IE6.XP.VirtualBox.zip E:\ModernIE\output\VMBuild_20150916\VirtualBox\IE6\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE8\IE8.XP.VirtualBox.zip E:\ModernIE\output\VMBuild_20150916\VirtualBox\IE8\*.* -tzip -r -aoa | Out-Null
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE6" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\VirtualBox\IE8" "E:\ModernIE\vms\md5\VMBuild_20150916"

7z a E:\ModernIE\vms\VMBuild_20150916\Parallels\IE6\IE6.XP.Parallels.zip E:\ModernIE\output\VMBuild_20150916\Parallels\IE6\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Parallels\IE8\IE8.XP.Parallels.zip E:\ModernIE\output\VMBuild_20150916\Parallels\IE8\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Parallels\IE6\IE6.XP.Parallels.zip E:\ModernIE\output\VMBuild_20150916\Parallels\IE6\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Parallels\IE8\IE8.XP.Parallels.zip E:\ModernIE\output\VMBuild_20150916\Parallels\IE8\*.* -tzip -r -aoa | Out-Null
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\Parallels\IE6" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\Parallels\IE8" "E:\ModernIE\vms\md5\VMBuild_20150916"


7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE6\IE6.XP.Vagrant.zip E:\ModernIE\output\VMBuild_20150916\Vagrant\IE6\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE8\IE8.XP.Vagrant.zip E:\ModernIE\output\VMBuild_20150916\Vagrant\IE8\*.* -tzip -r -v1G -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE6\IE6.XP.Vagrant.zip E:\ModernIE\output\VMBuild_20150916\Vagrant\IE6\*.* -tzip -r -aoa | Out-Null
7z a E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE8\IE8.XP.Vagrant.zip E:\ModernIE\output\VMBuild_20150916\Vagrant\IE8\*.* -tzip -r -aoa | Out-Null
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE6" "E:\ModernIE\vms\md5\VMBuild_20150916"
Generate-Hashes "E:\ModernIE\vms\VMBuild_20150916\Vagrant\IE8" "E:\ModernIE\vms\md5\VMBuild_20150916"
#>




