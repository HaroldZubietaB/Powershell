#Get data of current VMs in suscription
Get-AzVm

#Configure variables that will help us change the size
$vm = Get-AzVM -ResourceGroupName RGName -VMName SQLLinux
$vm.HardwareProfile.VmSize = "Standard_B2ms"

#Change the size of VM
Update-AzVM -VM $vm -ResourceGroupName ResourceGroup1