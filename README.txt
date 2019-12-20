###########################################################################################
###################################### in 20-12-2019 ######################################
################################ Install Script for Fedora ################################
#################################### Made By: donLouan ####################################
###########################################################################################

1. Leia todo o documento e os scripts (se necessário atualize!)
2. Instale o driver nVidia:
	2.1. Placa única:
		2.1.1. Copie todos os scripts necessários para a pasta home (timeCapsule/Instalers/ScriptsDeInstalação)
		2.1.2. Execute a primeira parte da instalação do driver nVidia SEM o comando sudo(./fedoraNVidiaDriver-Part-I.sh)
			2.1.2.1. Quando o gedit abrir, adicione "rd.driver.blacklist=nouveau" ao final da linha "GRUB_CMDLINE_LINUX="…""
		2.1.3. O computador irá reiniciar no modo linha de comando, faça o login com o usuário padrão
		2.1.4. Execute a segunda parte da instalação do driver nVidia SEM o comando sudo(./fedoraNVidiaDriver-Part-II.sh)
		2.1.5. Os scripts serão automaticamente apagados, caso tenham sido colocados nos locais corretos
		2.1.6. O computador irá reiniciar
	2.2. Placa hibrida (nVidia + intel):
		2.2.1. Execute a instalação do driver nVidia Optimus SEM o comando sudo(./fedoraNVidiaOptimusDriver.sh)
3. Execute a instalação dos programas essenciais (./fedoraPackages.sh)
4. Faça o download dos aplicativos restantes:
	4.1. Fontes Microsoft - mscorefonts2 ( https://sourceforge.net/projects/mscorefonts2/files/rpms-msttcore-fonts-installer-2.6-1.noarch.rpm/download?use_mirror=ufpr)
	4.2. OpenJDK 13 - LTS (https://jdk.java.net/13/)
	4.3. Eclipse (https://www.eclipse.org/downloads/)
	4.4. TeamViewer (https://www.teamviewer.com/pt-br/download/linux/)
5. Faça o download das extenções do gnome:
	5.1. Applications Menu (https://extensions.gnome.org/extension/6/applications-menu/)
	5.2. Dash to Dock (https://extensions.gnome.org/extension/307/dash-to-dock/)
	5.3. Hide Activities Button (https://extensions.gnome.org/extension/744/hide-activities-button/)
	5.4. More Columns in Applications View (https://extensions.gnome.org/extension/1305/more-columns-in-applications-view/)
	5.5. No Topleft Hot Corner (https://extensions.gnome.org/extension/118/no-topleft-hot-corner/)
	5.6. Openweather (https://extensions.gnome.org/extension/750/openweather/)
	5.7. Places Status Indicator (https://extensions.gnome.org/extension/8/places-status-indicator/)
6. Adicione os icones delft (https://www.gnome-look.org/p/1199881/ or https://www.gnome-look.org/p/1169579/):
	6.1 Extrair o pacote de icones (timeCaplse/Instalers/Utilitarios/delft-iconpack.tar.xz)
	6.2. Adicionar os icones à /local/share/icons
7. Adicione a foto do perfil
8. Adicione o plano de fundo e imagem da tela de bloqueio
9. Divirta-se =)
