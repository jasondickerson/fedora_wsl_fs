wsl --install MyFedora --from-file $args[0] --location $HOME\MyFedora --name MyFedora
wsl -d MyFedora useradd -G adm,wheel,cdrom $Env:UserName.ToLower()
wsl -d MyFedora passwd $Env:UserName.ToLower()
wsl --manage MyFedora --set-default-user $Env:UserName.ToLower()
